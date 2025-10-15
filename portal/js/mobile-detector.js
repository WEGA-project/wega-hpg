// Mobile detector and auto-loader for HPG Community
// Автоматически определяет мобильное устройство и подключает мобильные модули

(function() {
    'use strict';
    
    // Проверка на мобильное устройство
    const isMobile = () => {
        // Проверка по User Agent
        const userAgent = navigator.userAgent || navigator.vendor || window.opera;
        const mobileRegex = /android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini|mobile/i;
        
        // Проверка по размеру экрана
        const isSmallScreen = window.innerWidth <= 768;
        
        // Проверка на touch-устройство
        const isTouchDevice = ('ontouchstart' in window) || 
                             (navigator.maxTouchPoints > 0) || 
                             (navigator.msMaxTouchPoints > 0);
        
        return mobileRegex.test(userAgent) || (isSmallScreen && isTouchDevice);
    };
    
    // Проверка планшета
    const isTablet = () => {
        const userAgent = navigator.userAgent || navigator.vendor || window.opera;
        return /ipad|tablet|playbook|silk/i.test(userAgent) || 
               (window.innerWidth >= 768 && window.innerWidth <= 1024);
    };
    
    // Загрузка CSS файла
    const loadCSS = (href) => {
        const link = document.createElement('link');
        link.rel = 'stylesheet';
        link.href = href;
        link.classList.add('mobile-dynamic-resource');
        document.head.appendChild(link);
    };
    
    // Загрузка JS модуля
    const loadJS = (src) => {
        return new Promise((resolve, reject) => {
            const script = document.createElement('script');
            script.src = src;
            script.classList.add('mobile-dynamic-resource');
            script.onload = resolve;
            script.onerror = reject;
            document.body.appendChild(script);
        });
    };
    
    // Инициализация мобильного режима
    const initMobile = async () => {
        console.log('🔥 HPG Mobile: Initializing mobile mode');
        
        // Добавляем класс к body
        document.body.classList.add('mobile-mode');
        
        if (isTablet()) {
            document.body.classList.add('tablet-mode');
        }
        
        // Устанавливаем viewport для мобильных
        let viewport = document.querySelector('meta[name="viewport"]');
        if (!viewport) {
            viewport = document.createElement('meta');
            viewport.name = 'viewport';
            document.head.appendChild(viewport);
        }
        viewport.content = 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover';
        
        // Загружаем мобильные стили
        loadCSS('css/mobile.css');
        
        // Загружаем мобильные модули последовательно
        try {
            await loadJS('js/mobile-swipe.js');
            console.log('✅ Mobile swipe module loaded');
            
            await loadJS('js/social-actions.js');
            console.log('✅ Social actions module loaded');
            
            await loadJS('js/mobile-ui.js');
            console.log('✅ Mobile UI module loaded');
            
            // Диспатчим событие готовности мобильного режима
            window.dispatchEvent(new CustomEvent('mobileReady', {
                detail: {
                    isMobile: true,
                    isTablet: isTablet(),
                    screenWidth: window.innerWidth,
                    screenHeight: window.innerHeight
                }
            }));
            
            console.log('🎉 HPG Mobile: All mobile modules loaded successfully');
        } catch (error) {
            console.error('❌ HPG Mobile: Error loading modules', error);
        }
    };
    
    // Экспорт в глобальную область
    window.HPGMobile = {
        isMobile: isMobile(),
        isTablet: isTablet(),
        init: initMobile,
        detect: isMobile
    };
    
    // Автоматическая инициализация при загрузке страницы
    if (isMobile()) {
        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', initMobile);
        } else {
            initMobile();
        }
    } else {
        console.log('💻 HPG: Desktop mode active');
    }
    
    // Обработка изменения ориентации
    window.addEventListener('orientationchange', () => {
        setTimeout(() => {
            window.dispatchEvent(new CustomEvent('mobileOrientationChange', {
                detail: {
                    orientation: window.orientation,
                    width: window.innerWidth,
                    height: window.innerHeight
                }
            }));
        }, 100);
    });
    
    // Обработка resize для responsive поведения
    let resizeTimer;
    window.addEventListener('resize', () => {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(() => {
            const wasMobile = document.body.classList.contains('mobile-mode');
            const nowMobile = isMobile();
            
            if (wasMobile !== nowMobile) {
                console.log(`🔄 HPG: Switching to ${nowMobile ? 'mobile' : 'desktop'} mode`);
                location.reload(); // Перезагружаем для смены режима
            }
        }, 250);
    });
    
})();
