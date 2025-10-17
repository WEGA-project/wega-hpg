// Mobile Swipe & Touch Gestures for HPG Community
// Обработка свайпов для навигации по фото и карточкам профилей

(function() {
    'use strict';
    
    // Состояние свайпа
    let touchStartX = 0;
    let touchStartY = 0;
    let touchEndX = 0;
    let touchEndY = 0;
    let startTime = 0;
    
    // Настройки жестов
    const SWIPE_THRESHOLD = 50; // Минимальное расстояние для свайпа (px)
    const SWIPE_VELOCITY = 0.3; // Минимальная скорость (px/ms)
    const TAP_MAX_DISTANCE = 10;
    const TAP_MAX_DURATION = 200;
    
    // Обработка свайпа в lightbox
    const handleLightboxSwipe = (direction) => {
        if (typeof navigatePhoto === 'function') {
            if (direction === 'left') {
                navigatePhoto(1); // Следующее фото
            } else if (direction === 'right') {
                navigatePhoto(-1); // Предыдущее фото
            }
        }
    };
    
    // Определение направления свайпа
    const detectSwipeDirection = () => {
        const deltaX = touchEndX - touchStartX;
        const deltaY = touchEndY - touchStartY;
        const deltaTime = Date.now() - startTime;
        const absX = Math.abs(deltaX);
        const absY = Math.abs(deltaY);
        const velocity = Math.sqrt(deltaX * deltaX + deltaY * deltaY) / deltaTime;
        
        // Проверка на тап
        if (absX < TAP_MAX_DISTANCE && absY < TAP_MAX_DISTANCE && deltaTime < TAP_MAX_DURATION) {
            return 'tap';
        }
        
        // Горизонтальный свайп преобладает
        if (absX > absY && absX > SWIPE_THRESHOLD && velocity > SWIPE_VELOCITY) {
            return deltaX > 0 ? 'right' : 'left';
        }
        
        // Вертикальный свайп
        if (absY > absX && absY > SWIPE_THRESHOLD && velocity > SWIPE_VELOCITY) {
            return deltaY > 0 ? 'down' : 'up';
        }
        
        return null;
    };
    
    // Инициализация свайпов для lightbox
    const initLightboxSwipe = () => {
        const lightbox = document.getElementById('lightbox');
        if (!lightbox) return;
        
        const container = document.getElementById('lightboxContainer');
        if (!container) return;
        
        let isDragging = false;
        
        container.addEventListener('touchstart', (e) => {
            if (e.touches.length !== 1) return; // Игнорируем мультитач
            
            touchStartX = e.touches[0].clientX;
            touchStartY = e.touches[0].clientY;
            startTime = Date.now();
            isDragging = true;
        }, { passive: true });
        
        container.addEventListener('touchmove', (e) => {
            if (!isDragging) return;
            
            touchEndX = e.touches[0].clientX;
            touchEndY = e.touches[0].clientY;
            
            // Визуальная обратная связь при свайпе
            const deltaX = touchEndX - touchStartX;
            if (Math.abs(deltaX) > 10) {
                // Можно добавить индикатор свайпа
            }
        }, { passive: true });
        
        container.addEventListener('touchend', (e) => {
            if (!isDragging) return;
            isDragging = false;
            
            const direction = detectSwipeDirection();
            
            if (direction === 'left' || direction === 'right') {
                handleLightboxSwipe(direction);
                
                // Тактильная обратная связь (если поддерживается)
                if (navigator.vibrate) {
                    navigator.vibrate(10);
                }
            } else if (direction === 'down' && typeof closeLightbox === 'function') {
                // Свайп вниз закрывает lightbox
                closeLightbox();
            }
        }, { passive: true });
    };
    
    // Pull to refresh функциональность
    let pullStartY = 0;
    let isPulling = false;
    let pullDistance = 0;
    const PULL_THRESHOLD = 80;
    
    const initPullToRefresh = () => {
        const container = document.querySelector('.container') || document.body;
        let pullIndicator = document.querySelector('.pull-to-refresh');
        
        if (!pullIndicator) {
            pullIndicator = document.createElement('div');
            pullIndicator.className = 'pull-to-refresh';
            pullIndicator.innerHTML = '<div class="spinner"></div>';
            document.body.appendChild(pullIndicator);
        }
        
        container.addEventListener('touchstart', (e) => {
            if (window.scrollY === 0) {
                pullStartY = e.touches[0].clientY;
                isPulling = true;
            }
        }, { passive: true });
        
        container.addEventListener('touchmove', (e) => {
            if (!isPulling) return;
            
            pullDistance = e.touches[0].clientY - pullStartY;
            
            if (pullDistance > 0 && pullDistance < PULL_THRESHOLD * 2) {
                pullIndicator.style.top = `${-60 + pullDistance}px`;
            }
            
            if (pullDistance >= PULL_THRESHOLD) {
                pullIndicator.classList.add('active');
            }
        }, { passive: true });
        
        container.addEventListener('touchend', () => {
            if (isPulling && pullDistance >= PULL_THRESHOLD) {
                // Триггерим обновление
                window.dispatchEvent(new CustomEvent('pullRefresh'));
                
                setTimeout(() => {
                    pullIndicator.classList.remove('active');
                    pullIndicator.style.top = '-60px';
                }, 1000);
            } else {
                pullIndicator.style.top = '-60px';
                pullIndicator.classList.remove('active');
            }
            
            isPulling = false;
            pullDistance = 0;
        }, { passive: true });
    };
    
    // Swipeable cards для профилей (Tinder-like)
    const initSwipeableCards = () => {
        const cards = document.querySelectorAll('.profile-card');
        
        cards.forEach(card => {
            let startX = 0;
            let currentX = 0;
            let isDragging = false;
            
            card.addEventListener('touchstart', (e) => {
                startX = e.touches[0].clientX;
                isDragging = true;
                card.style.transition = 'none';
            });
            
            card.addEventListener('touchmove', (e) => {
                if (!isDragging) return;
                
                currentX = e.touches[0].clientX - startX;
                const rotation = currentX / 20; // Легкий поворот
                
                card.style.transform = `translateX(${currentX}px) rotate(${rotation}deg)`;
                
                // Визуальная индикация (можно добавить overlay)
                const opacity = 1 - Math.abs(currentX) / 300;
                card.style.opacity = Math.max(0.5, opacity);
            });
            
            card.addEventListener('touchend', () => {
                if (!isDragging) return;
                isDragging = false;
                
                card.style.transition = 'transform 0.3s ease, opacity 0.3s ease';
                
                // Если свайп сильный - убираем карточку
                if (Math.abs(currentX) > 150) {
                    const direction = currentX > 0 ? 1 : -1;
                    card.style.transform = `translateX(${direction * window.innerWidth}px) rotate(${direction * 30}deg)`;
                    card.style.opacity = '0';
                    
                    setTimeout(() => {
                        card.style.display = 'none';
                    }, 300);
                } else {
                    // Возвращаем на место
                    card.style.transform = 'translateX(0) rotate(0)';
                    card.style.opacity = '1';
                }
                
                currentX = 0;
            });
        });
    };
    
    // Обработка двойного тапа для zoom
    let lastTap = 0;
    const handleDoubleTap = (element, callback) => {
        element.addEventListener('touchend', (e) => {
            const currentTime = Date.now();
            const tapLength = currentTime - lastTap;
            
            if (tapLength < 300 && tapLength > 0) {
                e.preventDefault();
                callback();
            }
            
            lastTap = currentTime;
        });
    };
    
    // Продвинутый Pinch to zoom и Pan для изображений в lightbox
    let initialDistance = 0;
    let currentScale = 1;
    let currentPosX = 0;
    let currentPosY = 0;
    let lastPosX = 0;
    let lastPosY = 0;
    let initialPinchCenter = { x: 0, y: 0 };
    let isPanning = false;
    let panStartX = 0;
    let panStartY = 0;
    
    const initPinchZoom = () => {
        const lightboxImage = document.getElementById('lightboxImage');
        if (!lightboxImage) return;
        
        const container = document.getElementById('lightboxContainer');
        
        container.addEventListener('touchstart', (e) => {
            if (e.touches.length === 2) {
                // Pinch zoom начало
                e.preventDefault();
                initialDistance = getDistance(e.touches[0], e.touches[1]);
                
                // Запоминаем центр pinch для zoom относительно точки касания
                initialPinchCenter = {
                    x: (e.touches[0].clientX + e.touches[1].clientX) / 2,
                    y: (e.touches[0].clientY + e.touches[1].clientY) / 2
                };
            } else if (e.touches.length === 1 && currentScale > 1) {
                // Pan начало (только если есть zoom)
                isPanning = true;
                panStartX = e.touches[0].clientX - currentPosX;
                panStartY = e.touches[0].clientY - currentPosY;
            }
        }, { passive: false });
        
        container.addEventListener('touchmove', (e) => {
            if (e.touches.length === 2) {
                // Pinch zoom
                e.preventDefault();
                
                const currentDistance = getDistance(e.touches[0], e.touches[1]);
                const scale = currentDistance / initialDistance;
                
                // Плавное изменение масштаба
                const newScale = currentScale * scale;
                currentScale = Math.min(Math.max(newScale, 1), 5); // От 1x до 5x
                
                // Применяем zoom через глобальные функции если они есть
                if (typeof window.currentZoom !== 'undefined') {
                    window.currentZoom = currentScale;
                    window.currentX = currentPosX;
                    window.currentY = currentPosY;
                    if (typeof applyZoom === 'function') {
                        applyZoom();
                    }
                } else {
                    // Fallback - прямое изменение transform
                    lightboxImage.style.transform = `scale(${currentScale}) translate(${currentPosX}px, ${currentPosY}px)`;
                    lightboxImage.style.transformOrigin = 'center center';
                }
                
                initialDistance = currentDistance;
            } else if (e.touches.length === 1 && isPanning && currentScale > 1) {
                // Pan (перемещение при зуме)
                e.preventDefault();
                
                currentPosX = e.touches[0].clientX - panStartX;
                currentPosY = e.touches[0].clientY - panStartY;
                
                // Ограничиваем перемещение границами изображения
                const maxX = (lightboxImage.width * (currentScale - 1)) / 2;
                const maxY = (lightboxImage.height * (currentScale - 1)) / 2;
                
                currentPosX = Math.min(Math.max(currentPosX, -maxX), maxX);
                currentPosY = Math.min(Math.max(currentPosY, -maxY), maxY);
                
                // Применяем позицию
                if (typeof window.currentX !== 'undefined') {
                    window.currentX = currentPosX;
                    window.currentY = currentPosY;
                    if (typeof applyZoom === 'function') {
                        applyZoom();
                    }
                } else {
                    lightboxImage.style.transform = `scale(${currentScale}) translate(${currentPosX}px, ${currentPosY}px)`;
                }
            }
        }, { passive: false });
        
        container.addEventListener('touchend', (e) => {
            if (e.touches.length < 2) {
                initialDistance = 0;
            }
            
            if (e.touches.length === 0) {
                isPanning = false;
                
                // Если zoom сброшен до 1 - сбрасываем позицию
                if (currentScale <= 1.1) {
                    currentScale = 1;
                    currentPosX = 0;
                    currentPosY = 0;
                    
                    if (typeof resetZoom === 'function') {
                        resetZoom();
                    } else {
                        lightboxImage.style.transform = 'scale(1) translate(0, 0)';
                    }
                }
            }
        });
        
        // Двойной тап для zoom in/out
        let lastTapTime = 0;
        let lastTapX = 0;
        let lastTapY = 0;
        
        container.addEventListener('touchend', (e) => {
            const currentTime = Date.now();
            const tapLength = currentTime - lastTapTime;
            
            if (tapLength < 300 && tapLength > 0) {
                e.preventDefault();
                
                if (currentScale > 1) {
                    // Zoom out - сброс
                    currentScale = 1;
                    currentPosX = 0;
                    currentPosY = 0;
                    
                    if (typeof resetZoom === 'function') {
                        resetZoom();
                    } else {
                        lightboxImage.style.transform = 'scale(1) translate(0, 0)';
                        lightboxImage.style.transition = 'transform 0.3s ease';
                        setTimeout(() => {
                            lightboxImage.style.transition = '';
                        }, 300);
                    }
                } else {
                    // Zoom in на место тапа
                    currentScale = 2.5;
                    
                    // Вычисляем позицию для центрирования на точке тапа
                    const rect = lightboxImage.getBoundingClientRect();
                    const tapX = lastTapX - rect.left - rect.width / 2;
                    const tapY = lastTapY - rect.top - rect.height / 2;
                    
                    currentPosX = -tapX * 0.5;
                    currentPosY = -tapY * 0.5;
                    
                    if (typeof window.currentZoom !== 'undefined') {
                        window.currentZoom = currentScale;
                        window.currentX = currentPosX;
                        window.currentY = currentPosY;
                        if (typeof applyZoom === 'function') {
                            applyZoom();
                        }
                    } else {
                        lightboxImage.style.transform = `scale(${currentScale}) translate(${currentPosX}px, ${currentPosY}px)`;
                        lightboxImage.style.transition = 'transform 0.3s ease';
                        setTimeout(() => {
                            lightboxImage.style.transition = '';
                        }, 300);
                    }
                }
            }
            
            lastTapTime = currentTime;
            if (e.changedTouches && e.changedTouches[0]) {
                lastTapX = e.changedTouches[0].clientX;
                lastTapY = e.changedTouches[0].clientY;
            }
        });
    };
    
    // Вспомогательная функция для расстояния между точками
    const getDistance = (touch1, touch2) => {
        const dx = touch1.clientX - touch2.clientX;
        const dy = touch1.clientY - touch2.clientY;
        return Math.sqrt(dx * dx + dy * dy);
    };
    
    // Horizontal scroll для photo trains
    const initPhotoTrainScroll = () => {
        const photoTrains = document.querySelectorAll('.journal-photo-train');
        
        photoTrains.forEach(train => {
            let isScrolling = false;
            let startX = 0;
            let scrollLeft = 0;
            
            train.addEventListener('touchstart', (e) => {
                isScrolling = true;
                startX = e.touches[0].pageX - train.offsetLeft;
                scrollLeft = train.scrollLeft;
            });
            
            train.addEventListener('touchmove', (e) => {
                if (!isScrolling) return;
                e.preventDefault();
                
                const x = e.touches[0].pageX - train.offsetLeft;
                const walk = (x - startX) * 2;
                train.scrollLeft = scrollLeft - walk;
            }, { passive: false });
            
            train.addEventListener('touchend', () => {
                isScrolling = false;
            });
        });
    };
    
    // Инициализация всех свайп-функций
    const init = () => {
        console.log('🔄 Initializing mobile swipe gestures');
        
        // Ждем загрузки lightbox
        const checkLightbox = setInterval(() => {
            if (document.getElementById('lightbox')) {
                initLightboxSwipe();
                initPinchZoom();
                clearInterval(checkLightbox);
            }
        }, 100);
        
        // Остальные инициализации
        initPullToRefresh();
        initPhotoTrainScroll();
        
        // Инициализируем swipeable cards после загрузки контента
        setTimeout(initSwipeableCards, 1000);
        
        // Переинициализация при добавлении новых элементов
        const observer = new MutationObserver(() => {
            initSwipeableCards();
            initPhotoTrainScroll();
        });
        
        observer.observe(document.body, {
            childList: true,
            subtree: true
        });
    };
    
    // Экспорт API
    window.HPGSwipe = {
        init,
        initLightboxSwipe,
        initSwipeableCards,
        initPinchZoom,
        handleDoubleTap
    };
    
    // Автоинициализация
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init);
    } else {
        init();
    }
    
    // Обработка события готовности мобильного режима
    window.addEventListener('mobileReady', init);
    
})();
