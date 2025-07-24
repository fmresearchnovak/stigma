.class public Lorg/telegram/messenger/MessagesController;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"

.method public getSendPaidMessagesStars(J)J
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-wide p1, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->send_paid_messages_stars:J

    return-wide p1

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_4

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide p1

    return-wide p1

    :cond_2
    cmp-long v2, p1, v0

    if-gez v2, :cond_4

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-wide v0

    :cond_3
    if-eqz p1, :cond_4

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    return-wide p1

    :cond_4
    return-wide v0
.end method

.method public getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->fullUsers:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$UserFull;

    return-object p1
.end method

.method public isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(JZ)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p1

    return-object p1
.end method

.method public isUserContactBlocked(JZ)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;
    .locals 6

    .line 0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->cachedIsUserContactBlocked:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->contact_require_premium:Z

    if-nez v2, :cond_2

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->send_paid_messages_stars:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getRequirementToContact(Lorg/telegram/tgnet/TLRPC$UserFull;)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    if-eqz p3, :cond_5

    return-object v1

    :cond_5
    iget-object p3, p0, Lorg/telegram/messenger/MessagesController;->loadingIsUserContactBlocked:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController;->requestIsUserContactBlockedRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/messenger/MessagesController;->requestIsUserContactBlockedRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3c

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_6
    :goto_0
    return-object v1
.end method

.method public getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->chats:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method public getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 5

    .line 0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController;->users:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    return-object p1
.end method

.method public getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;
    .locals 0

    .line 0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    return-object p1
.end method