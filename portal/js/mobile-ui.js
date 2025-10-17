// Mobile UI Module for HPG Community
// Управление мобильным интерфейсом: bottom navigation, меню, оптимизация форм

(function() {
    'use strict';
    
    // ==================== BOTTOM NAVIGATION ====================
    
    /**
     * Создать нижнюю навигацию
     */
    const createBottomNav = () => {
        // Проверяем, не создана ли уже навигация
        if (document.querySelector('.mobile-bottom-nav')) return;
        
        const currentPage = getCurrentPage();
        
        const bottomNav = document.createElement('nav');
        bottomNav.className = 'mobile-bottom-nav';
        bottomNav.innerHTML = `
            <a href="index.html" class="mobile-bottom-nav-item ${currentPage === 'index' ? 'active' : ''}">
                <span class="icon">🏠</span>
                <span>Главная</span>
            </a>
            <a href="gallery.html" class="mobile-bottom-nav-item ${currentPage === 'gallery' ? 'active' : ''}">
                <span class="icon">📸</span>
                <span>Галерея</span>
            </a>
            <button class="mobile-bottom-nav-item" id="addProfileBtn">
                <span class="icon" style="font-size: 32px; color: #4a9d9d;">➕</span>
                <span>Добавить</span>
            </button>
            <button class="mobile-bottom-nav-item" id="notificationsBtn">
                <span class="icon" style="position: relative;">
                    🔔
                    <span class="badge" id="notificationsBadge" style="display: none;">0</span>
                </span>
                <span>Уведомления</span>
            </button>
            <button class="mobile-bottom-nav-item" id="profileMenuBtn">
                <span class="icon">👤</span>
                <span>Профиль</span>
            </button>
        `;
        
        document.body.appendChild(bottomNav);
        
        // Обработчики
        document.getElementById('addProfileBtn')?.addEventListener('click', handleAddProfile);
        document.getElementById('notificationsBtn')?.addEventListener('click', openNotifications);
        document.getElementById('profileMenuBtn')?.addEventListener('click', openProfileMenu);
    };
    
    const getCurrentPage = () => {
        const path = window.location.pathname;
        if (path.includes('gallery.html')) return 'gallery';
        if (path.includes('index.html') || path.endsWith('/')) return 'index';
        return 'other';
    };
    
    // ==================== HEADER OPTIMIZATIONS ====================
    
    /**
     * Извлечь эмодзи из текста
     */
    const extractEmoji = (text) => {
        // Regex для эмодзи
        const emojiRegex = /[\p{Emoji}\u200d]+/gu;
        const matches = text.match(emojiRegex);
        return matches ? matches[0] : text.charAt(0);
    };
    
    /**
     * Оптимизировать кнопки header - оставить только эмодзи
     */
    const optimizeHeaderButtons = () => {
        const headerActions = document.querySelector('.header-actions');
        if (!headerActions) return;
        
        // Обрабатываем все кнопки в header
        const buttons = headerActions.querySelectorAll('.btn');
        buttons.forEach(btn => {
            // Пропускаем уже обработанные кнопки
            if (btn.hasAttribute('data-mobile-optimized')) return;
            
            const originalText = btn.textContent.trim();
            if (originalText && originalText.length > 2) { // Только если есть текст кроме эмодзи
                const emoji = extractEmoji(originalText);
                btn.setAttribute('data-original-text', originalText);
                btn.setAttribute('data-mobile-optimized', 'true');
                btn.setAttribute('title', originalText); // Tooltip для подсказки
                btn.textContent = emoji;
            }
        });
    };
    
    /**
     * Оптимизировать header для мобильного
     */
    const optimizeHeader = () => {
        const header = document.querySelector('.header');
        if (!header) return;
        
        // Оптимизируем кнопки - оставляем только эмодзи
        optimizeHeaderButtons();
        
        // Добавляем кнопку фильтра в header
        addFilterButton();
        
        // Скрываем header при скролле вниз
        let lastScrollTop = 0;
        let ticking = false;
        
        window.addEventListener('scroll', () => {
            if (!ticking) {
                window.requestAnimationFrame(() => {
                    const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
                    
                    if (scrollTop > lastScrollTop && scrollTop > 100) {
                        // Скролл вниз - скрываем header
                        header.style.transform = 'translateY(-100%)';
                    } else {
                        // Скролл вверх - показываем header
                        header.style.transform = 'translateY(0)';
                    }
                    
                    lastScrollTop = scrollTop <= 0 ? 0 : scrollTop;
                    ticking = false;
                });
                
                ticking = true;
            }
        }, { passive: true });
        
        // Добавляем transition
        header.style.transition = 'transform 0.3s ease';
    };
    
    /**
     * Добавить floating кнопку фильтра
     */
    const addFilterButton = () => {
        if (document.querySelector('.mobile-filter-btn')) return;
        
        const filterBtn = document.createElement('button');
        filterBtn.className = 'mobile-filter-btn';
        filterBtn.innerHTML = '🔍';
        filterBtn.setAttribute('aria-label', 'Открыть фильтры');
        filterBtn.addEventListener('click', openFilters);
        
        document.body.appendChild(filterBtn);
        
        // Добавляем пульсацию при первом появлении (подсказка пользователю)
        setTimeout(() => {
            filterBtn.classList.add('pulse');
            
            // Убираем пульсацию через 4 секунды
            setTimeout(() => {
                filterBtn.classList.remove('pulse');
            }, 4000);
        }, 1000);
    };
    
    // ==================== FILTERS ====================
    
    /**
     * Открыть модальное окно с фильтрами
     */
    const openFilters = () => {
        // Проверяем, не создано ли уже модальное окно
        let modal = document.querySelector('.mobile-filters-modal');
        
        if (!modal) {
            // Создаем модальное окно
            modal = document.createElement('div');
            modal.className = 'mobile-filters-modal';
            
            // Получаем оригинальный блок фильтров
            const filtersBlock = document.querySelector('.filters');
            if (!filtersBlock) return;
            
            // Клонируем содержимое фильтров
            const filtersContent = filtersBlock.cloneNode(true);
            filtersContent.style.display = 'block';
            filtersContent.style.padding = '0';
            filtersContent.style.background = 'transparent';
            filtersContent.style.boxShadow = 'none';
            
            modal.innerHTML = `
                <div class="mobile-filters-content">
                    <div class="mobile-filters-header">
                        <h3>🔍 Поиск и фильтры</h3>
                        <button class="mobile-filters-close">✕</button>
                    </div>
                    <div class="mobile-filters-body">
                    </div>
                    <div class="mobile-filters-footer">
                        <div class="mobile-filters-count">
                            <span id="mobileProfilesCount">—</span> профилей
                        </div>
                        <button class="btn btn-primary mobile-filters-apply">Применить</button>
                    </div>
                </div>
            `;
            
            modal.querySelector('.mobile-filters-body').appendChild(filtersContent);
            
            // Копируем счетчик профилей
            const profilesCount = document.querySelector('.profiles-count');
            if (profilesCount) {
                modal.querySelector('#mobileProfilesCount').textContent = profilesCount.textContent;
            }
            
            // Кнопка "Применить" закрывает модальное окно
            modal.querySelector('.mobile-filters-apply').addEventListener('click', closeFilters);
            document.body.appendChild(modal);
            
            // Обработчик закрытия
            modal.querySelector('.mobile-filters-close').addEventListener('click', closeFilters);
            modal.addEventListener('click', (e) => {
                if (e.target === modal) closeFilters();
            });
            
            // Синхронизация фильтров с оригиналом
            syncFilters(filtersContent, filtersBlock);
        }
        
        // Показываем модальное окно
        setTimeout(() => modal.classList.add('active'), 10);
    };
    
    /**
     * Закрыть модальное окно с фильтрами
     */
    const closeFilters = () => {
        const modal = document.querySelector('.mobile-filters-modal');
        if (modal) {
            modal.classList.remove('active');
        }
    };
    
    /**
     * Синхронизировать фильтры в модальном окне с основными
     */
    const syncFilters = (clonedFilters, originalFilters) => {
        // Функция обновления счетчика
        const updateCount = () => {
            const profilesCount = document.querySelector('.profiles-count');
            const mobileCount = document.querySelector('#mobileProfilesCount');
            if (profilesCount && mobileCount) {
                setTimeout(() => {
                    mobileCount.textContent = profilesCount.textContent;
                }, 100);
            }
        };
        
        // Синхронизация поиска
        const clonedSearch = clonedFilters.querySelector('#searchInput');
        const originalSearch = originalFilters.querySelector('#searchInput');
        if (clonedSearch && originalSearch) {
            clonedSearch.value = originalSearch.value;
            clonedSearch.addEventListener('input', (e) => {
                originalSearch.value = e.target.value;
                originalSearch.dispatchEvent(new Event('input', { bubbles: true }));
                updateCount();
            });
        }
        
        // Синхронизация селектов
        const clonedSelects = clonedFilters.querySelectorAll('select');
        const originalSelects = originalFilters.querySelectorAll('select');
        clonedSelects.forEach((select, index) => {
            if (originalSelects[index]) {
                select.value = originalSelects[index].value;
                select.addEventListener('change', (e) => {
                    originalSelects[index].value = e.target.value;
                    originalSelects[index].dispatchEvent(new Event('change', { bubbles: true }));
                    updateCount();
                });
            }
        });
        
        // Синхронизация кнопок фильтра (Все/Только мои)
        const clonedFilterBtns = clonedFilters.querySelectorAll('.user-filter-btn');
        const originalFilterBtns = originalFilters.querySelectorAll('.user-filter-btn');
        clonedFilterBtns.forEach((btn, index) => {
            if (originalFilterBtns[index]) {
                // Копируем активное состояние
                if (originalFilterBtns[index].classList.contains('active')) {
                    btn.classList.add('active');
                }
                
                btn.addEventListener('click', () => {
                    // Снимаем активность со всех клонированных кнопок
                    clonedFilterBtns.forEach(b => b.classList.remove('active'));
                    btn.classList.add('active');
                    
                    // Клик на оригинальную кнопку
                    originalFilterBtns[index].click();
                    updateCount();
                });
            }
        });
    };
    
    // ==================== ADD PROFILE ====================
    
    const handleAddProfile = () => {
        // Проверяем авторизацию
        if (window.firebase?.auth && !firebase.auth().currentUser) {
            showAuthRequired();
            return;
        }
        
        // Открываем форму создания профиля
        const modal = document.createElement('div');
        modal.className = 'modal';
        modal.style.display = 'flex';
        modal.innerHTML = `
            <div class="modal-content">
                <div class="modal-handle"></div>
                <div class="modal-header">
                    <h2>➕ Новый профиль</h2>
                    <button class="modal-close">✕</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Название профиля *</label>
                        <input type="text" id="profileName" placeholder="Томат, вегетация" required>
                    </div>
                    <div class="form-group">
                        <label>Описание</label>
                        <textarea id="profileDescription" rows="3" placeholder="Краткое описание профиля раствора"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Культура</label>
                        <select id="profileCulture">
                            <option value="">Выберите культуру</option>
                            <option value="Томат">🍅 Томат</option>
                            <option value="Огурец">🥒 Огурец</option>
                            <option value="Перец">🌶️ Перец</option>
                            <option value="Салат">🥬 Салат</option>
                            <option value="Клубника">🍓 Клубника</option>
                            <option value="Зелень">🌿 Зелень</option>
                            <option value="Другое">🌱 Другое</option>
                        </select>
                    </div>
                    <button class="btn btn-primary" id="createProfileBtn" style="width: 100%; margin-top: 15px;">
                        Создать профиль
                    </button>
                </div>
            </div>
        `;
        
        document.body.appendChild(modal);
        
        // Закрытие
        modal.querySelector('.modal-close').addEventListener('click', () => modal.remove());
        modal.addEventListener('click', (e) => {
            if (e.target === modal) modal.remove();
        });
        
        // Создание профиля
        modal.querySelector('#createProfileBtn').addEventListener('click', async () => {
            const name = modal.querySelector('#profileName').value.trim();
            const description = modal.querySelector('#profileDescription').value.trim();
            const culture = modal.querySelector('#profileCulture').value;
            
            if (!name) {
                alert('Укажите название профиля');
                return;
            }
            
            // Здесь должна быть логика создания профиля
            // Используем функции из index.html если они доступны
            if (typeof window.openProfileEditor === 'function') {
                modal.remove();
                window.openProfileEditor();
            } else {
                alert('Функция создания профиля временно недоступна');
            }
        });
    };
    
    // ==================== NOTIFICATIONS ====================
    
    const openNotifications = () => {
        const modal = document.createElement('div');
        modal.className = 'modal';
        modal.style.display = 'flex';
        modal.innerHTML = `
            <div class="modal-content">
                <div class="modal-handle"></div>
                <div class="modal-header">
                    <h2>🔔 Уведомления</h2>
                    <button class="modal-close">✕</button>
                </div>
                <div class="modal-body">
                    <div id="notificationsList" style="min-height: 200px;">
                        <p style="text-align: center; color: #999; padding: 60px 20px;">
                            Пока нет уведомлений
                        </p>
                    </div>
                </div>
            </div>
        `;
        
        document.body.appendChild(modal);
        
        modal.querySelector('.modal-close').addEventListener('click', () => modal.remove());
        modal.addEventListener('click', (e) => {
            if (e.target === modal) modal.remove();
        });
        
        // Загружаем уведомления
        loadNotifications(modal.querySelector('#notificationsList'));
    };
    
    const loadNotifications = async (container) => {
        // Здесь должна быть логика загрузки уведомлений из Firebase
        // Пока показываем заглушку
        container.innerHTML = `
            <div style="text-align: center; padding: 40px 20px; color: #999;">
                <div style="font-size: 48px; margin-bottom: 15px;">🔕</div>
                <div style="font-size: 16px; font-weight: 600; margin-bottom: 8px;">Нет новых уведомлений</div>
                <div style="font-size: 14px;">Здесь будут отображаться лайки, комментарии и другие активности</div>
            </div>
        `;
    };
    
    // ==================== PROFILE MENU ====================
    
    const openProfileMenu = () => {
        const user = window.firebase?.auth?.()?.currentUser;
        
        const modal = document.createElement('div');
        modal.className = 'modal';
        modal.style.display = 'flex';
        modal.innerHTML = `
            <div class="modal-content">
                <div class="modal-handle"></div>
                <div class="modal-header">
                    <h2>👤 Профиль</h2>
                    <button class="modal-close">✕</button>
                </div>
                <div class="modal-body">
                    ${user ? `
                        <div style="text-align: center; padding: 20px; border-bottom: 1px solid #e0e0e0; margin-bottom: 15px;">
                            <div style="width: 80px; height: 80px; border-radius: 50%; background: linear-gradient(135deg, #667eea, #764ba2); margin: 0 auto 15px; display: flex; align-items: center; justify-content: center; color: white; font-size: 36px; font-weight: 600;">
                                ${user.displayName?.charAt(0).toUpperCase() || '👤'}
                            </div>
                            <div style="font-size: 18px; font-weight: 600; margin-bottom: 4px;">${user.displayName || 'Пользователь'}</div>
                            <div style="font-size: 14px; color: #999;">${user.email || ''}</div>
                        </div>
                        <div class="menu-items">
                            <button class="menu-item" data-action="my-profiles">
                                <span>📁</span> Мои профили
                            </button>
                            <button class="menu-item" data-action="my-gallery">
                                <span>📸</span> Моя галерея
                            </button>
                            <button class="menu-item" data-action="settings">
                                <span>⚙️</span> Настройки
                            </button>
                            <button class="menu-item" data-action="help">
                                <span>❓</span> Помощь
                            </button>
                            <button class="menu-item" data-action="logout" style="color: #e74c3c;">
                                <span>🚪</span> Выйти
                            </button>
                        </div>
                    ` : `
                        <div style="text-align: center; padding: 40px 20px;">
                            <div style="font-size: 64px; margin-bottom: 20px;">🔒</div>
                            <div style="font-size: 18px; font-weight: 600; margin-bottom: 12px;">Войдите в систему</div>
                            <div style="font-size: 14px; color: #666; margin-bottom: 20px;">
                                Чтобы создавать профили, комментировать и ставить лайки
                            </div>
                            <button class="btn btn-primary" id="loginBtn" style="width: 100%;">
                                Войти через Google
                            </button>
                        </div>
                    `}
                </div>
            </div>
        `;
        
        document.body.appendChild(modal);
        
        modal.querySelector('.modal-close').addEventListener('click', () => modal.remove());
        modal.addEventListener('click', (e) => {
            if (e.target === modal) modal.remove();
        });
        
        // Обработчики меню
        modal.querySelectorAll('.menu-item').forEach(item => {
            item.addEventListener('click', () => {
                const action = item.dataset.action;
                handleMenuAction(action);
                modal.remove();
            });
        });
        
        // Обработчик входа
        modal.querySelector('#loginBtn')?.addEventListener('click', () => {
            if (typeof handleGoogleSignIn === 'function') {
                handleGoogleSignIn();
                modal.remove();
            }
        });
    };
    
    const handleMenuAction = (action) => {
        switch (action) {
            case 'my-profiles':
                window.location.href = 'index.html?my=true';
                break;
            case 'my-gallery':
                window.location.href = 'gallery.html';
                break;
            case 'settings':
                showSettings();
                break;
            case 'help':
                showHelp();
                break;
            case 'logout':
                if (confirm('Выйти из системы?')) {
                    window.firebase?.auth?.()?.signOut();
                }
                break;
        }
    };
    
    // ==================== SETTINGS ====================
    
    const showSettings = () => {
        alert('Настройки в разработке');
    };
    
    const showHelp = () => {
        const modal = document.createElement('div');
        modal.className = 'modal';
        modal.style.display = 'flex';
        modal.innerHTML = `
            <div class="modal-content">
                <div class="modal-handle"></div>
                <div class="modal-header">
                    <h2>❓ Помощь</h2>
                    <button class="modal-close">✕</button>
                </div>
                <div class="modal-body">
                    <h3 style="font-size: 16px; margin-bottom: 10px;">📱 Жесты</h3>
                    <ul style="padding-left: 20px; margin-bottom: 20px; line-height: 1.8;">
                        <li>Свайп влево/вправо - переключение фото</li>
                        <li>Свайп вниз - закрыть просмотр</li>
                        <li>Двойной тап - сброс зума</li>
                        <li>Pinch - увеличить/уменьшить</li>
                    </ul>
                    
                    <h3 style="font-size: 16px; margin-bottom: 10px;">💡 Советы</h3>
                    <ul style="padding-left: 20px; margin-bottom: 20px; line-height: 1.8;">
                        <li>Создавайте профили растворов</li>
                        <li>Ведите журнал выращивания</li>
                        <li>Загружайте фото прогресса</li>
                        <li>Делитесь опытом в комментариях</li>
                    </ul>
                    
                    <h3 style="font-size: 16px; margin-bottom: 10px;">🔗 Полезные ссылки</h3>
                    <a href="https://github.com/vasilecampeanu/wega-hpg" target="_blank" class="btn btn-secondary" style="width: 100%; margin-bottom: 10px;">
                        GitHub проекта
                    </a>
                </div>
            </div>
        `;
        
        document.body.appendChild(modal);
        
        modal.querySelector('.modal-close').addEventListener('click', () => modal.remove());
        modal.addEventListener('click', (e) => {
            if (e.target === modal) modal.remove();
        });
    };
    
    // ==================== UTILITY ====================
    
    const showAuthRequired = () => {
        if (confirm('Требуется авторизация. Войти сейчас?')) {
            if (typeof handleGoogleSignIn === 'function') {
                handleGoogleSignIn();
            }
        }
    };
    
    // ==================== INITIALIZATION ====================
    
    const init = () => {
        console.log('📱 Initializing mobile UI');
        
        // createBottomNav(); // ОТКЛЮЧЕНО - нижняя навигация не нужна
        optimizeHeader();
        
        // Оптимизируем формы для мобильного
        optimizeForms();
        
        // Добавляем CSS для меню
        addMenuStyles();
        
        // Следим за изменениями в header (для динамически добавляемых кнопок)
        observeHeaderChanges();
        
        // Блокируем скролл body при открытии модальных окон
        setupModalScrollLock();
    };
    
    /**
     * Наблюдать за изменениями в header
     */
    const observeHeaderChanges = () => {
        const headerActions = document.querySelector('.header-actions');
        if (!headerActions) return;
        
        const observer = new MutationObserver(() => {
            // Переоптимизируем кнопки при изменениях
            optimizeHeaderButtons();
        });
        
        observer.observe(headerActions, {
            childList: true,
            subtree: true,
            characterData: true
        });
    };
    
    /**
     * Блокировка скролла body при открытии модальных окон
     */
    const setupModalScrollLock = () => {
        // Наблюдаем за добавлением модальных окон
        const observer = new MutationObserver((mutations) => {
            mutations.forEach((mutation) => {
                mutation.addedNodes.forEach((node) => {
                    if (node.nodeType === 1 && node.classList && node.classList.contains('modal')) {
                        // Модальное окно добавлено - блокируем скролл body
                        lockBodyScroll();
                        
                        // Следим за удалением модального окна
                        const modalObserver = new MutationObserver(() => {
                            if (!document.body.contains(node)) {
                                unlockBodyScroll();
                                modalObserver.disconnect();
                            }
                        });
                        
                        modalObserver.observe(document.body, {
                            childList: true,
                            subtree: true
                        });
                    }
                });
            });
        });
        
        observer.observe(document.body, {
            childList: true,
            subtree: false
        });
    };
    
    /**
     * Заблокировать скролл body
     */
    const lockBodyScroll = () => {
        const scrollbarWidth = window.innerWidth - document.documentElement.clientWidth;
        document.body.style.overflow = 'hidden';
        document.body.style.paddingRight = scrollbarWidth + 'px';
        document.body.style.position = 'fixed';
        document.body.style.width = '100%';
        document.body.style.top = `-${window.scrollY}px`;
    };
    
    /**
     * Разблокировать скролл body
     */
    const unlockBodyScroll = () => {
        const scrollY = document.body.style.top;
        document.body.style.overflow = '';
        document.body.style.paddingRight = '';
        document.body.style.position = '';
        document.body.style.width = '';
        document.body.style.top = '';
        window.scrollTo(0, parseInt(scrollY || '0') * -1);
    };
    
    const optimizeForms = () => {
        // Предотвращаем zoom при фокусе на input
        const inputs = document.querySelectorAll('input, textarea, select');
        inputs.forEach(input => {
            if (!input.style.fontSize || parseInt(input.style.fontSize) < 16) {
                input.style.fontSize = '16px';
            }
        });
    };
    
    const addMenuStyles = () => {
        if (document.getElementById('mobile-menu-styles')) return;
        
        const style = document.createElement('style');
        style.id = 'mobile-menu-styles';
        style.textContent = `
            .menu-items {
                display: flex;
                flex-direction: column;
                gap: 8px;
            }
            
            .menu-item {
                display: flex;
                align-items: center;
                gap: 12px;
                padding: 14px 16px;
                background: #f9f9f9;
                border: none;
                border-radius: 12px;
                font-size: 15px;
                font-weight: 500;
                color: #333;
                cursor: pointer;
                transition: all 0.2s;
                text-align: left;
                width: 100%;
            }
            
            .menu-item:active {
                transform: scale(0.98);
                background: #f0f0f0;
            }
            
            .menu-item span {
                font-size: 20px;
            }
        `;
        document.head.appendChild(style);
    };
    
    // Экспорт API
    window.HPGMobileUI = {
        createBottomNav,
        optimizeHeader,
        openFilters,
        closeFilters,
        openNotifications,
        openProfileMenu,
        showHelp
    };
    
    // Автоинициализация
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init);
    } else {
        init();
    }
    
    // Инициализация при готовности мобильного режима
    window.addEventListener('mobileReady', init);
    
})();


// Переключатель между библиотекой и активностью
function initViewToggle() {
    const isMobile = document.body.classList.contains('mobile-mode');
    if (!isMobile) return;
    
    const mainLayout = document.querySelector('.main-layout');
    if (!mainLayout) return;
    
    const activityFeed = mainLayout.querySelector('.activity-feed');
    const mainContent = mainLayout.querySelector('.main-content');
    if (!activityFeed || !mainContent) return;
    
    // Создаем кнопки
    const toggle = document.createElement('div');
    toggle.className = 'mobile-view-toggle';
    toggle.innerHTML = `
        <button class="mobile-view-toggle-btn active" data-view="library">
            📚 Библиотека
        </button>
        <button class="mobile-view-toggle-btn" data-view="activity">
            📰 Активность
        </button>
    `;
    
    document.body.appendChild(toggle);
    
    // Обработчики
    toggle.querySelectorAll('.mobile-view-toggle-btn').forEach(btn => {
        btn.addEventListener('click', () => {
            const view = btn.dataset.view;
            
            // Обновляем кнопки
            toggle.querySelectorAll('.mobile-view-toggle-btn').forEach(b => {
                b.classList.toggle('active', b === btn);
            });
            
            // Переключаем видимость
            if (view === 'activity') {
                activityFeed.classList.add('mobile-view-active');
                mainContent.classList.add('mobile-view-hidden');
            } else {
                activityFeed.classList.remove('mobile-view-active');
                mainContent.classList.remove('mobile-view-hidden');
            }
        });
    });
}

// Добавляем в инициализацию
window.addEventListener('mobileReady', () => {
    setTimeout(initViewToggle, 100);
});

// Также инициализируем при загрузке если мобильный режим уже активен
if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', () => {
        setTimeout(initViewToggle, 500);
    });
} else {
    setTimeout(initViewToggle, 500);
}
