// Social Actions Module for HPG Community
// Лайки, комментарии, шеринг для профилей и фото
// Переиспользует Firebase из основного приложения

(function() {
    'use strict';
    
    // Ожидание инициализации Firebase
    const waitForFirebase = () => {
        return new Promise((resolve) => {
            if (window.firebase && window.firebase.auth && window.firebase.firestore) {
                resolve({
                    auth: firebase.auth(),
                    db: firebase.firestore()
                });
            } else {
                const checkInterval = setInterval(() => {
                    if (window.firebase && window.firebase.auth && window.firebase.firestore) {
                        clearInterval(checkInterval);
                        resolve({
                            auth: firebase.auth(),
                            db: firebase.firestore()
                        });
                    }
                }, 100);
            }
        });
    };
    
    let auth, db, currentUser;
    
    // ==================== LIKES ====================
    
    /**
     * Поставить/убрать лайк профилю
     * @param {string} profileId - ID профиля
     * @returns {Promise<boolean>} - true если лайк поставлен, false если убран
     */
    const toggleLike = async (profileId) => {
        if (!currentUser) {
            showAuthRequired();
            return false;
        }
        
        try {
            const profileRef = db.collection('profiles').doc(profileId);
            const likesRef = profileRef.collection('likes').doc(currentUser.uid);
            
            const likeDoc = await likesRef.get();
            
            if (likeDoc.exists) {
                // Убираем лайк
                await likesRef.delete();
                await profileRef.update({
                    likesCount: firebase.firestore.FieldValue.increment(-1)
                });
                
                // Тактильная обратная связь
                if (navigator.vibrate) navigator.vibrate(10);
                
                return false;
            } else {
                // Ставим лайк
                await likesRef.set({
                    userId: currentUser.uid,
                    userName: currentUser.displayName || 'Аноним',
                    timestamp: firebase.firestore.FieldValue.serverTimestamp()
                });
                
                await profileRef.update({
                    likesCount: firebase.firestore.FieldValue.increment(1)
                });
                
                // Тактильная обратная связь
                if (navigator.vibrate) navigator.vibrate([10, 50, 10]);
                
                // Создаем активность
                createActivity({
                    type: 'like',
                    userId: currentUser.uid,
                    userName: currentUser.displayName || 'Аноним',
                    profileId: profileId,
                    timestamp: firebase.firestore.FieldValue.serverTimestamp()
                });
                
                return true;
            }
        } catch (error) {
            console.error('Error toggling like:', error);
            showError('Ошибка при обработке лайка');
            return false;
        }
    };
    
    /**
     * Проверить, лайкнут ли профиль текущим пользователем
     * @param {string} profileId - ID профиля
     * @returns {Promise<boolean>}
     */
    const isLiked = async (profileId) => {
        if (!currentUser) return false;
        
        try {
            const likeDoc = await db.collection('profiles')
                .doc(profileId)
                .collection('likes')
                .doc(currentUser.uid)
                .get();
            
            return likeDoc.exists;
        } catch (error) {
            console.error('Error checking like:', error);
            return false;
        }
    };
    
    /**
     * Получить количество лайков профиля
     * @param {string} profileId - ID профиля
     * @returns {Promise<number>}
     */
    const getLikesCount = async (profileId) => {
        try {
            const profileDoc = await db.collection('profiles').doc(profileId).get();
            return profileDoc.data()?.likesCount || 0;
        } catch (error) {
            console.error('Error getting likes count:', error);
            return 0;
        }
    };
    
    // ==================== COMMENTS ====================
    
    /**
     * Добавить комментарий к профилю
     * @param {string} profileId - ID профиля
     * @param {string} text - Текст комментария
     * @returns {Promise<object>} - Добавленный комментарий
     */
    const addComment = async (profileId, text) => {
        if (!currentUser) {
            showAuthRequired();
            return null;
        }
        
        if (!text || text.trim().length === 0) {
            showError('Комментарий не может быть пустым');
            return null;
        }
        
        try {
            const commentData = {
                userId: currentUser.uid,
                userName: currentUser.displayName || 'Аноним',
                userPhoto: currentUser.photoURL || null,
                text: text.trim(),
                timestamp: firebase.firestore.FieldValue.serverTimestamp(),
                likes: 0
            };
            
            const commentRef = await db.collection('profiles')
                .doc(profileId)
                .collection('comments')
                .add(commentData);
            
            // Обновляем счетчик комментариев
            await db.collection('profiles').doc(profileId).update({
                commentsCount: firebase.firestore.FieldValue.increment(1)
            });
            
            // Создаем активность
            createActivity({
                type: 'comment',
                userId: currentUser.uid,
                userName: currentUser.displayName || 'Аноним',
                profileId: profileId,
                commentText: text.trim().substring(0, 100),
                timestamp: firebase.firestore.FieldValue.serverTimestamp()
            });
            
            return {
                id: commentRef.id,
                ...commentData
            };
        } catch (error) {
            console.error('Error adding comment:', error);
            showError('Ошибка при добавлении комментария');
            return null;
        }
    };
    
    /**
     * Получить комментарии профиля
     * @param {string} profileId - ID профиля
     * @param {number} limit - Лимит комментариев
     * @returns {Promise<Array>}
     */
    const getComments = async (profileId, limit = 20) => {
        try {
            const snapshot = await db.collection('profiles')
                .doc(profileId)
                .collection('comments')
                .orderBy('timestamp', 'desc')
                .limit(limit)
                .get();
            
            const comments = [];
            snapshot.forEach(doc => {
                comments.push({
                    id: doc.id,
                    ...doc.data()
                });
            });
            
            return comments;
        } catch (error) {
            console.error('Error getting comments:', error);
            return [];
        }
    };
    
    /**
     * Удалить комментарий (только свой)
     * @param {string} profileId - ID профиля
     * @param {string} commentId - ID комментария
     * @returns {Promise<boolean>}
     */
    const deleteComment = async (profileId, commentId) => {
        if (!currentUser) return false;
        
        try {
            const commentRef = db.collection('profiles')
                .doc(profileId)
                .collection('comments')
                .doc(commentId);
            
            const commentDoc = await commentRef.get();
            
            if (!commentDoc.exists) {
                showError('Комментарий не найден');
                return false;
            }
            
            // Проверяем, что это комментарий текущего пользователя
            if (commentDoc.data().userId !== currentUser.uid) {
                showError('Вы можете удалять только свои комментарии');
                return false;
            }
            
            await commentRef.delete();
            
            // Обновляем счетчик
            await db.collection('profiles').doc(profileId).update({
                commentsCount: firebase.firestore.FieldValue.increment(-1)
            });
            
            return true;
        } catch (error) {
            console.error('Error deleting comment:', error);
            showError('Ошибка при удалении комментария');
            return false;
        }
    };
    
    // ==================== SHARING ====================
    
    /**
     * Поделиться профилем
     * @param {string} profileId - ID профиля
     * @param {string} profileName - Название профиля
     */
    const shareProfile = async (profileId, profileName) => {
        const url = `${window.location.origin}/portal/index.html?profile=${profileId}`;
        const text = `Профиль раствора: ${profileName} | HPG Community`;
        
        if (navigator.share) {
            try {
                await navigator.share({
                    title: text,
                    text: text,
                    url: url
                });
                
                // Записываем шейр
                if (currentUser) {
                    createActivity({
                        type: 'share',
                        userId: currentUser.uid,
                        userName: currentUser.displayName || 'Аноним',
                        profileId: profileId,
                        timestamp: firebase.firestore.FieldValue.serverTimestamp()
                    });
                }
            } catch (error) {
                if (error.name !== 'AbortError') {
                    console.error('Error sharing:', error);
                }
            }
        } else {
            // Fallback - копируем в буфер обмена
            try {
                await navigator.clipboard.writeText(url);
                showSuccess('Ссылка скопирована в буфер обмена');
            } catch (error) {
                console.error('Error copying to clipboard:', error);
                showError('Не удалось скопировать ссылку');
            }
        }
    };
    
    /**
     * Поделиться фото
     * @param {string} photoUrl - URL фото
     * @param {string} profileId - ID профиля
     */
    const sharePhoto = async (photoUrl, profileId) => {
        const url = `${window.location.origin}/portal/gallery.html?profile=${profileId}&photo=${encodeURIComponent(photoUrl)}`;
        const text = `Фото из галереи HPG Community`;
        
        if (navigator.share) {
            try {
                await navigator.share({
                    title: text,
                    text: text,
                    url: url
                });
            } catch (error) {
                if (error.name !== 'AbortError') {
                    console.error('Error sharing photo:', error);
                }
            }
        } else {
            try {
                await navigator.clipboard.writeText(url);
                showSuccess('Ссылка на фото скопирована');
            } catch (error) {
                console.error('Error copying to clipboard:', error);
                showError('Не удалось скопировать ссылку');
            }
        }
    };
    
    // ==================== ACTIVITIES ====================
    
    /**
     * Создать запись активности
     * @param {object} activityData
     */
    const createActivity = async (activityData) => {
        try {
            await db.collection('activities').add(activityData);
        } catch (error) {
            console.error('Error creating activity:', error);
        }
    };
    
    // ==================== UI HELPERS ====================
    
    /**
     * Добавить панель социальных действий к карточке профиля
     * @param {HTMLElement} card - Карточка профиля
     * @param {string} profileId - ID профиля
     * @param {object} profileData - Данные профиля
     */
    const addSocialBar = async (card, profileId, profileData) => {
        // Проверяем, не добавлена ли уже панель
        if (card.querySelector('.mobile-social-bar')) return;
        
        const likesCount = profileData.likesCount || 0;
        const commentsCount = profileData.commentsCount || 0;
        const viewsCount = profileData.views || 0;
        
        const isProfileLiked = await isLiked(profileId);
        
        const socialBar = document.createElement('div');
        socialBar.className = 'mobile-social-bar';
        socialBar.innerHTML = `
            <button class="mobile-social-btn ${isProfileLiked ? 'liked' : ''}" data-action="like" data-profile-id="${profileId}">
                <span class="icon">${isProfileLiked ? '❤️' : '🤍'}</span>
                <span class="count">${likesCount}</span>
            </button>
            <button class="mobile-social-btn" data-action="comment" data-profile-id="${profileId}">
                <span class="icon">💬</span>
                <span class="count">${commentsCount}</span>
            </button>
            <button class="mobile-social-btn" data-action="share" data-profile-id="${profileId}" data-profile-name="${escapeHtml(profileData.name)}">
                <span class="icon">📤</span>
            </button>
            <button class="mobile-social-btn">
                <span class="icon">👁️</span>
                <span class="count">${viewsCount}</span>
            </button>
        `;
        
        // Добавляем обработчики
        const likeBtn = socialBar.querySelector('[data-action="like"]');
        likeBtn.addEventListener('click', async (e) => {
            e.stopPropagation();
            const btn = e.currentTarget;
            const liked = await toggleLike(profileId);
            
            btn.classList.toggle('liked', liked);
            btn.querySelector('.icon').textContent = liked ? '❤️' : '🤍';
            
            const countSpan = btn.querySelector('.count');
            const currentCount = parseInt(countSpan.textContent);
            countSpan.textContent = liked ? currentCount + 1 : currentCount - 1;
        });
        
        const commentBtn = socialBar.querySelector('[data-action="comment"]');
        commentBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            openCommentsModal(profileId, profileData.name);
        });
        
        const shareBtn = socialBar.querySelector('[data-action="share"]');
        shareBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            shareProfile(profileId, profileData.name);
        });
        
        card.appendChild(socialBar);
    };
    
    /**
     * Открыть модальное окно комментариев
     * @param {string} profileId - ID профиля
     * @param {string} profileName - Название профиля
     */
    const openCommentsModal = async (profileId, profileName) => {
        const comments = await getComments(profileId);
        
        const modal = document.createElement('div');
        modal.className = 'modal';
        modal.style.display = 'flex';
        modal.innerHTML = `
            <div class="modal-content">
                <div class="modal-handle"></div>
                <div class="modal-header">
                    <h2>💬 Комментарии</h2>
                    <button class="modal-close">✕</button>
                </div>
                <div class="modal-body" id="commentsBody">
                    ${comments.length === 0 ? '<p style="text-align: center; color: #999; padding: 40px 20px;">Пока нет комментариев</p>' : ''}
                    <div id="commentsList">
                        ${comments.map(comment => renderComment(comment, profileId)).join('')}
                    </div>
                </div>
                <div style="padding: 15px; border-top: 1px solid #e0e0e0;">
                    <div style="display: flex; gap: 10px;">
                        <input type="text" id="commentInput" placeholder="Написать комментарий..." 
                               style="flex: 1; padding: 12px; border: 2px solid #e0e0e0; border-radius: 20px; font-size: 16px;">
                        <button id="sendCommentBtn" class="btn btn-primary" style="border-radius: 50%; width: 44px; height: 44px; padding: 0;">
                            ➤
                        </button>
                    </div>
                </div>
            </div>
        `;
        
        document.body.appendChild(modal);
        
        // Закрытие модального окна
        modal.querySelector('.modal-close').addEventListener('click', () => {
            modal.remove();
        });
        
        modal.addEventListener('click', (e) => {
            if (e.target === modal) {
                modal.remove();
            }
        });
        
        // Отправка комментария
        const sendComment = async () => {
            const input = modal.querySelector('#commentInput');
            const text = input.value.trim();
            
            if (text) {
                const comment = await addComment(profileId, text);
                if (comment) {
                    const commentsList = modal.querySelector('#commentsList');
                    commentsList.insertAdjacentHTML('afterbegin', renderComment(comment, profileId));
                    input.value = '';
                    
                    // Обновляем счетчик в карточке
                    const card = document.querySelector(`[data-profile-id="${profileId}"]`)?.closest('.profile-card');
                    if (card) {
                        const commentBtn = card.querySelector('[data-action="comment"]');
                        if (commentBtn) {
                            const countSpan = commentBtn.querySelector('.count');
                            countSpan.textContent = parseInt(countSpan.textContent) + 1;
                        }
                    }
                }
            }
        };
        
        modal.querySelector('#sendCommentBtn').addEventListener('click', sendComment);
        modal.querySelector('#commentInput').addEventListener('keypress', (e) => {
            if (e.key === 'Enter') {
                sendComment();
            }
        });
    };
    
    /**
     * Рендер комментария
     * @param {object} comment - Данные комментария
     * @param {string} profileId - ID профиля
     * @returns {string} HTML комментария
     */
    const renderComment = (comment, profileId) => {
        const date = comment.timestamp?.toDate?.() || new Date();
        const timeAgo = getTimeAgo(date);
        const isOwn = currentUser && comment.userId === currentUser.uid;
        
        return `
            <div class="comment-item" data-comment-id="${comment.id}" style="padding: 12px; margin-bottom: 10px; background: #f9f9f9; border-radius: 12px;">
                <div style="display: flex; gap: 10px; margin-bottom: 8px;">
                    <div style="width: 36px; height: 36px; border-radius: 50%; background: linear-gradient(135deg, #667eea, #764ba2); display: flex; align-items: center; justify-content: center; color: white; font-weight: 600;">
                        ${comment.userName.charAt(0).toUpperCase()}
                    </div>
                    <div style="flex: 1;">
                        <div style="font-weight: 600; font-size: 14px; color: #333;">${escapeHtml(comment.userName)}</div>
                        <div style="font-size: 12px; color: #999;">${timeAgo}</div>
                    </div>
                    ${isOwn ? `<button class="delete-comment-btn" data-comment-id="${comment.id}" data-profile-id="${profileId}" style="background: none; border: none; color: #999; font-size: 18px; cursor: pointer;">🗑️</button>` : ''}
                </div>
                <div style="font-size: 14px; line-height: 1.5; color: #333;">${escapeHtml(comment.text)}</div>
            </div>
        `;
    };
    
    // ==================== UTILITY FUNCTIONS ====================
    
    const escapeHtml = (text) => {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
    };
    
    const getTimeAgo = (date) => {
        const seconds = Math.floor((new Date() - date) / 1000);
        
        if (seconds < 60) return 'только что';
        const minutes = Math.floor(seconds / 60);
        if (minutes < 60) return `${minutes} мин назад`;
        const hours = Math.floor(minutes / 60);
        if (hours < 24) return `${hours} ч назад`;
        const days = Math.floor(hours / 24);
        if (days < 7) return `${days} дн назад`;
        return date.toLocaleDateString('ru-RU');
    };
    
    const showAuthRequired = () => {
        if (typeof showCustomAlert === 'function') {
            showCustomAlert('Требуется авторизация', 'Войдите, чтобы использовать социальные функции');
        } else {
            alert('Требуется авторизация');
        }
    };
    
    const showError = (message) => {
        if (typeof showCustomAlert === 'function') {
            showCustomAlert('Ошибка', message);
        } else {
            alert(message);
        }
    };
    
    const showSuccess = (message) => {
        if (typeof showCustomAlert === 'function') {
            showCustomAlert('Успешно', message);
        } else {
            alert(message);
        }
    };
    
    // ==================== INITIALIZATION ====================
    
    const init = async () => {
        console.log('💬 Initializing social actions module');
        
        const firebase = await waitForFirebase();
        auth = firebase.auth;
        db = firebase.db;
        
        // Отслеживаем авторизацию
        auth.onAuthStateChanged(user => {
            currentUser = user;
        });
        
        // Добавляем социальные панели к существующим карточкам
        const addSocialBarsToCards = async () => {
            const cards = document.querySelectorAll('.profile-card');
            cards.forEach(async (card) => {
                const profileId = card.dataset.profileId;
                if (profileId && !card.querySelector('.mobile-social-bar')) {
                    // Получаем данные профиля из карточки или из базы
                    const profileData = {
                        name: card.querySelector('.profile-title')?.textContent || 'Профиль',
                        likesCount: 0,
                        commentsCount: 0,
                        views: 0
                    };
                    await addSocialBar(card, profileId, profileData);
                }
            });
        };
        
        // Добавляем социальные панели после загрузки контента
        setTimeout(addSocialBarsToCards, 1000);
        
        // Наблюдаем за новыми карточками
        const observer = new MutationObserver(addSocialBarsToCards);
        observer.observe(document.body, {
            childList: true,
            subtree: true
        });
        
        // Обработчик удаления комментариев
        document.addEventListener('click', async (e) => {
            if (e.target.classList.contains('delete-comment-btn')) {
                const commentId = e.target.dataset.commentId;
                const profileId = e.target.dataset.profileId;
                
                if (confirm('Удалить комментарий?')) {
                    const success = await deleteComment(profileId, commentId);
                    if (success) {
                        e.target.closest('.comment-item').remove();
                    }
                }
            }
        });
    };
    
    // Экспорт API
    window.HPGSocial = {
        toggleLike,
        isLiked,
        getLikesCount,
        addComment,
        getComments,
        deleteComment,
        shareProfile,
        sharePhoto,
        addSocialBar,
        openCommentsModal
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
