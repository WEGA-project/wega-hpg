// Lightbox для просмотра фотографий с зумом и перетаскиванием

let currentZoom = 1;
let currentX = 0;
let currentY = 0;
let isDragging = false;
let startX = 0;
let startY = 0;
let currentPhotos = [];
let currentPhotoIndex = 0;

// Инициализация lightbox
function initLightbox() {
    // Проверяем, не создан ли уже lightbox
    if (document.getElementById('lightbox')) {
        return;
    }

    // Создаем HTML структуру lightbox
    const lightboxHTML = `
        <div class="lightbox" id="lightbox">
            <button class="lightbox-close" onclick="closeLightbox()" title="Закрыть (Esc)">✕</button>
            
            <div class="lightbox-controls">
                <button onclick="event.stopPropagation(); zoomIn()" title="Увеличить (колёсико вверх)">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <circle cx="11" cy="11" r="8"></circle>
                        <path d="M21 21l-4.35-4.35"></path>
                        <line x1="11" y1="8" x2="11" y2="14"></line>
                        <line x1="8" y1="11" x2="14" y2="11"></line>
                    </svg>
                </button>
                <button onclick="event.stopPropagation(); zoomOut()" title="Уменьшить (колёсико вниз)">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <circle cx="11" cy="11" r="8"></circle>
                        <path d="M21 21l-4.35-4.35"></path>
                        <line x1="8" y1="11" x2="14" y2="11"></line>
                    </svg>
                </button>
                <button onclick="event.stopPropagation(); resetZoom()" title="Сбросить (двойной клик)">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M1 4v6h6"></path>
                        <path d="M23 20v-6h-6"></path>
                        <path d="M20.49 9A9 9 0 0 0 5.64 5.64L1 10m22 4l-4.64 4.36A9 9 0 0 1 3.51 15"></path>
                    </svg>
                </button>
                <button onclick="event.stopPropagation(); toggleFullscreen()" title="Полный экран">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <path d="M8 3H5a2 2 0 0 0-2 2v3m18 0V5a2 2 0 0 0-2-2h-3m0 18h3a2 2 0 0 0 2-2v-3M3 16v3a2 2 0 0 0 2 2h3"></path>
                    </svg>
                </button>
            </div>
            
            <div class="lightbox-profile-header" id="lightboxProfileHeader">
                <div class="lightbox-profile-name" id="lightboxProfileName"></div>
                <div class="lightbox-profile-description" id="lightboxProfileDescription"></div>
            </div>
            
            <button class="lightbox-nav lightbox-nav-prev" id="lightboxPrev" onclick="event.stopPropagation(); navigatePhoto(-1)" title="Предыдущее фото">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                    <polyline points="15 18 9 12 15 6"></polyline>
                </svg>
            </button>
            
            <button class="lightbox-nav lightbox-nav-next" id="lightboxNext" onclick="event.stopPropagation(); navigatePhoto(1)" title="Следующее фото">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                    <polyline points="9 18 15 12 9 6"></polyline>
                </svg>
            </button>
            
            <div class="lightbox-image-container" id="lightboxContainer">
                <img class="lightbox-image" id="lightboxImage" src="" alt="" ondblclick="resetZoom()" draggable="false">
            </div>
            
            <div class="lightbox-info" id="lightboxInfo">
                <div class="lightbox-info-author" id="lightboxAuthor"></div>
                <div class="lightbox-info-description" id="lightboxDescription"></div>
                <div class="lightbox-info-date" id="lightboxDate"></div>
            </div>
            
            <div class="lightbox-thumbnails" id="lightboxThumbnails"></div>
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
                top: 20px;
                left: 20px;
                z-index: 1001;
                display: flex;
                gap: 8px;
            }
            
            .lightbox-controls button {
                background: rgba(255, 255, 255, 0.15);
                backdrop-filter: blur(10px);
                border: 1px solid rgba(255, 255, 255, 0.2);
                width: 44px;
                height: 44px;
                border-radius: 8px;
                cursor: pointer;
                color: white;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: all 0.2s ease;
            }
            
            .lightbox-controls button:hover {
                background: rgba(255, 255, 255, 0.25);
                transform: scale(1.05);
            }
            
            .lightbox-profile-header {
                position: absolute;
                top: 80px;
                left: 20px;
                max-width: 400px;
                background: rgba(0, 0, 0, 0.7);
                backdrop-filter: blur(10px);
                border-radius: 12px;
                padding: 14px 18px;
                z-index: 1001;
            }
            
            .lightbox-profile-name {
                font-size: 16px;
                font-weight: 600;
                color: white;
                margin-bottom: 4px;
            }
            
            .lightbox-profile-description {
                font-size: 13px;
                color: rgba(255, 255, 255, 0.7);
                line-height: 1.4;
            }

            .lightbox-close {
                position: absolute;
                top: 20px;
                right: 20px;
                background: rgba(255, 255, 255, 0.15);
                backdrop-filter: blur(10px);
                border: 1px solid rgba(255, 255, 255, 0.2);
                width: 44px;
                height: 44px;
                border-radius: 8px;
                cursor: pointer;
                font-size: 20px;
                color: white;
                z-index: 1002;
                transition: all 0.2s ease;
            }
            
            .lightbox-close:hover {
                background: rgba(255, 255, 255, 0.25);
                transform: scale(1.05);
            }
            
            .lightbox-nav {
                position: absolute;
                top: 50%;
                transform: translateY(-50%);
                background: rgba(255, 255, 255, 0.15);
                backdrop-filter: blur(10px);
                border: 1px solid rgba(255, 255, 255, 0.2);
                width: 50px;
                height: 50px;
                border-radius: 50%;
                cursor: pointer;
                color: white;
                z-index: 1001;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: all 0.2s ease;
            }
            
            .lightbox-nav:hover {
                background: rgba(255, 255, 255, 0.25);
                transform: translateY(-50%) scale(1.1);
            }
            
            .lightbox-nav-prev {
                left: 20px;
            }
            
            .lightbox-nav-next {
                right: 20px;
            }
            
            .lightbox-nav:disabled {
                opacity: 0.3;
                cursor: not-allowed;
            }
            
            .lightbox-info {
                position: absolute;
                bottom: 100px;
                left: 20px;
                max-width: 400px;
                background: rgba(0, 0, 0, 0.7);
                backdrop-filter: blur(10px);
                border-radius: 12px;
                padding: 16px 20px;
                color: white;
                z-index: 1001;
            }
            
            .lightbox-info-author {
                font-size: 13px;
                color: rgba(255, 255, 255, 0.7);
                margin-bottom: 8px;
            }
            
            .lightbox-info-description {
                font-size: 15px;
                line-height: 1.5;
                margin-bottom: 8px;
                color: white;
            }
            
            .lightbox-info-date {
                font-size: 12px;
                color: rgba(255, 255, 255, 0.6);
            }
            
            .lightbox-thumbnails {
                position: absolute;
                bottom: 20px;
                left: 50%;
                transform: translateX(-50%);
                display: flex;
                gap: 8px;
                background: rgba(0, 0, 0, 0.7);
                backdrop-filter: blur(10px);
                border-radius: 12px;
                padding: 12px;
                max-width: 90vw;
                overflow-x: auto;
                z-index: 1001;
            }
            
            .lightbox-thumbnails::-webkit-scrollbar {
                height: 6px;
            }
            
            .lightbox-thumbnails::-webkit-scrollbar-track {
                background: rgba(255, 255, 255, 0.1);
                border-radius: 3px;
            }
            
            .lightbox-thumbnails::-webkit-scrollbar-thumb {
                background: rgba(255, 255, 255, 0.3);
                border-radius: 3px;
            }
            
            .lightbox-thumbnail {
                width: 60px;
                height: 60px;
                border-radius: 6px;
                overflow: hidden;
                cursor: pointer;
                flex-shrink: 0;
                border: 2px solid transparent;
                transition: all 0.2s ease;
                opacity: 0.6;
            }
            
            .lightbox-thumbnail:hover {
                opacity: 1;
                transform: scale(1.05);
            }
            
            .lightbox-thumbnail.active {
                border-color: #4a9d9d;
                opacity: 1;
            }
            
            .lightbox-thumbnail img {
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
        `;
        document.head.appendChild(style);
    }
}

// Открытие lightbox
// Параметры:
// - photos: строка (URL) или массив объектов {url, description, date, author, profileName, profileDescription}
// - index: индекс фото для открытия (если передан массив)
function openLightbox(photos, index = 0) {
    // Инициализируем lightbox если еще не создан
    initLightbox();

    // Если передана строка URL, создаем массив с одним элементом
    if (typeof photos === 'string') {
        currentPhotos = [{ url: photos }];
        currentPhotoIndex = 0;
    } else if (Array.isArray(photos)) {
        currentPhotos = photos;
        currentPhotoIndex = index;
    } else {
        currentPhotos = [photos];
        currentPhotoIndex = 0;
    }
    
    // Показываем lightbox
    document.getElementById('lightbox').classList.add('active');
    
    // Отображаем информацию о профиле
    updateProfileHeader();
    
    // Отображаем текущее фото
    updatePhoto();
    
    // Обновляем навигацию и превью
    updateNavigation();
    updateThumbnails();
    
    // Запрещаем браузерное перетаскивание изображения
    const img = document.getElementById('lightboxImage');
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

// Обновление заголовка профиля
function updateProfileHeader() {
    const photo = currentPhotos[0]; // Берем данные из первого фото
    if (!photo) return;
    
    const profileHeader = document.getElementById('lightboxProfileHeader');
    const profileName = document.getElementById('lightboxProfileName');
    const profileDescription = document.getElementById('lightboxProfileDescription');
    
    if (photo.profileName) {
        profileName.textContent = photo.profileName;
        profileName.style.display = 'block';
    } else {
        profileName.style.display = 'none';
    }
    
    if (photo.profileDescription) {
        profileDescription.textContent = photo.profileDescription;
        profileDescription.style.display = 'block';
    } else {
        profileDescription.style.display = 'none';
    }
    
    // Скрываем весь блок если нет данных
    if (!photo.profileName && !photo.profileDescription) {
        profileHeader.style.display = 'none';
    } else {
        profileHeader.style.display = 'block';
    }
}

// Обновление отображаемого фото
function updatePhoto() {
    const photo = currentPhotos[currentPhotoIndex];
    if (!photo) return;
    
    const img = document.getElementById('lightboxImage');
    img.src = photo.url;
    resetZoom();
    
    // Обновляем информацию
    const author = document.getElementById('lightboxAuthor');
    const description = document.getElementById('lightboxDescription');
    const date = document.getElementById('lightboxDate');
    
    if (photo.author) {
        author.textContent = `Автор: ${photo.author}`;
        author.style.display = 'block';
    } else {
        author.style.display = 'none';
    }
    
    if (photo.description) {
        description.textContent = photo.description;
        description.style.display = 'block';
    } else {
        description.style.display = 'none';
    }
    
    if (photo.date) {
        let dateHtml = photo.dateFormatted || `📅 ${photo.date}`;
        
        // Добавляем информацию обо всех ключевых событиях
        if (photo.allMilestones && photo.allMilestones.length > 0) {
            const milestonesHtml = photo.allMilestones.map(m => {
                const safeTitle = escapeHtmlLocal(m.title);
                const daysText = `${m.days} ${getDaysWord(m.days)}`;
                
                if (m.isPast) {
                    // Прошедшее событие - зеленым
                    return `<div style="color: #4caf50; font-size: 12px; margin-top: 6px;">⭐ "${safeTitle}": прошло ${daysText}</div>`;
                } else {
                    // Будущее событие - оранжевым
                    return `<div style="color: #ff9800; font-size: 12px; margin-top: 6px;">⏳ До "${safeTitle}": осталось ${daysText}</div>`;
                }
            }).join('');
            dateHtml += milestonesHtml;
        }
        
        date.innerHTML = dateHtml;
        date.style.display = 'block';
    } else {
        date.style.display = 'none';
    }
    
    // Локальная функция для экранирования HTML
    function escapeHtmlLocal(text) {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
    }
    
    // Скрываем панель если нет данных
    const infoPanel = document.getElementById('lightboxInfo');
    if (!photo.author && !photo.description && !photo.date) {
        infoPanel.style.display = 'none';
    } else {
        infoPanel.style.display = 'block';
    }
}

// Склонение слова "день"
function getDaysWord(days) {
    const lastDigit = days % 10;
    const lastTwoDigits = days % 100;
    
    if (lastTwoDigits >= 11 && lastTwoDigits <= 14) {
        return 'дней';
    }
    
    if (lastDigit === 1) {
        return 'день';
    }
    
    if (lastDigit >= 2 && lastDigit <= 4) {
        return 'дня';
    }
    
    return 'дней';
}

// Навигация между фото
function navigatePhoto(direction) {
    currentPhotoIndex += direction;
    
    // Зацикливание
    if (currentPhotoIndex < 0) {
        currentPhotoIndex = currentPhotos.length - 1;
    } else if (currentPhotoIndex >= currentPhotos.length) {
        currentPhotoIndex = 0;
    }
    
    updatePhoto();
    updateNavigation();
    updateThumbnails();
}

// Обновление навигационных кнопок
function updateNavigation() {
    const prevBtn = document.getElementById('lightboxPrev');
    const nextBtn = document.getElementById('lightboxNext');
    
    if (currentPhotos.length <= 1) {
        prevBtn.style.display = 'none';
        nextBtn.style.display = 'none';
    } else {
        prevBtn.style.display = 'flex';
        nextBtn.style.display = 'flex';
    }
}

// Обновление превью
function updateThumbnails() {
    const container = document.getElementById('lightboxThumbnails');
    
    if (currentPhotos.length <= 1) {
        container.style.display = 'none';
        return;
    }
    
    container.style.display = 'flex';
    container.innerHTML = currentPhotos.map((photo, index) => `
        <div class="lightbox-thumbnail ${index === currentPhotoIndex ? 'active' : ''}" 
             onclick="currentPhotoIndex = ${index}; updatePhoto(); updateNavigation(); updateThumbnails();">
            <img src="${photo.url}" alt="">
        </div>
    `).join('');
    
    // Прокручиваем к активному превью
    const activeThumb = container.querySelector('.lightbox-thumbnail.active');
    if (activeThumb) {
        activeThumb.scrollIntoView({ behavior: 'smooth', block: 'nearest', inline: 'center' });
    }
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

// Обработка нажатия клавиш
document.addEventListener('keydown', (e) => {
    const lightbox = document.getElementById('lightbox');
    if (!lightbox || !lightbox.classList.contains('active')) return;
    
    if (e.key === 'Escape') {
        if (!document.fullscreenElement) {
            closeLightbox();
        }
    } else if (e.key === 'ArrowLeft') {
        navigatePhoto(-1);
    } else if (e.key === 'ArrowRight') {
        navigatePhoto(1);
    }
});

// Автоматическая инициализация при загрузке страницы
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initLightbox);
} else {
    initLightbox();
}
