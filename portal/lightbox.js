// Lightbox для просмотра фотографий с зумом и перетаскиванием

let currentZoom = 1;
let currentX = 0;
let currentY = 0;
let isDragging = false;
let startX = 0;
let startY = 0;

// Инициализация lightbox
function initLightbox() {
    // Проверяем, не создан ли уже lightbox
    if (document.getElementById('lightbox')) {
        return;
    }

    // Создаем HTML структуру lightbox
    const lightboxHTML = `
        <div class="lightbox" id="lightbox">
            <button class="lightbox-close" onclick="closeLightbox()">✕</button>
            <div class="lightbox-controls">
                <button onclick="event.stopPropagation(); zoomIn()" title="Увеличить (колёсико вверх)" style="background: white; border: none; padding: 10px 15px; border-radius: 6px; cursor: pointer; font-size: 18px; margin-right: 5px;">🔍+</button>
                <button onclick="event.stopPropagation(); zoomOut()" title="Уменьшить (колёсико вниз)" style="background: white; border: none; padding: 10px 15px; border-radius: 6px; cursor: pointer; font-size: 18px; margin-right: 5px;">🔍−</button>
                <button onclick="event.stopPropagation(); resetZoom()" title="Сбросить (двойной клик)" style="background: white; border: none; padding: 10px 15px; border-radius: 6px; cursor: pointer; font-size: 16px; margin-right: 5px;">↺</button>
                <button onclick="event.stopPropagation(); toggleFullscreen()" title="Полный экран (F11)" style="background: white; border: none; padding: 10px 15px; border-radius: 6px; cursor: pointer; font-size: 16px;">⛶</button>
            </div>
            <div class="lightbox-image-container" id="lightboxContainer">
                <img class="lightbox-image" id="lightboxImage" src="" alt="" ondblclick="resetZoom()" draggable="false">
            </div>
        </div>
    `;

    // Добавляем в body
    document.body.insertAdjacentHTML('beforeend', lightboxHTML);

    // Добавляем обработчик закрытия по клику вне изображения
    const lightbox = document.getElementById('lightbox');
    lightbox.addEventListener('click', (e) => {
        if (e.target === lightbox) {
            closeLightbox();
        }
    });

    // Добавляем CSS стили если их еще нет
    if (!document.getElementById('lightbox-styles')) {
        const style = document.createElement('style');
        style.id = 'lightbox-styles';
        style.textContent = `
            .lightbox {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.95);
                z-index: 10000;
                display: none;
                align-items: center;
                justify-content: center;
            }
            
            .lightbox.active {
                display: flex;
            }
            
            .lightbox-image-container {
                width: 100%;
                height: 100%;
                overflow: visible;
                cursor: grab;
                position: relative;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            
            .lightbox-image-container.dragging {
                cursor: grabbing;
            }

            .lightbox-image {
                max-width: 90vw;
                max-height: 90vh;
                object-fit: contain;
                transition: transform 0.2s ease;
                user-select: none;
                -webkit-user-drag: none;
                transform-origin: center center;
            }
            
            .lightbox-controls {
                position: absolute;
                top: 70px;
                left: 20px;
                z-index: 1001;
                display: flex;
                gap: 5px;
            }

            .lightbox-close {
                position: absolute;
                top: 20px;
                right: 20px;
                background: white;
                border: none;
                width: 50px;
                height: 50px;
                border-radius: 50%;
                cursor: pointer;
                font-size: 24px;
                z-index: 1002;
                box-shadow: 0 2px 8px rgba(0,0,0,0.3);
            }
            
            .lightbox-close:hover {
                background: #f0f0f0;
            }
        `;
        document.head.appendChild(style);
    }
}

function openLightbox(url) {
    // Инициализируем lightbox если еще не создан
    initLightbox();

    const img = document.getElementById('lightboxImage');
    img.src = url;
    document.getElementById('lightbox').classList.add('active');
    resetZoom();
    
    // Запрещаем браузерное перетаскивание изображения
    img.ondragstart = (e) => {
        e.preventDefault();
        return false;
    };
    
    // Добавляем обработчики событий для зума и перетаскивания
    const container = document.getElementById('lightboxContainer');
    
    // Зум колесиком мыши
    container.addEventListener('wheel', handleWheel, { passive: false });
    
    // Перетаскивание
    container.addEventListener('mousedown', startDrag);
    container.addEventListener('mousemove', drag);
    container.addEventListener('mouseup', endDrag);
    container.addEventListener('mouseleave', endDrag);
    
    // Запрещаем контекстное меню при перетаскивании
    container.addEventListener('contextmenu', (e) => {
        if (isDragging) e.preventDefault();
    });
}

function closeLightbox() {
    // Выходим из полноэкранного режима, если он активен
    if (document.fullscreenElement) {
        if (document.exitFullscreen) {
            document.exitFullscreen();
        } else if (document.webkitExitFullscreen) {
            document.webkitExitFullscreen();
        } else if (document.msExitFullscreen) {
            document.msExitFullscreen();
        }
    }
    
    const lightbox = document.getElementById('lightbox');
    lightbox.classList.remove('active');
    
    // Удаляем обработчики событий
    const container = document.getElementById('lightboxContainer');
    container.removeEventListener('wheel', handleWheel);
    container.removeEventListener('mousedown', startDrag);
    container.removeEventListener('mousemove', drag);
    container.removeEventListener('mouseup', endDrag);
    container.removeEventListener('mouseleave', endDrag);
}

function handleWheel(e) {
    e.preventDefault();
    const delta = e.deltaY > 0 ? -0.1 : 0.1;
    currentZoom = Math.min(Math.max(1, currentZoom + delta), 5);
    applyZoom();
}

function zoomIn() {
    currentZoom = Math.min(5, currentZoom + 0.2);
    applyZoom();
}

function zoomOut() {
    currentZoom = Math.max(1, currentZoom - 0.2);
    if (currentZoom === 1) {
        currentX = 0;
        currentY = 0;
    }
    applyZoom();
}

function resetZoom() {
    currentZoom = 1;
    currentX = 0;
    currentY = 0;
    applyZoom();
}

function applyZoom() {
    const img = document.getElementById('lightboxImage');
    img.style.transform = `scale(${currentZoom}) translate(${currentX}px, ${currentY}px)`;
}

function startDrag(e) {
    if (currentZoom <= 1) return;
    e.preventDefault();
    e.stopPropagation();
    isDragging = true;
    startX = e.clientX - currentX;
    startY = e.clientY - currentY;
    document.getElementById('lightboxContainer').classList.add('dragging');
}

function drag(e) {
    if (!isDragging || currentZoom <= 1) return;
    e.preventDefault();
    currentX = e.clientX - startX;
    currentY = e.clientY - startY;
    applyZoom();
}

function endDrag() {
    isDragging = false;
    const container = document.getElementById('lightboxContainer');
    if (container) {
        container.classList.remove('dragging');
    }
}

function toggleFullscreen() {
    const lightbox = document.getElementById('lightbox');
    
    if (!document.fullscreenElement) {
        if (lightbox.requestFullscreen) {
            lightbox.requestFullscreen();
        } else if (lightbox.webkitRequestFullscreen) {
            lightbox.webkitRequestFullscreen();
        } else if (lightbox.msRequestFullscreen) {
            lightbox.msRequestFullscreen();
        }
    } else {
        if (document.exitFullscreen) {
            document.exitFullscreen();
        } else if (document.webkitExitFullscreen) {
            document.webkitExitFullscreen();
        } else if (document.msExitFullscreen) {
            document.msExitFullscreen();
        }
    }
}

// Обработка нажатия ESC для выхода из лайтбокса
document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') {
        const lightbox = document.getElementById('lightbox');
        if (lightbox && lightbox.classList.contains('active')) {
            if (!document.fullscreenElement) {
                closeLightbox();
            }
        }
    }
});

// Автоматическая инициализация при загрузке страницы
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initLightbox);
} else {
    initLightbox();
}
