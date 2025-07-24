.class public Lorg/telegram/messenger/SendMessagesHelper;
.super Lorg/telegram/messenger/BaseController;
.source "SourceFile"

.method public sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V
    .locals 114

    .line 0
    move-object/from16 v11, p0

    move-object/from16 v1, p1

    const-string v2, "forceDocument"

    const-string v3, "answers"

    const-string v4, "masks"

    const-string v5, "silent_"

    const-string v6, "BEGIN:VCARD"

    const-string v8, "originalPath"

    const-string v9, "fwd_id"

    const-string v13, "groupId"

    const-string v14, "bot"

    const-string v15, "http"

    move-object/from16 v16, v4

    const/high16 v17, 0x40000

    const-string v7, "bot_name"

    iget-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->message:Ljava/lang/String;

    iget-object v12, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->caption:Ljava/lang/String;

    iget-object v10, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v23, v2

    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 v24, v3

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v25, v7

    iget-object v7, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v26, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->document:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object/from16 v28, v3

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->poll:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    move-object/from16 v29, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->invoice:Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    move-object/from16 v31, v5

    move-object/from16 v30, v6

    iget-wide v5, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->peer:J

    move-object/from16 v32, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->path:Ljava/lang/String;

    move-object/from16 v33, v15

    iget-object v15, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToMsg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v34, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToTopMsg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v35, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->webPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v36, v2

    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->mediaWebPage:Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    move-object/from16 v37, v10

    iget-boolean v10, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->searchLinks:Z

    move/from16 v38, v10

    iget-object v10, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->retryMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v39, v3

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    move-object/from16 v40, v2

    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyMarkup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v41, v2

    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->params:Ljava/util/HashMap;

    move-object/from16 v42, v3

    iget-boolean v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->notify:Z

    move/from16 v43, v3

    iget v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->scheduleDate:I

    move/from16 v44, v3

    iget v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->ttl:I

    move/from16 v45, v3

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->parentObject:Ljava/lang/Object;

    move-object/from16 v46, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    move-object/from16 v47, v14

    iget-boolean v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->updateStickersOrder:Z

    move/from16 v48, v14

    iget-boolean v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->hasMediaSpoilers:Z

    move/from16 v49, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v50, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->sendingStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v51, v14

    iget-object v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyQuote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-object/from16 v52, v9

    iget-boolean v9, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->invert_media:Z

    move/from16 v53, v9

    iget-object v9, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut:Ljava/lang/String;

    move-object/from16 v54, v9

    iget v9, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->quick_reply_shortcut_id:I

    move/from16 v56, v9

    move-object/from16 v55, v10

    iget-wide v9, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->stars:J

    move-wide/from16 v57, v9

    if-eqz v7, :cond_0

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-nez v9, :cond_0

    return-void

    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v59, v5, v9

    if-nez v59, :cond_1

    return-void

    :cond_1
    const-string v9, ""

    if-nez v4, :cond_2

    if-nez v12, :cond_2

    move-object v12, v9

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Lorg/telegram/messenger/MessagesController;->getSendPaidMessagesStars(J)J

    move-result-wide v61

    const-wide/16 v59, 0x0

    cmp-long v10, v61, v59

    if-gtz v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Lorg/telegram/messenger/MessagesController;->isUserContactBlocked(J)Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/DialogObject;->getMessagesStarsPrice(Lorg/telegram/tgnet/tl/TL_account$RequirementToContact;)J

    move-result-wide v61

    :cond_3
    move-object/from16 v63, v9

    move-wide/from16 v9, v61

    if-eqz v2, :cond_4

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_4

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    move-object/from16 v62, v13

    move-object/from16 v13, v61

    check-cast v13, Ljava/lang/String;

    move-object/from16 v61, v7

    const-string v7, "0"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    move-object/from16 v64, v12

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v61, v7

    move-object/from16 v62, v13

    :cond_5
    move-object/from16 v64, v12

    const/4 v7, 0x0

    :goto_0
    iget-wide v12, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->payStars:J

    cmp-long v65, v9, v12

    if-eqz v65, :cond_6

    if-nez v7, :cond_6

    iget v2, v11, Lorg/telegram/messenger/BaseController;->currentAccount:I

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v11, v1}, Lorg/telegram/messenger/SendMessagesHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    const/4 v1, 0x1

    invoke-static {v2, v5, v6, v1, v3}, Lorg/telegram/ui/Components/AlertsCreator;->ensurePaidMessageConfirmation(IJILorg/telegram/messenger/Utilities$Callback;)Z

    return-void

    :cond_6
    if-eqz v14, :cond_7

    iget-object v7, v14, Lorg/telegram/ui/ChatActivity$ReplyQuote;->message:Lorg/telegram/messenger/MessageObject;

    if-eqz v7, :cond_7

    if-eqz v15, :cond_7

    move-object v15, v7

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_1

    :cond_8
    const/4 v8, 0x0

    :goto_1
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v12

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    move-object/from16 v66, v8

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v67

    move-wide/from16 v68, v9

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v9

    if-nez v9, :cond_b

    if-eqz v55, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    move-object/from16 v10, v55

    iget-object v2, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v3, v10, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;I)V

    iget-object v1, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v11, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    :cond_a
    return-void

    :cond_b
    move-object/from16 v10, v55

    move-wide/from16 v73, v7

    move-object/from16 v55, v14

    move-object/from16 v67, v15

    const/4 v7, 0x0

    :goto_3
    const-wide/16 v13, 0x0

    const/16 v70, 0x0

    goto :goto_5

    :cond_c
    move-wide/from16 v68, v9

    move-object/from16 v10, v55

    instance-of v9, v12, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    move-object/from16 v55, v14

    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    move-object/from16 v67, v15

    iget-wide v14, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v13, v14, v15}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v13

    iget-boolean v14, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    if-eqz v14, :cond_d

    iget-boolean v15, v9, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    if-eqz v15, :cond_d

    if-eqz v13, :cond_d

    move/from16 v70, v14

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    move-wide/from16 v71, v14

    goto :goto_4

    :cond_d
    move/from16 v70, v14

    const-wide/16 v71, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    move-wide/from16 v73, v7

    const/4 v15, 0x1

    invoke-static {v9, v13, v15}, Lorg/telegram/messenger/ChatObject;->getSendAsPeerId(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;Z)J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v7

    move-wide/from16 v13, v71

    const/4 v9, 0x0

    goto :goto_5

    :cond_e
    move-wide/from16 v73, v7

    move-object/from16 v55, v14

    move-object/from16 v67, v15

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_3

    :goto_5
    const-string v8, "parentObject"

    const-string v15, "query_id"

    move-wide/from16 v78, v13

    if-eqz v10, :cond_26

    :try_start_0
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_f

    if-eqz v2, :cond_f

    :try_start_1
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v15, v11

    :goto_6
    move/from16 v9, v44

    goto/16 :goto_12e

    :cond_f
    :goto_7
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v31

    if-nez v31, :cond_25

    if-eqz v2, :cond_10

    move-object/from16 v13, v52

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    move-object/from16 v31, v3

    move-object/from16 v81, v8

    move-object/from16 v82, v13

    :goto_8
    move-object/from16 v8, v63

    goto/16 :goto_10

    :cond_10
    move-object/from16 v13, v52

    :cond_11
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result v31

    if-eqz v31, :cond_12

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v3

    move-object/from16 v81, v8

    move-object/from16 v82, v13

    move-object/from16 v14, v29

    move-object/from16 v3, v39

    move-object/from16 v8, v63

    move-object/from16 v64, v8

    const/16 v18, 0xb

    goto/16 :goto_f

    :cond_12
    iget v14, v10, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v14, :cond_13

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result v14

    if-eqz v14, :cond_14

    :cond_13
    move-object/from16 v31, v3

    move-object/from16 v81, v8

    move-object/from16 v82, v13

    move-object/from16 v8, v63

    goto/16 :goto_d

    :cond_14
    iget v14, v10, Lorg/telegram/messenger/MessageObject;->type:I

    move-object/from16 v31, v3

    const/4 v3, 0x4

    if-ne v14, v3, :cond_15

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v37, v3

    move-object/from16 v81, v8

    move-object/from16 v82, v13

    move-object/from16 v14, v29

    move-object/from16 v3, v39

    move-object/from16 v8, v63

    const/16 v18, 0x1

    goto/16 :goto_f

    :cond_15
    const/4 v3, 0x1

    if-ne v14, v3, :cond_17

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_photo;

    iget-object v14, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v14, :cond_16

    goto :goto_9

    :cond_16
    move-object/from16 v14, v64

    :goto_9
    move-object/from16 v36, v3

    move-object/from16 v81, v8

    move-object/from16 v82, v13

    move-object/from16 v64, v14

    move-object/from16 v14, v29

    move-object/from16 v3, v39

    move-object/from16 v8, v63

    const/16 v18, 0x2

    goto/16 :goto_f

    :cond_17
    const/4 v3, 0x3

    if-eq v14, v3, :cond_18

    const/4 v3, 0x5

    if-eq v14, v3, :cond_18

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_19

    :cond_18
    move-object/from16 v81, v8

    move-object/from16 v82, v13

    move-object/from16 v8, v63

    goto/16 :goto_b

    :cond_19
    const/16 v3, 0xc

    if-ne v14, v3, :cond_1a

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V

    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v81, v8

    iget-object v8, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iget-object v8, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$RestrictionReason;-><init>()V

    move-object/from16 v14, v63

    iput-object v14, v8, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->platform:Ljava/lang/String;

    iput-object v14, v8, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->reason:Ljava/lang/String;

    move-object/from16 v63, v14

    iget-object v14, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    iput-object v14, v8, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    iget-object v14, v3, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v82, v13

    iget-wide v13, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    iput-wide v13, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object/from16 v61, v3

    move-object/from16 v14, v29

    move-object/from16 v3, v39

    move-object/from16 v8, v63

    const/16 v18, 0x6

    goto/16 :goto_f

    :cond_1a
    move-object/from16 v81, v8

    move-object/from16 v82, v13

    move-object/from16 v8, v63

    const/16 v3, 0x8

    if-eq v14, v3, :cond_1f

    const/16 v3, 0x9

    if-eq v14, v3, :cond_1f

    const/16 v3, 0xd

    if-eq v14, v3, :cond_1f

    const/16 v3, 0xe

    if-eq v14, v3, :cond_1f

    const/16 v3, 0xf

    if-ne v14, v3, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v3, 0x2

    if-ne v14, v3, :cond_1d

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v14, v3

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v3, :cond_1c

    move-object v13, v3

    const/16 v3, 0x8

    goto :goto_c

    :cond_1c
    move-object/from16 v3, v39

    const/16 v18, 0x8

    goto :goto_f

    :cond_1d
    const/16 v3, 0x11

    if-ne v14, v3, :cond_1e

    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    move-object/from16 v14, v29

    const/16 v18, 0xa

    goto :goto_f

    :cond_1e
    move-object/from16 v14, v29

    move-object/from16 v3, v39

    const/16 v18, -0x1

    goto :goto_f

    :cond_1f
    :goto_a
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v14, v3

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v3, :cond_20

    move-object v13, v3

    const/4 v3, 0x7

    goto :goto_c

    :cond_20
    move-object/from16 v3, v39

    const/16 v18, 0x7

    goto :goto_f

    :goto_b
    iget-object v3, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v14, v3

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v3, :cond_21

    move-object v13, v3

    const/4 v3, 0x3

    :goto_c
    move/from16 v18, v3

    move-object/from16 v64, v13

    move-object/from16 v3, v39

    goto :goto_f

    :cond_21
    move-object/from16 v3, v39

    const/16 v18, 0x3

    goto :goto_f

    :goto_d
    iget-object v3, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v3, :cond_22

    goto :goto_e

    :cond_22
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    :goto_e
    move-object/from16 v14, v29

    move-object/from16 v3, v39

    const/16 v18, 0x0

    :goto_f
    if-eqz v2, :cond_23

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    const/16 v18, 0x9

    :cond_23
    iget-object v13, v7, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v95, v14

    if-lez v13, :cond_24

    move-object/from16 v85, v34

    move-object/from16 v93, v37

    move-object/from16 v63, v42

    move-object/from16 v96, v46

    move/from16 v29, v49

    move-object/from16 v92, v61

    move-object/from16 v94, v64

    const/16 v32, 0x0

    move-object v14, v7

    move-object/from16 v42, v10

    move-object v7, v11

    move-object/from16 v34, v33

    move-object/from16 v33, v36

    move-object/from16 v49, v40

    move-object v10, v4

    move-object v4, v12

    move-object/from16 v36, v31

    move-wide/from16 v11, v73

    move-object/from16 v31, v3

    move v3, v13

    move/from16 v13, v18

    const/16 v18, 0x0

    goto/16 :goto_46

    :cond_24
    move/from16 v13, v18

    move-object/from16 v85, v34

    move-object/from16 v93, v37

    move-object/from16 v63, v42

    move-object/from16 v96, v46

    move/from16 v29, v49

    move-object/from16 v92, v61

    move-object/from16 v94, v64

    const/16 v18, 0x0

    const/16 v32, 0x0

    move-object v14, v7

    move-object/from16 v42, v10

    move-object v7, v11

    move-object/from16 v34, v33

    move-object/from16 v33, v36

    move-object/from16 v49, v40

    move-object v10, v4

    move-object v4, v12

    move-object/from16 v36, v31

    move-wide/from16 v11, v73

    move-object/from16 v31, v3

    move/from16 v3, v45

    goto/16 :goto_46

    :cond_25
    move-object/from16 v31, v3

    move-object/from16 v81, v8

    move-object/from16 v82, v52

    goto/16 :goto_8

    :goto_10
    move-object v14, v7

    move-object v7, v11

    move-object/from16 v95, v29

    move-object/from16 v85, v34

    move-object/from16 v93, v37

    move-object/from16 v63, v42

    move/from16 v3, v45

    move-object/from16 v96, v46

    move/from16 v29, v49

    move-object/from16 v92, v61

    move-object/from16 v94, v64

    const/4 v13, 0x4

    const/16 v18, 0x0

    const/16 v32, 0x0

    move-object/from16 v42, v10

    move-object/from16 v34, v33

    move-object/from16 v33, v36

    move-object/from16 v49, v40

    move-object v10, v4

    move-object v4, v12

    move-object/from16 v36, v31

    move-object/from16 v31, v39

    move-wide/from16 v11, v73

    goto/16 :goto_46

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v15, v11

    :goto_11
    move/from16 v9, v44

    :goto_12
    const/4 v7, 0x0

    goto/16 :goto_12e

    :cond_26
    move-object/from16 v81, v8

    move-object/from16 v82, v52

    move-object/from16 v8, v63

    :try_start_2
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4b

    if-eqz v13, :cond_27

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    move-object v14, v10

    neg-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    goto :goto_13

    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    move-object v1, v0

    goto :goto_11

    :cond_27
    move-object v14, v10

    const/4 v10, 0x1

    :goto_13
    if-eqz v4, :cond_31

    if-eqz v9, :cond_28

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    goto :goto_14

    :cond_28
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_14
    if-eqz v9, :cond_2a

    move-object/from16 v13, v46

    move-object/from16 v46, v3

    :try_start_4
    instance-of v3, v13, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v3, :cond_2b

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v3, :cond_29

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v13, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    goto :goto_15

    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    move-object v1, v0

    move-object v7, v11

    goto/16 :goto_6

    :cond_29
    const/4 v3, 0x0

    goto :goto_15

    :cond_2a
    move-object/from16 v13, v46

    move-object/from16 v46, v3

    :cond_2b
    move-object v3, v13

    :goto_15
    if-eqz v10, :cond_2d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v13, 0x1e

    if-ge v10, v13, :cond_2d

    if-nez v3, :cond_2d

    if-eqz v42, :cond_2c

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2d

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController;->diceEmojies:Ljava/util/HashSet;

    const-string v13, "\ufe0f"

    invoke-virtual {v4, v13, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d

    if-nez v9, :cond_2d

    if-nez v44, :cond_2d

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;-><init>()V

    iput-object v4, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;->emoticon:Ljava/lang/String;

    const/4 v13, -0x1

    iput v13, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDice;->value:I

    iput-object v10, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v84, v29

    move-object/from16 v85, v34

    move-object/from16 v18, v39

    move-object/from16 v63, v42

    move/from16 v29, v49

    move-object/from16 v10, v51

    const/16 v64, 0xb

    move-object/from16 v39, v4

    move-object/from16 v42, v14

    move-object/from16 v34, v33

    move-object/from16 v49, v40

    move/from16 v14, v45

    const/4 v4, 0x0

    move-object/from16 v40, v3

    move-object/from16 v33, v7

    move-object v3, v11

    move-object/from16 v45, v12

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v12, v8

    goto/16 :goto_40

    :cond_2d
    if-eqz v40, :cond_2e

    move-object/from16 v10, v40

    iput-object v10, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_16

    :cond_2e
    move-object/from16 v10, v40

    if-nez v3, :cond_2f

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v13, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_16

    :cond_2f
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    iput-object v13, v11, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v3, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    :goto_16
    if-eqz v2, :cond_30

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    const/16 v13, 0x9

    goto :goto_17

    :cond_30
    const/4 v13, 0x0

    :goto_17
    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v40, v3

    move-object v3, v11

    move-object/from16 v84, v29

    move-object/from16 v85, v34

    move-object/from16 v18, v39

    move-object/from16 v63, v42

    move/from16 v29, v49

    const/4 v11, 0x0

    move-object/from16 v39, v4

    move-object/from16 v49, v10

    move-object/from16 v42, v14

    move-object/from16 v34, v33

    move/from16 v14, v45

    move-object/from16 v10, v51

    const/4 v4, 0x0

    move-object/from16 v33, v7

    move-object/from16 v45, v12

    move-object/from16 v12, v64

    move-object/from16 v7, p0

    move/from16 v64, v13

    goto/16 :goto_40

    :cond_31
    move-object/from16 v13, v46

    const/4 v11, -0x1

    move-object/from16 v46, v3

    move-object/from16 v3, v40

    if-eqz v39, :cond_33

    if-eqz v9, :cond_32

    :try_start_5
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    :goto_18
    move-object/from16 v11, v39

    goto :goto_19

    :cond_32
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_18

    :goto_19
    :try_start_6
    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v39, v4

    move-object/from16 v18, v11

    move-object/from16 v40, v13

    move-object/from16 v84, v29

    move-object/from16 v85, v34

    move-object/from16 v63, v42

    move/from16 v29, v49

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object/from16 v49, v3

    move-object v3, v10

    move-object/from16 v42, v14

    move-object/from16 v34, v33

    move/from16 v14, v45

    move-object/from16 v10, v51

    move-object/from16 v33, v7

    move-object/from16 v45, v12

    move-object/from16 v12, v64

    const/16 v64, 0xa

    :goto_1a
    move-object/from16 v7, p0

    goto/16 :goto_40

    :catch_4
    move-exception v0

    move-object/from16 v15, p0

    move-object v1, v0

    :goto_1b
    move-object v7, v10

    goto/16 :goto_6

    :cond_33
    move-object/from16 v18, v39

    if-eqz v37, :cond_36

    if-eqz v9, :cond_34

    :try_start_7
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    :goto_1c
    move-object/from16 v11, v37

    goto :goto_1d

    :cond_34
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1c

    :goto_1d
    :try_start_8
    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_35

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v31, :cond_35

    move-object/from16 v39, v4

    move-object/from16 v37, v11

    move-object/from16 v40, v13

    move-object/from16 v11, v30

    move-object/from16 v32, v34

    move-object/from16 v63, v42

    move/from16 v13, v49

    move-object/from16 v31, v64

    move-object/from16 v49, v3

    move-object v3, v10

    move-object/from16 v42, v14

    move-object/from16 v34, v33

    move/from16 v14, v45

    move-object/from16 v10, v61

    move-object/from16 v33, v7

    move-object/from16 v45, v12

    move-object/from16 v7, p0

    goto/16 :goto_30

    :cond_35
    move-object/from16 v39, v4

    move-object/from16 v37, v11

    move-object/from16 v40, v13

    move-object/from16 v84, v29

    move-object/from16 v85, v34

    move-object/from16 v63, v42

    move/from16 v29, v49

    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object/from16 v49, v3

    move-object v3, v10

    move-object/from16 v42, v14

    move-object/from16 v34, v33

    move/from16 v14, v45

    move-object/from16 v10, v51

    move-object/from16 v33, v7

    move-object/from16 v45, v12

    move-object/from16 v12, v64

    const/16 v64, 0x1

    goto :goto_1a

    :cond_36
    if-eqz v36, :cond_3f

    if-eqz v9, :cond_37

    :try_start_9
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1e

    :cond_37
    :try_start_a
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :goto_1e
    :try_start_b
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v39, v4

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move-object/from16 v40, v13

    const/16 v19, 0x3

    or-int/lit8 v13, v4, 0x3

    iput v13, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move/from16 v13, v49

    iput-boolean v13, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    if-eqz v42, :cond_38

    move-object/from16 v49, v3

    move-object/from16 v3, v42

    :try_start_c
    iput-object v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    goto :goto_1f

    :cond_38
    move-object/from16 v49, v3

    move-object/from16 v3, v42

    :goto_1f
    if-eqz v45, :cond_39

    move-object/from16 v42, v14

    move/from16 v14, v45

    iput v14, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    iput v14, v10, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v31, 0x7

    or-int/lit8 v4, v4, 0x7

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :goto_20
    move-object/from16 v4, v36

    goto :goto_21

    :cond_39
    move-object/from16 v42, v14

    move/from16 v14, v45

    goto :goto_20

    :goto_21
    :try_start_d
    iput-object v4, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    if-eqz v2, :cond_3a

    :try_start_e
    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    const/16 v11, 0x9

    goto :goto_22

    :cond_3a
    const/4 v11, 0x2

    :goto_22
    if-eqz v34, :cond_3c

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_3c

    move/from16 v31, v11

    move-object/from16 v11, v34

    move-object/from16 v113, v33

    move-object/from16 v33, v7

    move-object/from16 v7, v113

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3b

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    move-object/from16 v63, v3

    move-object/from16 v36, v4

    move-object/from16 v34, v7

    move-object/from16 v45, v12

    move-object/from16 v7, p0

    goto :goto_25

    :cond_3b
    :goto_23
    move-object/from16 v34, v7

    goto :goto_24

    :cond_3c
    move/from16 v31, v11

    move-object/from16 v11, v34

    move-object/from16 v113, v33

    move-object/from16 v33, v7

    move-object/from16 v7, v113

    goto :goto_23

    :goto_24
    :try_start_f
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v32

    move-object/from16 v36, v4

    const/16 v22, 0x1

    add-int/lit8 v4, v32, -0x1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    move-object/from16 v7, p0

    move-object/from16 v45, v12

    :try_start_10
    iget v12, v7, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v12

    move-object/from16 v63, v3

    const/4 v3, 0x1

    invoke-virtual {v12, v4, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :goto_25
    move-object/from16 v12, v64

    if-eqz v64, :cond_3d

    iput-object v12, v10, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_27

    :catch_5
    move-exception v0

    :goto_26
    move-object v1, v0

    move-object v15, v7

    goto/16 :goto_1b

    :cond_3d
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-nez v3, :cond_3e

    iput-object v8, v10, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    :cond_3e
    :goto_27
    move-object v3, v10

    move-object/from16 v85, v11

    move-object/from16 v84, v29

    move/from16 v64, v31

    move-object/from16 v10, v51

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_28
    move/from16 v29, v13

    goto/16 :goto_40

    :catch_6
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_26

    :catch_7
    move-exception v0

    move-object/from16 v7, p0

    :goto_29
    move-object v1, v0

    move-object v15, v7

    goto/16 :goto_11

    :cond_3f
    move-object/from16 v39, v4

    move-object/from16 v40, v13

    move-object/from16 v11, v34

    move-object/from16 v63, v42

    move/from16 v13, v49

    move-object/from16 v49, v3

    move-object/from16 v42, v14

    move-object/from16 v34, v33

    move/from16 v14, v45

    const/4 v3, -0x1

    move-object/from16 v33, v7

    move-object/from16 v45, v12

    move-object/from16 v12, v64

    move-object/from16 v7, p0

    if-eqz v31, :cond_41

    :try_start_11
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    :try_start_12
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    iput-object v10, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v3, v31

    iput-object v3, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    if-eqz v2, :cond_40

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    if-eqz v3, :cond_40

    :goto_2a
    move-object v3, v4

    move-object/from16 v85, v11

    move-object/from16 v84, v29

    :goto_2b
    move-object/from16 v10, v51

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v64, 0x9

    goto :goto_28

    :catch_8
    move-exception v0

    move-object v1, v0

    goto :goto_2c

    :cond_40
    move-object v3, v4

    move-object/from16 v85, v11

    move-object/from16 v84, v29

    move-object/from16 v10, v51

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v64, -0x1

    goto :goto_28

    :goto_2c
    move-object v15, v7

    move/from16 v9, v44

    :goto_2d
    const/4 v7, 0x0

    goto/16 :goto_12f

    :catch_9
    move-exception v0

    goto :goto_29

    :cond_41
    if-eqz v32, :cond_42

    :try_start_13
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    move-object/from16 v3, v32

    :try_start_14
    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_40

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    if-eqz v3, :cond_40

    goto :goto_2a

    :cond_42
    if-eqz v61, :cond_49

    if-eqz v9, :cond_43

    :try_start_15
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    goto :goto_2e

    :cond_43
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    :goto_2e
    :try_start_16
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v31, v12

    move-object/from16 v10, v61

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v12, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v12, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v12, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v32, v11

    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    move-object/from16 v11, v30

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    move-object/from16 v30, v4

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    move-object v12, v4

    move-object/from16 v4, v30

    goto :goto_2f

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object v15, v7

    move/from16 v9, v44

    move-object v7, v3

    goto/16 :goto_12e

    :cond_44
    move-object/from16 v11, v30

    :cond_45
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object v12, v8

    :goto_2f
    iput-object v12, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v12, :cond_46

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v8, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    :cond_46
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v12, :cond_47

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v8, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_47
    if-eqz v2, :cond_48

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    if-eqz v4, :cond_48

    :goto_30
    move-object/from16 v61, v10

    move-object/from16 v30, v11

    move-object/from16 v84, v29

    move-object/from16 v12, v31

    move-object/from16 v85, v32

    goto/16 :goto_2b

    :cond_48
    move-object/from16 v61, v10

    move-object/from16 v30, v11

    move-object/from16 v84, v29

    move-object/from16 v12, v31

    move-object/from16 v85, v32

    move-object/from16 v10, v51

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v64, 0x6

    goto/16 :goto_28

    :cond_49
    move-object/from16 v32, v11

    move-object/from16 v31, v12

    move-object/from16 v11, v30

    move-object/from16 v3, v61

    if-eqz v29, :cond_61

    if-eqz v9, :cond_4a

    :try_start_17
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    goto :goto_31

    :cond_4a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    :goto_31
    :try_start_18
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v12
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    if-eqz v12, :cond_4c

    if-nez v10, :cond_4c

    move-object/from16 v10, v29

    :try_start_19
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 v61, v3

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v12, :cond_4d

    move/from16 v29, v12

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v12, :cond_4b

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b

    const/4 v3, 0x1

    goto :goto_33

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object v15, v7

    move/from16 v9, v44

    move-object v7, v4

    goto/16 :goto_12e

    :cond_4b
    const/4 v12, 0x1

    add-int/2addr v3, v12

    move/from16 v12, v29

    goto :goto_32

    :cond_4c
    move-object/from16 v61, v3

    move-object/from16 v10, v29

    :cond_4d
    const/4 v3, 0x0

    :goto_33
    :try_start_1a
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v12, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move/from16 v29, v3

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    move-object/from16 v30, v11

    const/16 v19, 0x3

    or-int/lit8 v11, v3, 0x3

    iput v11, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    iput-boolean v13, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->spoiler:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    if-eqz v14, :cond_4e

    :try_start_1b
    iput v14, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    iput v14, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/4 v11, 0x7

    or-int/2addr v3, v11

    iput v3, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b

    :cond_4e
    :try_start_1c
    iput-object v10, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->cover:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v11, v3, Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    if-eqz v11, :cond_4f

    :try_start_1d
    check-cast v3, Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v3, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    iget v3, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v12, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    goto :goto_34

    :cond_4f
    if-eqz v3, :cond_50

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v11

    iput v11, v3, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    iget-object v11, v3, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget-object v12, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->cover:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    new-array v12, v11, [B

    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v3, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$Photo;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v11, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    :cond_50
    :goto_34
    if-eqz v2, :cond_51

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b

    if-eqz v3, :cond_51

    const/16 v3, 0x9

    goto :goto_36

    :cond_51
    :try_start_1e
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_52

    if-eqz v28, :cond_53

    :cond_52
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d

    if-nez v3, :cond_55

    :try_start_1f
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-nez v3, :cond_55

    if-eqz v28, :cond_53

    goto :goto_35

    :cond_53
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/16 v3, 0x8

    goto :goto_36

    :cond_54
    const/4 v3, 0x7

    goto :goto_36

    :cond_55
    :goto_35
    const/4 v3, 0x3

    :goto_36
    if-eqz v28, :cond_57

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v11

    if-nez v2, :cond_56

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_56
    const-string v12, "ve"

    invoke-virtual {v2, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    if-eqz v9, :cond_58

    iget v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-lez v11, :cond_58

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-nez v11, :cond_58

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v12

    if-nez v12, :cond_58

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v11

    if-nez v11, :cond_58

    iget v11, v7, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v11

    invoke-virtual {v11, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b

    move-object/from16 v11, v32

    goto :goto_37

    :cond_58
    move-object/from16 v11, v32

    :try_start_20
    iput-object v11, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    :goto_37
    if-eqz v9, :cond_59

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v12
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    if-nez v12, :cond_5b

    const/4 v12, 0x1

    :try_start_21
    invoke-static {v10, v12}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v32
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b

    if-eqz v32, :cond_59

    goto :goto_38

    :cond_59
    move-object/from16 v32, v2

    :cond_5a
    move/from16 v64, v3

    move-object/from16 v83, v4

    move-object/from16 v84, v10

    move-object/from16 v85, v11

    goto/16 :goto_3e

    :cond_5b
    :goto_38
    move-object/from16 v32, v2

    const/4 v12, 0x0

    :goto_39
    :try_start_22
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_5a

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    move/from16 v64, v3

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v3, :cond_60

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;-><init>()V

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_d

    move-object/from16 v83, v4

    if-eqz v12, :cond_5f

    :try_start_23
    instance-of v4, v12, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    if-eqz v4, :cond_5c

    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    move-object/from16 v84, v10

    move-object/from16 v85, v11

    goto :goto_3b

    :catch_c
    move-exception v0

    :goto_3a
    move-object v1, v0

    move-object v15, v7

    move/from16 v9, v44

    move-object/from16 v7, v83

    goto/16 :goto_12e

    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v84, v10

    move-object/from16 v85, v11

    iget-wide v10, v12, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v4, v10, v11}, Lorg/telegram/messenger/MediaDataController;->getStickerSetName(J)Ljava/lang/String;

    move-result-object v4

    :goto_3b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5d

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto :goto_3e

    :cond_5d
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    if-eqz v4, :cond_5e

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v4, v7, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    iput-object v9, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object v3, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->locationParent:Lorg/telegram/tgnet/TLObject;

    const/4 v10, 0x5

    iput v10, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v2, v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    goto :goto_3c

    :cond_5e
    const/4 v4, 0x0

    :goto_3c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    goto :goto_3d

    :cond_5f
    move-object/from16 v84, v10

    move-object/from16 v85, v11

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    const/4 v4, 0x0

    :goto_3d
    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c

    move/from16 v11, v29

    move-object/from16 v12, v31

    move-object/from16 v2, v32

    move-object/from16 v10, v51

    move-object/from16 v3, v83

    goto/16 :goto_28

    :catch_d
    move-exception v0

    move-object/from16 v83, v4

    goto :goto_3a

    :cond_60
    move-object/from16 v83, v4

    move-object/from16 v84, v10

    move-object/from16 v85, v11

    const/4 v2, 0x1

    add-int/2addr v12, v2

    move/from16 v3, v64

    goto/16 :goto_39

    :goto_3e
    move/from16 v11, v29

    move-object/from16 v12, v31

    move-object/from16 v2, v32

    move-object/from16 v10, v51

    move-object/from16 v3, v83

    const/4 v4, 0x0

    goto/16 :goto_28

    :cond_61
    move-object/from16 v61, v3

    move-object/from16 v30, v11

    move-object/from16 v84, v29

    move-object/from16 v85, v32

    if-eqz v51, :cond_63

    if-eqz v9, :cond_62

    :try_start_24
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    goto :goto_3f

    :cond_62
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    :goto_3f
    :try_start_25
    new-instance v4, Lorg/telegram/ui/Stories/MessageMediaStoryFull;

    invoke-direct {v4}, Lorg/telegram/ui/Stories/MessageMediaStoryFull;-><init>()V

    move-object/from16 v10, v51

    iget v11, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->id:I

    iget-wide v11, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    iput-wide v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    move/from16 v29, v13

    iget-wide v12, v10, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v11

    iput-object v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v10, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v12, v31

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v64, 0xc

    goto :goto_40

    :cond_63
    move/from16 v29, v13

    move-object/from16 v10, v51

    move-object/from16 v12, v31

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v64, -0x1

    :goto_40
    if-eqz v63, :cond_64

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_64

    move-object/from16 v13, v63

    iput-object v13, v3, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v31, v2

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_41

    :cond_64
    move-object/from16 v31, v2

    move-object/from16 v13, v63

    :goto_41
    if-eqz v12, :cond_65

    iput-object v12, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_a

    goto :goto_42

    :cond_65
    :try_start_26
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_4a

    if-nez v2, :cond_66

    :try_start_27
    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_a

    :cond_66
    :goto_42
    :try_start_28
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_4a

    if-nez v2, :cond_67

    :try_start_29
    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_a

    :cond_67
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v2

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_4a

    if-eqz v45, :cond_68

    :try_start_2b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v32, v4

    move/from16 v51, v11

    move-object/from16 v4, v45

    move-object/from16 v45, v12

    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    goto :goto_43

    :cond_68
    move-object/from16 v32, v4

    move/from16 v51, v11

    move-object/from16 v4, v45

    move-object/from16 v45, v12

    const/4 v2, 0x0

    :goto_43
    if-eqz v70, :cond_6a

    if-eqz v4, :cond_6a

    if-eqz v2, :cond_69

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-nez v2, :cond_6a

    :cond_69
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    iput-wide v11, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    :goto_44
    move-wide/from16 v11, v73

    goto :goto_45

    :cond_6a
    if-eqz v33, :cond_6b

    move-object/from16 v2, v33

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_a

    goto :goto_44

    :cond_6b
    :try_start_2c
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v11, v73

    iput-wide v11, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iget v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :goto_45
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_4a

    move-object/from16 v33, v3

    const/4 v3, 0x0

    :try_start_2d
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_49

    move-object/from16 v63, v13

    move v3, v14

    move-object/from16 v2, v31

    move-object/from16 v14, v33

    move-object/from16 v33, v36

    move-object/from16 v93, v37

    move-object/from16 v96, v40

    move-object/from16 v94, v45

    move-object/from16 v36, v46

    move-object/from16 v92, v61

    move/from16 v13, v64

    move-object/from16 v95, v84

    move-object/from16 v31, v18

    move/from16 v18, v51

    move-object/from16 v51, v10

    move-object/from16 v10, v39

    :goto_46
    if-eqz v43, :cond_6d

    move-object/from16 v37, v15

    :try_start_2e
    iget v15, v7, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v15

    move-object/from16 v39, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v40, v13

    move-object/from16 v13, v27

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v27, v13

    const/4 v13, 0x0

    invoke-interface {v15, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_e

    if-eqz v10, :cond_6c

    goto :goto_48

    :cond_6c
    const/4 v10, 0x0

    goto :goto_49

    :catch_e
    move-exception v0

    move-object v1, v0

    move-object v15, v7

    :goto_47
    move-object v7, v14

    goto/16 :goto_6

    :cond_6d
    move-object/from16 v39, v10

    move/from16 v40, v13

    move-object/from16 v37, v15

    :goto_48
    const/4 v10, 0x1

    :goto_49
    :try_start_2f
    iput-boolean v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    move-wide/from16 v73, v11

    iget-wide v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_48

    const-wide/16 v12, 0x0

    cmp-long v15, v10, v12

    if-nez v15, :cond_6e

    :try_start_30
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v10

    iput-wide v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    :cond_6e
    if-nez v54, :cond_70

    if-eqz v56, :cond_6f

    goto :goto_4a

    :cond_6f
    move-object/from16 v12, v54

    goto :goto_4c

    :cond_70
    :goto_4a
    if-eqz v56, :cond_71

    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputQuickReplyShortcutId;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputQuickReplyShortcutId;-><init>()V

    move/from16 v11, v56

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$TL_inputQuickReplyShortcutId;->shortcut_id:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_e

    move-object/from16 v12, v54

    goto :goto_4b

    :cond_71
    move/from16 v11, v56

    :try_start_31
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputQuickReplyShortcut;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputQuickReplyShortcut;-><init>()V

    move-object/from16 v12, v54

    iput-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_inputQuickReplyShortcut;->shortcut:Ljava/lang/String;

    :goto_4b
    iput-object v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    iput v11, v14, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_48

    if-eqz v11, :cond_72

    :try_start_32
    iget v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v10, v11

    iput v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_e

    :cond_72
    :goto_4c
    :try_start_33
    iget-wide v10, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->effect_id:J
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_48

    const-wide/16 v45, 0x0

    cmp-long v13, v10, v45

    if-eqz v13, :cond_73

    :try_start_34
    iget v13, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    const/4 v15, 0x4

    or-int/2addr v13, v15

    iput v13, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    iput-wide v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->effect:J
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_e

    :cond_73
    if-eqz v2, :cond_77

    move-object/from16 v10, v26

    :try_start_35
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_f

    if-eqz v11, :cond_76

    if-eqz v9, :cond_75

    move-object/from16 v11, v25

    :try_start_36
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v14, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v13, :cond_74

    iput-object v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_e

    :cond_74
    move-object v15, v8

    goto :goto_4d

    :cond_75
    move-object/from16 v11, v25

    :try_start_37
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    move-object v15, v8

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J

    :goto_4d
    iget v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v7, v7, 0x800

    iput v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_f

    goto :goto_4f

    :catch_f
    move-exception v0

    :goto_4e
    move-object/from16 v15, p0

    move-object v1, v0

    goto/16 :goto_47

    :cond_76
    move-object v15, v8

    move-object/from16 v11, v25

    goto :goto_4f

    :cond_77
    move-object v15, v8

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    :goto_4f
    :try_start_38
    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_45

    if-eqz v42, :cond_79

    move-object/from16 v13, v42

    :try_start_39
    iget-boolean v7, v13, Lorg/telegram/messenger/MessageObject;->resendAsIs:Z

    if-nez v7, :cond_78

    goto :goto_50

    :cond_78
    move-object/from16 v25, v11

    move-object/from16 v54, v12

    move/from16 v7, v44

    goto :goto_54

    :cond_79
    move-object/from16 v13, v42

    :goto_50
    if-eqz v12, :cond_7a

    const/4 v7, 0x0

    iput v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_f

    move/from16 v7, v44

    goto :goto_51

    :cond_7a
    if-eqz v44, :cond_7b

    move/from16 v7, v44

    :try_start_3a
    iput v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_10

    goto :goto_51

    :catch_10
    move-exception v0

    move-object/from16 v15, p0

    move-object v1, v0

    move v9, v7

    move-object v7, v14

    goto/16 :goto_12e

    :cond_7b
    move/from16 v7, v44

    :try_start_3b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v8

    iput v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    :goto_51
    instance-of v8, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_47

    if-eqz v8, :cond_7e

    if-nez v7, :cond_7c

    if-eqz v70, :cond_7c

    const/4 v8, 0x1

    :try_start_3c
    iput v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    iget v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v8, v8, 0x400

    iput v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    move-object/from16 v25, v11

    move-object/from16 v54, v12

    iget-wide v11, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    if-eqz v8, :cond_7f

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v8, :cond_7d

    :goto_52
    const/4 v8, 0x1

    goto :goto_53

    :cond_7d
    const/4 v8, 0x1

    iput-boolean v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->post:Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_10

    goto :goto_54

    :cond_7e
    move-object/from16 v25, v11

    move-object/from16 v54, v12

    goto :goto_52

    :goto_53
    :try_start_3d
    iput-boolean v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    :cond_7f
    :goto_54
    iget v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iput-wide v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move/from16 v8, v53

    iput-boolean v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_47

    if-eqz v50, :cond_80

    :try_start_3e
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageReplyStoryHeader;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyStoryHeader;-><init>()V

    iput-object v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    move-object/from16 v11, v50

    iget v12, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v12, v8, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    move/from16 v26, v3

    move-object/from16 v45, v4

    iget-wide v3, v11, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v12, v3, v4}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v11, v14, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/16 v4, 0x8

    or-int/2addr v3, v4

    iput v3, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move/from16 v44, v7

    move-object/from16 v12, v35

    move-object/from16 v7, v55

    move-object/from16 v3, v67

    const-wide/16 v55, 0x0

    move-object/from16 v35, v15

    goto/16 :goto_5b

    :cond_80
    move/from16 v26, v3

    move-object/from16 v45, v4

    move-object/from16 v11, v50

    if-eqz v67, :cond_89

    move-object/from16 v12, v35

    move-object/from16 v3, v67

    if-eqz v35, :cond_84

    if-ne v3, v12, :cond_84

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_10

    const/4 v8, 0x1

    if-eq v4, v8, :cond_81

    goto :goto_56

    :cond_81
    move/from16 v44, v7

    move-object/from16 v35, v15

    :cond_82
    move-object/from16 v7, v55

    :cond_83
    :goto_55
    const-wide/16 v55, 0x0

    goto/16 :goto_5b

    :cond_84
    :goto_56
    :try_start_3f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v9, :cond_86

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_11

    move/from16 v44, v7

    :try_start_40
    iget-wide v7, v8, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v59, 0x0

    cmp-long v35, v7, v59

    if-eqz v35, :cond_85

    iput-wide v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_random_id:J

    :cond_85
    :goto_57
    iget v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/16 v8, 0x8

    or-int/2addr v7, v8

    goto :goto_58

    :catch_11
    move-exception v0

    move/from16 v44, v7

    goto/16 :goto_4e

    :cond_86
    move/from16 v44, v7

    goto :goto_57

    :goto_58
    iput v7, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    if-eqz v12, :cond_87

    if-eq v12, v3, :cond_87

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_87

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_top_id:I

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    move-object/from16 v35, v15

    const/4 v8, 0x2

    or-int/lit8 v15, v7, 0x2

    iput v15, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    iget-boolean v8, v12, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    if-eqz v8, :cond_88

    const/4 v8, 0x1

    iput-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    const/16 v8, 0xa

    :goto_59
    or-int/2addr v7, v8

    goto :goto_5a

    :cond_87
    move-object/from16 v35, v15

    iget-boolean v4, v3, Lorg/telegram/messenger/MessageObject;->isTopicMainMessage:Z

    if-eqz v4, :cond_88

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    const/4 v7, 0x1

    iput-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->forum_topic:Z

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    const/16 v8, 0x8

    goto :goto_59

    :goto_5a
    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    :cond_88
    if-eqz v55, :cond_82

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    invoke-virtual/range {v55 .. v55}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_82

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    const/4 v7, 0x1

    iput-boolean v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit16 v7, v7, 0x440

    iput v7, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    move-object/from16 v7, v55

    iget v8, v7, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_offset:I

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getEntities()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    if-eqz v4, :cond_83

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_83

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    invoke-direct {v8, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    goto/16 :goto_55

    :cond_89
    move/from16 v44, v7

    move-object/from16 v12, v35

    move-object/from16 v7, v55

    move-object/from16 v3, v67

    move-object/from16 v35, v15

    goto/16 :goto_55

    :goto_5b
    cmp-long v4, v78, v55

    if-eqz v4, :cond_8a

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    const/4 v8, 0x1

    iput-boolean v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplies;->comments:Z

    move-object v15, v9

    move-wide/from16 v8, v78

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplies;->channel_id:J

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    const/4 v9, 0x1

    or-int/2addr v8, v9

    iput v8, v4, Lorg/telegram/tgnet/TLRPC$MessageReplies;->flags:I

    iget v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v8, 0x800000

    or-int/2addr v4, v8

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_5c

    :cond_8a
    move-object v15, v9

    :goto_5c
    if-eqz v41, :cond_8b

    if-nez v15, :cond_8b

    iget v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    move-object/from16 v4, v41

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_8b

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:J
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_f

    :cond_8b
    :try_start_41
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_45

    if-nez v4, :cond_8f

    :try_start_42
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-nez v4, :cond_8c

    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_13

    move-object/from16 v8, p0

    :try_start_43
    invoke-virtual {v8, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    return-void

    :catch_12
    move-exception v0

    :goto_5d
    move-object v1, v0

    move-object v15, v8

    goto/16 :goto_47

    :catch_13
    move-exception v0

    move-object/from16 v8, p0

    goto :goto_5d

    :cond_8c
    move-object/from16 v8, p0

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_8d

    const/4 v4, 0x0

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_12

    :cond_8d
    :goto_5e
    move-wide/from16 v41, v5

    move-object v9, v15

    move/from16 v4, v26

    goto/16 :goto_67

    :cond_8e
    move-object/from16 v8, p0

    goto :goto_5e

    :cond_8f
    move-object/from16 v8, p0

    :try_start_44
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-wide/from16 v41, v5

    move-object v9, v15

    iget-wide v5, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:J
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_46

    cmp-long v15, v5, v73

    if-nez v15, :cond_90

    :try_start_45
    iget-wide v5, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_12

    goto :goto_5f

    :cond_90
    :try_start_46
    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_46

    :goto_5f
    if-eqz v26, :cond_91

    move/from16 v4, v26

    :try_start_47
    iput v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_12

    goto :goto_60

    :cond_91
    move/from16 v4, v26

    :try_start_48
    iget v5, v9, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_46

    if-eqz v5, :cond_92

    :try_start_49
    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_92

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    iget v5, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    const/4 v15, 0x4

    or-int/2addr v5, v15

    iput v5, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_12

    :cond_92
    :goto_60
    :try_start_4a
    iget v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_46

    if-eqz v5, :cond_99

    :try_start_4b
    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_99

    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x0

    :goto_61
    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_94

    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v15, v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v15, :cond_93

    iget-wide v5, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    double-to-int v5, v5

    goto :goto_62

    :cond_93
    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_61

    :cond_94
    const/4 v5, 0x0

    :goto_62
    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/4 v15, 0x1

    add-int/2addr v5, v15

    :goto_63
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_66

    :cond_95
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-nez v5, :cond_96

    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v5

    if-eqz v5, :cond_99

    :cond_96
    const/4 v5, 0x0

    :goto_64
    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_98

    iget-object v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v15, v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v15, :cond_97

    iget-wide v5, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    double-to-int v5, v5

    goto :goto_65

    :cond_97
    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_64

    :cond_98
    const/4 v5, 0x0

    :goto_65
    iget v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/4 v15, 0x1

    add-int/2addr v5, v15

    goto :goto_63

    :goto_66
    iput v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_12

    :cond_99
    :goto_67
    if-eqz v3, :cond_a3

    if-nez v11, :cond_a3

    :try_start_4c
    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v5, :cond_a3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v5

    if-nez v5, :cond_a3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v55
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_f

    const-wide/16 v59, 0x0

    cmp-long v6, v55, v59

    if-lez v6, :cond_9a

    :try_start_4d
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v55
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_12

    :goto_68
    move-object/from16 v26, v10

    move-object/from16 v50, v11

    move-wide/from16 v10, v55

    goto :goto_69

    :cond_9a
    :try_start_4e
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v55

    goto :goto_68

    :goto_69
    invoke-virtual {v5, v10, v11}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_f

    if-eqz v5, :cond_9b

    :try_start_4f
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iget-object v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6, v10}, Lorg/telegram/messenger/MessageObject;->peersEqual(Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;)Z

    move-result v6

    if-nez v6, :cond_9b

    const/4 v6, 0x1

    goto :goto_6a

    :cond_9b
    const/4 v6, 0x0

    :goto_6a
    if-eqz v6, :cond_9c

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v10

    if-eqz v10, :cond_9c

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v10

    if-nez v10, :cond_9c

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v11, :cond_9c

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v11, :cond_9c

    iget v15, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    const/16 v46, 0x4

    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_9c

    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget v6, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_12

    move-object v5, v11

    const/4 v6, 0x1

    const/4 v10, 0x1

    goto :goto_6b

    :cond_9c
    move v10, v6

    const/4 v6, 0x0

    :goto_6b
    :try_start_50
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v46, v2

    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-eq v1, v2, :cond_9e

    iget v1, v8, Lorg/telegram/messenger/BaseController;->currentAccount:I

    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x1

    invoke-static {v1, v2, v11}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v1

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    move-object v15, v9

    int-to-long v8, v11

    cmp-long v11, v1, v8

    if-eqz v11, :cond_9d

    const/4 v1, 0x1

    goto :goto_6d

    :cond_9d
    :goto_6c
    const/4 v1, 0x0

    goto :goto_6d

    :cond_9e
    move-object v15, v9

    goto :goto_6c

    :goto_6d
    if-nez v10, :cond_9f

    if-eqz v1, :cond_a4

    :cond_9f
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    const/4 v8, 0x1

    or-int/2addr v2, v8

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v7, :cond_a0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote:Z

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->from(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v1

    goto :goto_6e

    :cond_a0
    move-object v1, v7

    :goto_6e
    if-eqz v1, :cond_a4

    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v2, :cond_a1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_a1

    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    :cond_a1
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a2

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_text:Ljava/lang/String;

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    iget v5, v1, Lorg/telegram/ui/ChatActivity$ReplyQuote;->start:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_offset:I

    :cond_a2
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_a4

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->flags:I

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity$ReplyQuote;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->quote_entities:Ljava/util/ArrayList;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_f

    goto :goto_6f

    :cond_a3
    move-object/from16 v46, v2

    move-object v15, v9

    move-object/from16 v26, v10

    move-object/from16 v50, v11

    const/4 v6, 0x0

    :cond_a4
    :goto_6f
    :try_start_51
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_45

    if-nez v1, :cond_a5

    :try_start_52
    invoke-static {v14}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_f

    if-eqz v1, :cond_a6

    :cond_a5
    const/4 v1, 0x1

    :try_start_53
    iput-boolean v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    :cond_a6
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_45

    if-nez v1, :cond_a7

    :try_start_54
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_f

    :cond_a7
    const/4 v1, 0x1

    :try_start_55
    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const-wide/16 v1, 0x0

    iput-wide v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    iput-wide v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_45

    cmp-long v5, v68, v1

    if-lez v5, :cond_a8

    :try_start_56
    iget v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags2:I

    move-wide/from16 v1, v68

    iput-wide v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->paid_message_stars:J

    goto :goto_70

    :cond_a8
    move-wide/from16 v1, v68

    :goto_70
    const/high16 v5, 0x20000

    if-eqz v46, :cond_ab

    move-object/from16 v7, v46

    move-object/from16 v8, v62

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_a9

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->grouped_id:J

    iget v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/2addr v10, v5

    iput v10, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto :goto_71

    :cond_a9
    const-wide/16 v8, 0x0

    :goto_71
    const-string v10, "final"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_aa

    move-wide v9, v8

    const/4 v8, 0x1

    :goto_72
    const-wide/16 v55, 0x0

    goto :goto_73

    :cond_aa
    move-wide v9, v8

    const/4 v8, 0x0

    goto :goto_72

    :cond_ab
    move-object/from16 v7, v46

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    goto :goto_72

    :goto_73
    cmp-long v11, v57, v55

    if-lez v11, :cond_ac

    iget-object v11, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;-><init>()V

    move-wide/from16 v68, v1

    move-wide/from16 v1, v57

    iput-wide v1, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->stars_amount:J

    move-object/from16 v53, v15

    new-instance v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    invoke-direct {v15}, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;-><init>()V

    move-wide/from16 v57, v1

    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v1, v15, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->attachPath:Ljava/lang/String;

    iput-object v11, v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_74

    :cond_ac
    move-wide/from16 v68, v1

    move-object/from16 v53, v15

    :goto_74
    if-eqz v12, :cond_ad

    if-ne v12, v3, :cond_ad

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_ae

    :cond_ad
    if-eqz v6, :cond_af

    :cond_ae
    const/16 v89, 0x0

    goto :goto_75

    :cond_af
    move-object/from16 v89, v3

    :goto_75
    :try_start_57
    new-instance v11, Lorg/telegram/messenger/MessageObject;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_45

    move-object/from16 v15, p0

    :try_start_58
    iget v1, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    const/16 v90, 0x1

    const/16 v91, 0x1

    move-object/from16 v86, v11

    move/from16 v87, v1

    move-object/from16 v88, v14

    invoke-direct/range {v86 .. v91}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;ZZ)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_44

    move-object/from16 v1, v47

    :try_start_59
    iput-object v1, v11, Lorg/telegram/messenger/MessageObject;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    const/4 v1, 0x1

    iput-boolean v1, v11, Lorg/telegram/messenger/MessageObject;->wasJustSent:Z

    if-eqz v44, :cond_b0

    const/4 v1, 0x1

    goto :goto_76

    :cond_b0
    const/4 v1, 0x0

    :goto_76
    iput-boolean v1, v11, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_43

    if-nez v1, :cond_b2

    :try_start_5a
    iget v1, v11, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b1

    if-nez v28, :cond_b1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b2

    :cond_b1
    iget-object v1, v14, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    const/4 v1, 0x1

    iput-boolean v1, v11, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_14

    goto :goto_79

    :catch_14
    move-exception v0

    :goto_77
    move-object v1, v0

    move-object v13, v14

    move/from16 v9, v44

    :goto_78
    move-object v14, v11

    goto/16 :goto_12a

    :cond_b2
    :goto_79
    :try_start_5b
    iget-object v1, v11, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_43

    if-eqz v1, :cond_b3

    if-nez v28, :cond_b3

    move-object v3, v1

    :goto_7a
    const-wide/16 v1, 0x0

    goto :goto_7c

    :cond_b3
    if-eqz v28, :cond_b4

    move-object/from16 v2, v28

    :try_start_5c
    iget-boolean v3, v2, Lorg/telegram/messenger/VideoEditedInfo;->notReadyYet:Z

    if-eqz v3, :cond_b5

    iput-boolean v3, v1, Lorg/telegram/messenger/VideoEditedInfo;->notReadyYet:Z

    goto :goto_7b

    :cond_b4
    move-object/from16 v2, v28

    :cond_b5
    :goto_7b
    move-object v3, v2

    goto :goto_7a

    :goto_7c
    cmp-long v5, v9, v1

    if-nez v5, :cond_b9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v44, :cond_b6

    const/4 v5, 0x1

    :goto_7d
    const-wide/16 v104, 0x0

    goto :goto_7e

    :cond_b6
    if-eqz v54, :cond_b7

    iget v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut_id:I

    int-to-long v5, v5

    move-wide/from16 v104, v5

    const/4 v5, 0x5

    goto :goto_7e

    :cond_b7
    const/4 v5, 0x0

    goto :goto_7d

    :goto_7e
    iget v6, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v97

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x1

    move-object/from16 v98, v2

    move/from16 v103, v5

    invoke-virtual/range {v97 .. v105}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZIIJ)V

    iget v2, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v28, v3

    move v6, v4

    move-wide/from16 v3, v41

    invoke-virtual {v2, v3, v4, v1, v5}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;I)Z

    if-nez v44, :cond_b8

    iget v1, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v5, 0x0

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_14

    :cond_b8
    move-object/from16 v1, v32

    move-object/from16 v2, v53

    const/4 v5, 0x0

    goto :goto_82

    :cond_b9
    move-object/from16 v28, v3

    move v6, v4

    move-wide/from16 v3, v41

    :try_start_5d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_43

    if-eqz v1, :cond_ba

    const/4 v2, 0x0

    :try_start_5e
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    :cond_ba
    if-nez v32, :cond_bc

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v1, v15, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    invoke-virtual {v1, v9, v10}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->initForGroup(J)V

    move-object/from16 v2, v53

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v44, :cond_bb

    const/4 v5, 0x1

    goto :goto_7f

    :cond_bb
    const/4 v5, 0x0

    :goto_7f
    iput-boolean v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_14

    :goto_80
    const/4 v5, 0x0

    goto :goto_81

    :cond_bc
    move-object/from16 v2, v53

    move-object/from16 v1, v32

    goto :goto_80

    :goto_81
    :try_start_5f
    iput-boolean v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    const/4 v5, 0x0

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_43

    if-eqz v8, :cond_bd

    :try_start_60
    iget v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v8, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->finalGroupMessage:I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_14

    :cond_bd
    :goto_82
    :try_start_61
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_43

    if-eqz v8, :cond_be

    if-eqz v45, :cond_be

    :try_start_62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send message user_id = "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v41, v9

    move-object/from16 v5, v45

    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " chat_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " channel_id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " access_hash = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " notify = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v43

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " silent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v1

    move-object/from16 v1, v27

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_15

    const/4 v10, 0x0

    :try_start_63
    invoke-interface {v9, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_14

    goto :goto_83

    :catch_15
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_77

    :cond_be
    move-object/from16 v32, v1

    move-wide/from16 v41, v9

    move-object/from16 v5, v45

    const/4 v10, 0x0

    :goto_83
    const/high16 v1, 0x200000

    if-eqz v40, :cond_bf

    move/from16 v9, v40

    const/16 v8, 0x9

    if-ne v9, v8, :cond_c0

    if-eqz v39, :cond_c0

    if-eqz v2, :cond_c0

    :cond_bf
    move-wide v9, v3

    move-object/from16 v22, v7

    move-object/from16 v35, v12

    move-object/from16 v55, v13

    move-object v13, v14

    move-object/from16 v6, v25

    move-object/from16 v12, v36

    move-object/from16 v1, v50

    move-object/from16 v4, v63

    move-wide/from16 v7, v68

    move-object/from16 v3, p1

    move-object v14, v11

    move-object v11, v5

    move-object/from16 v5, v39

    goto/16 :goto_11b

    :cond_c0
    const/4 v8, 0x1

    if-lt v9, v8, :cond_c1

    const/4 v8, 0x3

    if-le v9, v8, :cond_c2

    :cond_c1
    const/4 v8, 0x5

    goto :goto_85

    :cond_c2
    :goto_84
    move-object/from16 v21, v11

    move/from16 v8, v44

    move-object/from16 v106, v50

    move-wide/from16 v10, v68

    const/4 v1, 0x0

    goto/16 :goto_94

    :goto_85
    if-lt v9, v8, :cond_c3

    const/16 v8, 0x8

    if-le v9, v8, :cond_c2

    :cond_c3
    const/16 v8, 0x9

    if-ne v9, v8, :cond_c4

    if-nez v2, :cond_c2

    :cond_c4
    const/16 v8, 0xa

    if-eq v9, v8, :cond_c2

    const/16 v8, 0xb

    if-eq v9, v8, :cond_c2

    const/16 v8, 0xc

    if-ne v9, v8, :cond_c5

    goto :goto_84

    :cond_c5
    const/4 v8, 0x4

    if-ne v9, v8, :cond_d0

    :try_start_64
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-object v3, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_17

    if-eqz v12, :cond_c6

    :try_start_65
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->top_msg_id:I

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    :cond_c6
    if-eqz v7, :cond_c9

    move-object/from16 v3, v82

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    const/4 v4, 0x1

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->drop_author:Z

    const-string v4, "fwd_peer"

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gez v6, :cond_c8

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_c7

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v5, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_87

    :cond_c7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    goto :goto_86

    :cond_c8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    :goto_86
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_87
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_14

    goto :goto_88

    :cond_c9
    :try_start_66
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :goto_88
    iget-boolean v3, v14, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_17

    if-eqz v44, :cond_ca

    move/from16 v6, v44

    :try_start_67
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->schedule_date:I

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    goto :goto_8a

    :catch_16
    move-exception v0

    :goto_89
    move-object v1, v0

    move v9, v6

    move-object v13, v14

    goto/16 :goto_78

    :cond_ca
    move/from16 v6, v44

    :goto_8a
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    iget-wide v4, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ltz v3, :cond_cb

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    :goto_8b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_8c

    :cond_cb
    iget-object v3, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    if-eqz v4, :cond_cc

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    goto :goto_8b

    :cond_cc
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v3, :cond_cd

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v113, v4

    move-object v4, v3

    move-object/from16 v3, v113

    :goto_8c
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cd
    const-wide/16 v3, 0x0

    cmp-long v5, v68, v3

    if-lez v5, :cond_ce

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    or-int/2addr v1, v3

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->flags:I

    move-wide/from16 v3, v68

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->allow_paid_stars:J
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_16

    :cond_ce
    move-object/from16 v21, v11

    if-eqz v6, :cond_cf

    :goto_8d
    const/4 v8, 0x1

    goto/16 :goto_92

    :cond_cf
    const/4 v8, 0x0

    goto/16 :goto_92

    :catch_17
    move-exception v0

    move/from16 v6, v44

    goto :goto_89

    :cond_d0
    move-object/from16 v21, v11

    move/from16 v6, v44

    move-wide/from16 v10, v68

    const/16 v2, 0x9

    if-ne v9, v2, :cond_1a4

    :try_start_68
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_1a

    if-eqz v5, :cond_d1

    :try_start_69
    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    const/high16 v9, 0x20000

    or-int/2addr v8, v9

    iput v8, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_18

    goto :goto_8f

    :catch_18
    move-exception v0

    move-object v1, v0

    move v9, v6

    :goto_8e
    move-object v13, v14

    move-object/from16 v14, v21

    goto/16 :goto_12a

    :cond_d1
    :goto_8f
    :try_start_6a
    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_1a

    if-eqz v5, :cond_d2

    :try_start_6b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v8, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_18

    :cond_d2
    move-object/from16 v5, v26

    :try_start_6c
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->hide_via:Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_1a

    if-eqz v50, :cond_d3

    move-object/from16 v5, v50

    :try_start_6d
    invoke-virtual {v15, v5}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/2addr v5, v8

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_18

    goto :goto_90

    :cond_d3
    :try_start_6e
    iget-object v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_1a

    if-eqz v8, :cond_d4

    :try_start_6f
    iget v8, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    const/4 v9, 0x1

    or-int/2addr v8, v9

    iput v8, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-virtual {v15, v5}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_18

    :cond_d4
    :goto_90
    :try_start_70
    iget-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_1a

    if-eqz v6, :cond_d5

    :try_start_71
    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->schedule_date:I

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_18

    :cond_d5
    move-object/from16 v5, v37

    :try_start_72
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    const-string v5, "id"

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_1a

    if-nez v13, :cond_d7

    const/4 v5, 0x1

    :try_start_73
    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v30

    if-eqz v12, :cond_d6

    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    int-to-long v8, v5

    move-wide/from16 v33, v8

    goto :goto_91

    :cond_d6
    const-wide/16 v33, 0x0

    :goto_91
    const/16 v35, 0x0

    move-wide/from16 v31, v3

    invoke-virtual/range {v30 .. v35}, Lorg/telegram/messenger/MediaDataController;->cleanDraft(JJZ)V

    :cond_d7
    const-wide/16 v3, 0x0

    cmp-long v5, v10, v3

    if-lez v5, :cond_d8

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/2addr v1, v3

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    iput-wide v10, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->allow_paid_stars:J
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_18

    :cond_d8
    if-eqz v6, :cond_cf

    goto/16 :goto_8d

    :goto_92
    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move v9, v6

    move-object/from16 v3, v21

    const/4 v10, 0x0

    move-object/from16 v6, v36

    :try_start_74
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_74} :catch_19

    goto/16 :goto_131

    :catch_19
    move-exception v0

    :goto_93
    move-object v1, v0

    goto/16 :goto_8e

    :catch_1a
    move-exception v0

    move v9, v6

    const/4 v10, 0x0

    goto :goto_93

    :goto_94
    if-nez v2, :cond_149

    const/4 v1, 0x1

    if-ne v9, v1, :cond_dd

    move-object/from16 v1, v93

    :try_start_75
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v2, :cond_d9

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v3, v35

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_type:Ljava/lang/String;

    goto :goto_95

    :catch_1b
    move-exception v0

    move-object v1, v0

    move v9, v8

    goto/16 :goto_8e

    :cond_d9
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-eqz v2, :cond_db

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->period:I

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v4, 0x2

    or-int/lit8 v6, v3, 0x2

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->heading:I

    if-eqz v4, :cond_da

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->heading:I

    const/4 v4, 0x6

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    :cond_da
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->proximity_notification_radius:I

    if-eqz v3, :cond_dc

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->proximity_notification_radius:I

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/16 v4, 0x8

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    goto :goto_95

    :cond_db
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    :cond_dc
    :goto_95
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v35, v12

    move-object/from16 v55, v13

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v12, v3, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v12, v3, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_75} :catch_1b

    move-object v6, v2

    move-object/from16 v45, v5

    move/from16 v44, v8

    move/from16 v40, v9

    move-wide/from16 v68, v10

    move-object v5, v14

    move-object/from16 v10, v21

    move-object/from16 v12, v32

    move-object/from16 v9, v36

    :goto_96
    move-object/from16 v8, v66

    :goto_97
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    goto/16 :goto_cb

    :cond_dd
    move-object/from16 v55, v13

    const/4 v1, 0x2

    move-object/from16 v113, v35

    move-object/from16 v35, v12

    move-object/from16 v12, v113

    if-eq v9, v1, :cond_de

    const/16 v1, 0x9

    if-ne v9, v1, :cond_df

    if-eqz v33, :cond_df

    :cond_de
    move-object/from16 v45, v5

    move/from16 v44, v8

    move/from16 v40, v9

    move-wide/from16 v68, v10

    move-object/from16 v28, v14

    move-object/from16 v11, v16

    move-object/from16 v10, v21

    move/from16 v2, v29

    move-object/from16 v9, v36

    move-object/from16 v8, v66

    goto/16 :goto_c3

    :cond_df
    const-string v1, "query"

    const/4 v2, 0x3

    if-ne v9, v2, :cond_ee

    :try_start_76
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    move-object/from16 v13, v95

    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v12, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v12, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    move/from16 v12, v29

    iput-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_76} :catch_20

    if-nez v18, :cond_e0

    :try_start_77
    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v18

    if-nez v18, :cond_e1

    if-eqz v28, :cond_e0

    move-wide/from16 v68, v10

    move-object/from16 v10, v28

    iget-boolean v11, v10, Lorg/telegram/messenger/VideoEditedInfo;->muted:Z

    if-nez v11, :cond_e2

    iget-boolean v11, v10, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_1b

    if-nez v11, :cond_e2

    :goto_98
    const/4 v11, 0x1

    goto :goto_99

    :cond_e0
    move-wide/from16 v68, v10

    move-object/from16 v10, v28

    goto :goto_98

    :cond_e1
    move-wide/from16 v68, v10

    move-object/from16 v10, v28

    goto :goto_9a

    :goto_99
    :try_start_78
    iput-boolean v11, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->nosound_video:Z

    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_20

    if-eqz v11, :cond_e2

    :try_start_79
    const-string v11, "nosound_video = true"

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_e2
    :goto_9a
    if-eqz v6, :cond_e3

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    iput v6, v14, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iget v6, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v11, 0x2

    or-int/2addr v6, v11

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_1b

    :cond_e3
    if-eqz v7, :cond_e5

    move-object/from16 v11, v16

    :try_start_7a
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_e5

    new-instance v11, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v11, v6}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    move-object/from16 v45, v5

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v5

    :goto_9b
    if-ge v6, v5, :cond_e4

    move/from16 v16, v5

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_1d

    move/from16 v40, v9

    move-object/from16 v28, v14

    const/4 v14, 0x0

    :try_start_7b
    invoke-virtual {v11, v14}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v9

    invoke-static {v11, v9, v14}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    add-int/2addr v6, v5

    move/from16 v5, v16

    move-object/from16 v14, v28

    move/from16 v9, v40

    goto :goto_9b

    :catch_1c
    move-exception v0

    :goto_9c
    move-object v1, v0

    move v9, v8

    move-object/from16 v14, v21

    :goto_9d
    move-object/from16 v13, v28

    goto/16 :goto_12a

    :catch_1d
    move-exception v0

    move-object/from16 v28, v14

    goto :goto_9c

    :cond_e4
    move/from16 v40, v9

    move-object/from16 v28, v14

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    invoke-virtual {v11}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_1c

    goto :goto_9e

    :cond_e5
    move-object/from16 v45, v5

    move/from16 v40, v9

    move-object/from16 v28, v14

    :goto_9e
    :try_start_7c
    iget-wide v5, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const-wide/16 v23, 0x0

    cmp-long v9, v5, v23

    if-nez v9, :cond_e6

    move-object v5, v2

    move-object v14, v10

    const/4 v1, 0x1

    goto :goto_9f

    :cond_e6
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object v14, v10

    iget-wide v9, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v9, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v9, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v9, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v9, v13, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7c} :catch_1f

    if-nez v9, :cond_e7

    const/4 v9, 0x0

    :try_start_7d
    new-array v10, v9, [B

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    :cond_e7
    if-eqz v7, :cond_e8

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e8

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->query:Ljava/lang/String;

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v6, 0x2

    or-int/2addr v1, v6

    iput v1, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7d} :catch_1c

    :cond_e8
    :try_start_7e
    iput-boolean v12, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    const/4 v1, 0x0

    :goto_9f
    if-nez v32, :cond_ea

    new-instance v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v6, v15, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    const/4 v3, 0x1

    iput v3, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_7e} :catch_1f

    move-object/from16 v10, v21

    :try_start_7f
    iput-object v10, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v9, v66

    iput-object v9, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v11, v36

    iput-object v11, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    if-eqz v8, :cond_e9

    const/4 v4, 0x1

    goto :goto_a0

    :cond_e9
    const/4 v4, 0x0

    :goto_a0
    iput-boolean v4, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z

    goto :goto_a3

    :catch_1e
    move-exception v0

    :goto_a1
    move-object v1, v0

    move v9, v8

    move-object v14, v10

    goto/16 :goto_9d

    :catch_1f
    move-exception v0

    :goto_a2
    move-object/from16 v10, v21

    goto :goto_a1

    :cond_ea
    move-object/from16 v10, v21

    move-object/from16 v11, v36

    move-object/from16 v9, v66

    move-object/from16 v6, v32

    :goto_a3
    iput-object v2, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->inputUploadMedia:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_eb

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v4, :cond_eb

    iput-object v3, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v13, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->locationParent:Lorg/telegram/tgnet/TLObject;

    :cond_eb
    move-object/from16 v3, p1

    iget-object v4, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->cover:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v12, v4, Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;

    if-eqz v12, :cond_ec

    check-cast v4, Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$PhotoSizeFromPhoto;->inputPhoto:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->video_cover:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    goto :goto_a4

    :cond_ec
    if-eqz v4, :cond_ed

    instance-of v2, v4, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v2, :cond_ed

    iput-object v4, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->coverPhotoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v4, 0x1

    goto :goto_a5

    :cond_ed
    :goto_a4
    const/4 v4, 0x0

    :goto_a5
    iput-boolean v1, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    iput-boolean v4, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performCoverUpload:Z

    iput-object v14, v6, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object v12, v6

    move/from16 v44, v8

    move-object v8, v9

    move-object v9, v11

    const-wide/16 v2, 0x0

    move-object v6, v5

    move-object/from16 v5, v28

    move/from16 v113, v4

    move v4, v1

    move/from16 v1, v113

    goto/16 :goto_cb

    :catch_20
    move-exception v0

    move-object/from16 v28, v14

    goto :goto_a2

    :cond_ee
    move-object/from16 v45, v5

    move-wide/from16 v68, v10

    move-object/from16 v16, v12

    move-object/from16 v28, v14

    move-object/from16 v10, v21

    move/from16 v2, v29

    move-object/from16 v11, v36

    move-object/from16 v13, v95

    const/4 v14, 0x6

    move-object/from16 v5, p1

    move v12, v9

    move-object/from16 v9, v66

    if-ne v12, v14, :cond_f0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    move-object/from16 v6, v92

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ef

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    move-object/from16 v4, v30

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ef

    iget-object v2, v6, Lorg/telegram/tgnet/TLRPC$User;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$RestrictionReason;->text:Ljava/lang/String;

    goto :goto_a6

    :cond_ef
    move-object/from16 v2, v16

    :goto_a6
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->vcard:Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_7f} :catch_1e

    move-object v6, v1

    move/from16 v44, v8

    move-object v8, v9

    move-object v9, v11

    move/from16 v40, v12

    move-object/from16 v5, v28

    move-object/from16 v12, v32

    goto/16 :goto_97

    :cond_f0
    const/4 v14, 0x7

    if-eq v12, v14, :cond_f1

    const/16 v14, 0x9

    if-ne v12, v14, :cond_f2

    :cond_f1
    move/from16 v44, v8

    move-object/from16 v66, v9

    goto/16 :goto_b5

    :cond_f2
    const/16 v14, 0x8

    if-ne v12, v14, :cond_f8

    :try_start_80
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v5, v14, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_80} :catch_24

    if-eqz v6, :cond_f3

    :try_start_81
    iput v6, v14, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_81} :catch_22

    move-object/from16 v5, v28

    :try_start_82
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iget v6, v14, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/16 v16, 0x2

    or-int/lit8 v6, v6, 0x2

    iput v6, v14, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_82} :catch_21

    move-object/from16 v28, v5

    goto :goto_a9

    :catch_21
    move-exception v0

    :goto_a7
    move-object v1, v0

    move-object v13, v5

    move v9, v8

    :goto_a8
    move-object v14, v10

    goto/16 :goto_12a

    :catch_22
    move-exception v0

    move-object/from16 v5, v28

    goto :goto_a7

    :cond_f3
    :goto_a9
    :try_start_83
    iget-wide v5, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const-wide/16 v23, 0x0

    cmp-long v16, v5, v23

    if-nez v16, :cond_f4

    move/from16 v44, v8

    move-object/from16 v66, v9

    move-object v5, v14

    const/4 v1, 0x1

    goto :goto_ae

    :cond_f4
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_83} :catch_24

    move/from16 v44, v8

    move-object/from16 v66, v9

    :try_start_84
    iget-wide v8, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v8, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v8, v13, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v8, :cond_f5

    const/4 v8, 0x0

    new-array v9, v8, [B

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    goto :goto_ad

    :catch_23
    move-exception v0

    :goto_aa
    move-object v1, v0

    move-object v14, v10

    :goto_ab
    move-object/from16 v13, v28

    :goto_ac
    move/from16 v9, v44

    goto/16 :goto_12a

    :cond_f5
    :goto_ad
    if-eqz v7, :cond_f6

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f6

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->query:Ljava/lang/String;

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v6, 0x2

    or-int/2addr v1, v6

    iput v1, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    :cond_f6
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    const/4 v1, 0x0

    :goto_ae
    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v2, v15, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    const/4 v3, 0x3

    iput v3, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    iput-object v10, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iput-object v11, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    iput-object v14, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->inputUploadMedia:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-boolean v1, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    if-eqz v44, :cond_f7

    const/4 v4, 0x1

    goto :goto_af

    :cond_f7
    const/4 v4, 0x0

    :goto_af
    iput-boolean v4, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z

    move v4, v1

    move-object v6, v5

    move-object v9, v11

    move/from16 v40, v12

    move-object/from16 v5, v28

    move-object/from16 v8, v66

    const/4 v1, 0x0

    move-object v12, v2

    :goto_b0
    const-wide/16 v2, 0x0

    goto/16 :goto_cb

    :catch_24
    move-exception v0

    move/from16 v44, v8

    goto :goto_aa

    :cond_f8
    move/from16 v44, v8

    move-object/from16 v66, v9

    const/16 v1, 0xa

    if-ne v12, v1, :cond_fc

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;-><init>()V

    move-object/from16 v3, v31

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    if-eqz v7, :cond_fa

    move-object/from16 v2, v24

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fa

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_fa

    const/4 v4, 0x0

    :goto_b1
    array-length v5, v2

    if-ge v4, v5, :cond_f9

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->correct_answers:Ljava/util/ArrayList;

    aget-byte v6, v2, v4
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_84} :catch_23

    const/4 v8, 0x1

    :try_start_85
    new-array v9, v8, [B

    const/4 v13, 0x0

    aput-byte v6, v9, v13
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_25

    :try_start_86
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v8

    goto :goto_b1

    :goto_b2
    move-object v1, v0

    goto :goto_b3

    :catch_25
    move-exception v0

    goto :goto_b2

    :goto_b3
    move-object v7, v10

    move-object/from16 v4, v28

    move/from16 v9, v44

    goto/16 :goto_12f

    :cond_f9
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    :cond_fa
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    if-eqz v2, :cond_fb

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fb

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$PollResults;->solution:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->solution:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PollResults;->solution_entities:Ljava/util/ArrayList;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPoll;->solution_entities:Ljava/util/ArrayList;

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    :cond_fb
    :goto_b4
    move-object v6, v1

    move-object v9, v11

    move/from16 v40, v12

    move-object/from16 v5, v28

    move-object/from16 v12, v32

    goto/16 :goto_96

    :cond_fc
    const/16 v1, 0xb

    if-ne v12, v1, :cond_fd

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDice;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDice;-><init>()V

    move-object/from16 v5, v39

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDice;->emoticon:Ljava/lang/String;

    goto :goto_b4

    :cond_fd
    const/16 v1, 0xc

    if-ne v12, v1, :cond_fe

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaStory;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaStory;-><init>()V

    move-object/from16 v2, v51

    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaStory;->id:I

    iget v3, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaStory;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_b4

    :cond_fe
    move-object v9, v11

    move/from16 v40, v12

    move-object/from16 v5, v28

    move-object/from16 v12, v32

    move-object/from16 v8, v66

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_cb

    :goto_b5
    if-nez v66, :cond_100

    if-nez v85, :cond_100

    iget-wide v8, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-nez v5, :cond_ff

    goto :goto_b6

    :cond_ff
    const/4 v5, 0x0

    goto/16 :goto_be

    :cond_100
    :goto_b6
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_23

    if-eqz v6, :cond_101

    :try_start_87
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_27

    move-object/from16 v8, v28

    :try_start_88
    iput v6, v8, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v9, 0x2

    or-int/2addr v6, v9

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    goto :goto_b9

    :catch_26
    move-exception v0

    :goto_b7
    move-object v1, v0

    move-object v13, v8

    :goto_b8
    move-object v14, v10

    goto/16 :goto_ac

    :catch_27
    move-exception v0

    move-object/from16 v8, v28

    goto :goto_b7

    :cond_101
    move-object/from16 v8, v28

    :goto_b9
    if-nez v18, :cond_102

    invoke-static/range {v85 .. v85}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_103

    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v9, "mp4"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_103

    if-eqz v7, :cond_102

    move-object/from16 v6, v23

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_26

    if-eqz v9, :cond_104

    :goto_ba
    const/4 v9, 0x1

    goto :goto_bb

    :cond_102
    move-object/from16 v6, v23

    goto :goto_ba

    :cond_103
    move-object/from16 v6, v23

    goto :goto_bc

    :goto_bb
    :try_start_89
    iput-boolean v9, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->nosound_video:Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_89} :catch_28

    :cond_104
    :goto_bc
    if-eqz v7, :cond_105

    :try_start_8a
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8a} :catch_26

    if-eqz v6, :cond_105

    const/4 v6, 0x1

    goto :goto_bd

    :cond_105
    const/4 v6, 0x0

    :goto_bd
    :try_start_8b
    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->force_file:Z

    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    iget-object v6, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8b} :catch_28

    move-object/from16 v28, v8

    :goto_be
    :try_start_8c
    iget-wide v8, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const-wide/16 v23, 0x0

    cmp-long v6, v8, v23

    if-nez v6, :cond_106

    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    move-object v6, v5

    move-object v9, v11

    move/from16 v40, v12

    goto :goto_bf

    :cond_106
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object v9, v11

    move/from16 v40, v12

    iget-wide v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v11, v8, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    iget-wide v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v11, v8, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    iget-object v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v11, :cond_107

    const/4 v11, 0x0

    new-array v12, v11, [B

    iput-object v12, v8, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    :cond_107
    if-eqz v7, :cond_108

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_108

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->query:Ljava/lang/String;

    iget v1, v6, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v8, 0x2

    or-int/2addr v1, v8

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    :cond_108
    iput-boolean v2, v6, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z

    const/4 v1, 0x0

    :goto_bf
    if-eqz v5, :cond_10c

    if-nez v32, :cond_10a

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v2, v15, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    const/4 v3, 0x2

    iput v3, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    iput-object v10, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v8, v66

    iput-object v8, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    iput-object v9, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    if-eqz v44, :cond_109

    const/4 v4, 0x1

    goto :goto_c0

    :cond_109
    const/4 v4, 0x0

    :goto_c0
    iput-boolean v4, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z

    goto :goto_c1

    :cond_10a
    move-object/from16 v8, v66

    move-object/from16 v2, v32

    :goto_c1
    iput-object v5, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->inputUploadMedia:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-boolean v1, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10b

    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-nez v4, :cond_10b

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v13, v2, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->locationParent:Lorg/telegram/tgnet/TLObject;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8c} :catch_23

    :cond_10b
    move v4, v1

    move-object v12, v2

    move-object/from16 v5, v28

    :goto_c2
    const/4 v1, 0x0

    goto/16 :goto_b0

    :cond_10c
    move-object/from16 v8, v66

    move v4, v1

    move-object/from16 v5, v28

    move-object/from16 v12, v32

    goto :goto_c2

    :catch_28
    move-exception v0

    move-object/from16 v28, v8

    goto/16 :goto_aa

    :goto_c3
    :try_start_8d
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8d} :catch_32

    if-eqz v6, :cond_10d

    :try_start_8e
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_2a

    move-object/from16 v5, v28

    :try_start_8f
    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v12, 0x2

    or-int/2addr v6, v12

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    goto :goto_c5

    :catch_29
    move-exception v0

    :goto_c4
    move-object v1, v0

    move-object v13, v5

    goto/16 :goto_b8

    :catch_2a
    move-exception v0

    move-object/from16 v5, v28

    goto :goto_c4

    :cond_10d
    move-object/from16 v5, v28

    :goto_c5
    if-eqz v7, :cond_10f

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_10f

    new-instance v11, Lorg/telegram/tgnet/SerializedData;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v11, v6}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    const/4 v13, 0x0

    :goto_c6
    if-ge v13, v12, :cond_10e

    iget-object v14, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    move/from16 v16, v12

    invoke-virtual {v11, v6}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v12

    invoke-static {v11, v12, v6}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    add-int/2addr v13, v6

    move/from16 v12, v16

    const/4 v6, 0x0

    goto :goto_c6

    :cond_10e
    iget v6, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const/4 v12, 0x1

    or-int/2addr v6, v12

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    invoke-virtual {v11}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_29

    :cond_10f
    move-object/from16 v11, v33

    :try_start_90
    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    const-wide/16 v23, 0x0

    cmp-long v6, v12, v23

    if-nez v6, :cond_110

    move-object v6, v1

    const/4 v2, 0x1

    goto :goto_c7

    :cond_110
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v12, v6, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v13, v12, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_90} :catch_31

    if-nez v13, :cond_111

    const/4 v13, 0x0

    :try_start_91
    new-array v14, v13, [B

    iput-object v14, v12, Lorg/telegram/tgnet/TLRPC$InputPhoto;->file_reference:[B
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_91} :catch_29

    :cond_111
    :try_start_92
    iput-boolean v2, v6, Lorg/telegram/tgnet/TLRPC$InputMedia;->spoiler:Z
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_31

    const/4 v2, 0x0

    :goto_c7
    if-nez v32, :cond_113

    :try_start_93
    new-instance v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v12, v15, v3, v4}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    const/4 v3, 0x0

    iput v3, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    iput-object v10, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iput-object v8, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    if-eqz v44, :cond_112

    const/4 v4, 0x1

    goto :goto_c8

    :cond_112
    const/4 v4, 0x0

    :goto_c8
    iput-boolean v4, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_93} :catch_29

    goto :goto_c9

    :cond_113
    move-object/from16 v12, v32

    :goto_c9
    :try_start_94
    iput-object v1, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->inputUploadMedia:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-boolean v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_31

    if-eqz v85, :cond_114

    :try_start_95
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_114

    move-object/from16 v3, v34

    move-object/from16 v1, v85

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_114

    iput-object v1, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_95} :catch_29

    goto :goto_ca

    :cond_114
    :try_start_96
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v1, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v11, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->locationParent:Lorg/telegram/tgnet/TLObject;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_96} :catch_31

    :goto_ca
    move v4, v2

    goto/16 :goto_c2

    :goto_cb
    cmp-long v11, v41, v2

    if-nez v11, :cond_115

    cmp-long v11, v57, v2

    if-lez v11, :cond_115

    if-eqz v6, :cond_115

    :try_start_97
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;-><init>()V

    move-wide/from16 v13, v57

    iput-wide v13, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->stars_amount:J

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_97} :catch_29

    move-object v6, v2

    :goto_cc
    const-wide/16 v2, 0x0

    goto :goto_cd

    :cond_115
    move-wide/from16 v13, v57

    goto :goto_cc

    :goto_cd
    cmp-long v11, v41, v2

    if-eqz v11, :cond_12a

    :try_start_98
    iget-object v11, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v11, :cond_116

    move/from16 v21, v1

    move/from16 v16, v4

    move/from16 v1, v44

    move-object/from16 v4, v63

    move-object/from16 v18, v94

    goto/16 :goto_d5

    :cond_116
    cmp-long v11, v13, v2

    if-lez v11, :cond_11e

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    move-object/from16 v11, v45

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    move-object/from16 v3, v94

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->message:Ljava/lang/String;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_98} :catch_2c

    if-eqz v63, :cond_117

    :try_start_99
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_117

    move-object/from16 v11, v63

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->entities:Ljava/util/ArrayList;

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/16 v16, 0x8

    or-int/lit8 v11, v11, 0x8

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    :cond_117
    const-wide/16 v23, 0x0

    cmp-long v11, v68, v23

    if-lez v11, :cond_118

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/high16 v16, 0x200000

    or-int v11, v11, v16

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    move-object/from16 v18, v3

    move/from16 v16, v4

    move-wide/from16 v3, v68

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->allow_paid_stars:J
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_99} :catch_29

    goto :goto_ce

    :cond_118
    move-object/from16 v18, v3

    move/from16 v16, v4

    move-wide/from16 v3, v68

    :goto_ce
    :try_start_9a
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9a} :catch_2c

    if-eqz v11, :cond_119

    :try_start_9b
    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/16 v21, 0x1

    or-int/lit8 v11, v11, 0x1

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    move-object/from16 v11, v106

    invoke-virtual {v15, v11}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v11
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9b} :catch_29

    move/from16 v21, v1

    goto :goto_cf

    :cond_119
    :try_start_9c
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    move/from16 v21, v1

    instance-of v1, v11, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9c} :catch_2c

    if-eqz v1, :cond_11a

    :try_start_9d
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/16 v22, 0x1

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-virtual {v15, v11}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v11

    :goto_cf
    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9d} :catch_29

    :cond_11a
    if-eqz v44, :cond_11b

    move/from16 v1, v44

    :try_start_9e
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->schedule_date:I

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit16 v11, v11, 0x400

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    goto :goto_d2

    :catch_2b
    move-exception v0

    :goto_d0
    move v9, v1

    move-object v13, v5

    move-object v14, v10

    :goto_d1
    move-object v1, v0

    goto/16 :goto_12a

    :cond_11b
    move/from16 v1, v44

    :goto_d2
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    if-eqz v11, :cond_11c

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/high16 v23, 0x20000

    or-int v11, v11, v23

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    :cond_11c
    move-wide/from16 v68, v3

    iget-wide v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    const-wide/16 v23, 0x0

    cmp-long v11, v3, v23

    if-eqz v11, :cond_11d

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int v11, v11, v17

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->effect:J

    :cond_11d
    move-object/from16 v3, p1

    iget-boolean v3, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->invert_media:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->invert_media:Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;-><init>()V

    iput-wide v13, v3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->stars_amount:J

    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    const/4 v3, 0x1

    iput-boolean v3, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->paidMedia:Z

    move-object v11, v2

    move-object/from16 v4, v63

    goto/16 :goto_d4

    :catch_2c
    move-exception v0

    move/from16 v1, v44

    goto :goto_d0

    :cond_11e
    move-object/from16 v3, p1

    move/from16 v21, v1

    move/from16 v16, v4

    move/from16 v1, v44

    move-object/from16 v11, v45

    move-object/from16 v4, v63

    move-object/from16 v18, v94

    move-object/from16 v13, v106

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;-><init>()V

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-boolean v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->silent:Z

    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->replyStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v11, :cond_11f

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    const/4 v14, 0x1

    or-int/2addr v11, v14

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    invoke-virtual {v15, v13}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v11

    goto :goto_d3

    :cond_11f
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    if-eqz v13, :cond_120

    iget v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    const/4 v14, 0x1

    or-int/2addr v13, v14

    iput v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-virtual {v15, v11}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v11

    :goto_d3
    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    :cond_120
    if-eqz v1, :cond_121

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->schedule_date:I

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    or-int/lit16 v11, v11, 0x400

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    :cond_121
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    if-eqz v11, :cond_122

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    const/high16 v13, 0x20000

    or-int/2addr v11, v13

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    :cond_122
    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->effect:J

    const-wide/16 v23, 0x0

    cmp-long v11, v13, v23

    if-eqz v11, :cond_123

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    or-int v11, v11, v17

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    iput-wide v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->effect:J

    :cond_123
    iget-boolean v3, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->invert_media:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->invert_media:Z

    move-object v11, v2

    :goto_d4
    iput-object v11, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    :goto_d5
    iget-boolean v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->paidMedia:Z

    if-eqz v2, :cond_126

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_126

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_9e} :catch_2b

    if-eqz v13, :cond_124

    :try_start_9f
    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_124

    iget-object v13, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_9f} :catch_2d

    const/4 v14, 0x0

    :try_start_a0
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    if-eqz v13, :cond_125

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_d6

    :catch_2d
    move-exception v0

    const/4 v14, 0x0

    goto/16 :goto_d0

    :cond_124
    const/4 v14, 0x0

    :cond_125
    :goto_d6
    if-eqz v3, :cond_126

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPaidMedia;

    if-eqz v13, :cond_126

    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;-><init>()V

    iget-object v14, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;->attachPath:Ljava/lang/String;

    iput-object v3, v13, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_126
    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->locations:Ljava/util/ArrayList;

    iget-object v3, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfos:Ljava/util/ArrayList;

    iget-object v3, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocations:Ljava/util/ArrayList;

    iget-object v3, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->inputMedias:Ljava/util/ArrayList;

    iget-object v3, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->inputUploadMedia:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    if-eqz v2, :cond_128

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;-><init>()V

    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v13, v2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->random_id:J

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v14, v18

    iput-object v14, v2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->message:Ljava/lang/String;

    if-eqz v4, :cond_127

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_127

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->entities:Ljava/util/ArrayList;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->flags:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputSingleMedia;->flags:I

    :cond_127
    move-object v3, v11

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->multi_media:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x0

    cmp-long v4, v68, v2

    if-lez v4, :cond_129

    move-object v2, v11

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->flags:I

    move-object v2, v11

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->allow_paid_stars:J

    add-long v3, v3, v68

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMultiMedia;->allow_paid_stars:J

    goto :goto_d7

    :cond_128
    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v2, :cond_129

    move-object v2, v11

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    if-eqz v2, :cond_129

    move-object v2, v11

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPaidMedia;->extended_media:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a0} :catch_2b

    :cond_129
    :goto_d7
    move-object/from16 v18, v7

    move-object/from16 v66, v8

    move-object v2, v11

    goto/16 :goto_db

    :cond_12a
    move-object/from16 v3, p1

    move/from16 v21, v1

    move/from16 v16, v4

    move/from16 v1, v44

    move-object/from16 v11, v45

    move-object/from16 v4, v63

    move-object/from16 v14, v94

    move-object/from16 v13, v106

    :try_start_a1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-boolean v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a1} :catch_30

    if-eqz v35, :cond_12b

    :try_start_a2
    invoke-virtual/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->getId()I

    :cond_12b
    if-eqz v13, :cond_12d

    invoke-virtual {v15, v13}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v11

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/4 v13, 0x1

    or-int/2addr v11, v13

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a2} :catch_2b

    :cond_12c
    :goto_d8
    const-wide/16 v23, 0x0

    goto :goto_d9

    :cond_12d
    :try_start_a3
    iget-object v11, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a3} :catch_30

    if-eqz v13, :cond_12c

    :try_start_a4
    iget v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/16 v18, 0x1

    or-int/lit8 v13, v13, 0x1

    iput v13, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-virtual {v15, v11}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v11

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    goto :goto_d8

    :goto_d9
    cmp-long v11, v68, v23

    if-lez v11, :cond_12e

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/high16 v13, 0x200000

    or-int/2addr v11, v13

    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    move-object/from16 v18, v7

    move-object/from16 v66, v8

    move-wide/from16 v7, v68

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->allow_paid_stars:J
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a4} :catch_2b

    goto :goto_da

    :cond_12e
    move-object/from16 v18, v7

    move-object/from16 v66, v8

    :goto_da
    :try_start_a5
    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a5} :catch_30

    if-eqz v7, :cond_12f

    :try_start_a6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v7

    iput-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a6} :catch_2b

    :cond_12f
    :try_start_a7
    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iput-object v14, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->message:Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a7} :catch_30

    if-eqz v4, :cond_130

    :try_start_a8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_130

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->entities:Ljava/util/ArrayList;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/16 v6, 0x8

    or-int/2addr v4, v6

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    :cond_130
    if-eqz v1, :cond_131

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->schedule_date:I

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    :cond_131
    if-eqz v48, :cond_132

    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    if-eqz v4, :cond_132

    const/4 v4, 0x1

    iput-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->update_stickersets_order:Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a8} :catch_2b

    :cond_132
    :try_start_a9
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_a9} :catch_30

    if-eqz v4, :cond_133

    :try_start_aa
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/high16 v7, 0x20000

    or-int/2addr v6, v7

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_aa} :catch_2b

    :cond_133
    :try_start_ab
    iget-wide v3, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->effect_id:J
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ab} :catch_30

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_134

    :try_start_ac
    iget v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int v6, v6, v17

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->effect:J
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_ac} :catch_2b

    :cond_134
    :try_start_ad
    iget-boolean v3, v5, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->invert_media:Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ad} :catch_30

    if-eqz v12, :cond_135

    :try_start_ae
    iput-object v2, v12, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    :cond_135
    :goto_db
    if-nez v55, :cond_136

    iget v3, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Stars/StarsController;->beforeSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_ae} :catch_2b

    :cond_136
    const-wide/16 v13, 0x0

    cmp-long v3, v41, v13

    if-eqz v3, :cond_137

    move v14, v1

    move-object/from16 v28, v5

    move-object v11, v10

    :goto_dc
    const/4 v10, 0x0

    const/4 v13, 0x1

    goto/16 :goto_e1

    :cond_137
    move/from16 v3, v40

    const/4 v11, 0x1

    if-ne v3, v11, :cond_139

    if-eqz v1, :cond_138

    const/4 v8, 0x1

    goto :goto_dd

    :cond_138
    const/4 v8, 0x0

    :goto_dd
    const/4 v4, 0x0

    move/from16 v16, v1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v3, v10

    move-object v6, v5

    move-object v5, v12

    move-object v12, v6

    move-object v6, v9

    const/4 v9, 0x0

    move-object/from16 v7, v18

    move/from16 v14, v16

    :try_start_af
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_af} :catch_2e

    goto/16 :goto_131

    :catch_2e
    move-exception v0

    move-object v1, v0

    move-object v13, v12

    move v9, v14

    goto/16 :goto_a8

    :cond_139
    move v14, v1

    move-object v13, v5

    const/4 v1, 0x2

    const/4 v8, 0x0

    if-ne v3, v1, :cond_13d

    if-nez v16, :cond_13a

    if-eqz v21, :cond_13b

    :cond_13a
    move-object v11, v10

    move-object/from16 v28, v13

    goto :goto_dc

    :cond_13b
    if-eqz v14, :cond_13c

    const/16 v16, 0x1

    goto :goto_de

    :cond_13c
    const/16 v16, 0x0

    :goto_de
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v3, v10

    move-object/from16 v4, v66

    move-object/from16 v22, v18

    move-object v7, v12

    const/4 v12, 0x0

    move-object v8, v9

    move-object/from16 v9, v22

    move-object v11, v10

    move-object/from16 v28, v13

    const/4 v13, 0x1

    move/from16 v10, v16

    :try_start_b0
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;ZLorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    goto/16 :goto_131

    :catch_2f
    move-exception v0

    :goto_df
    move-object v1, v0

    move v9, v14

    move-object/from16 v13, v28

    goto/16 :goto_78

    :cond_13d
    move-object v11, v10

    move-object/from16 v28, v13

    move-object/from16 v22, v18

    const/4 v1, 0x3

    const/4 v10, 0x0

    const/4 v13, 0x1

    if-ne v3, v1, :cond_140

    if-nez v16, :cond_146

    if-eqz v21, :cond_13e

    goto :goto_e1

    :cond_13e
    if-eqz v14, :cond_13f

    :goto_e0
    const/4 v8, 0x1

    goto :goto_e2

    :cond_13f
    const/4 v8, 0x0

    goto :goto_e2

    :cond_140
    const/4 v1, 0x6

    if-ne v3, v1, :cond_141

    if-eqz v14, :cond_13f

    goto :goto_e0

    :cond_141
    const/4 v1, 0x7

    if-ne v3, v1, :cond_144

    if-nez v16, :cond_142

    if-eqz v21, :cond_143

    :cond_142
    if-eqz v12, :cond_143

    goto :goto_e1

    :cond_143
    if-eqz v14, :cond_13f

    goto :goto_e0

    :cond_144
    const/16 v1, 0x8

    if-ne v3, v1, :cond_147

    if-nez v16, :cond_146

    if-eqz v21, :cond_145

    goto :goto_e1

    :cond_145
    if-eqz v14, :cond_13f

    goto :goto_e0

    :cond_146
    :goto_e1
    invoke-direct {v15, v12}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_131

    :cond_147
    const/16 v1, 0xa

    if-eq v3, v1, :cond_148

    const/16 v1, 0xb

    if-eq v3, v1, :cond_148

    const/16 v1, 0xc

    if-ne v3, v1, :cond_1a4

    :cond_148
    if-eqz v14, :cond_13f

    goto :goto_e0

    :goto_e2
    move-object/from16 v1, p0

    move-object v3, v11

    move-object/from16 v4, v66

    move-object v5, v12

    move-object v6, v9

    move-object/from16 v7, v22

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b0} :catch_2f

    goto/16 :goto_131

    :catch_30
    move-exception v0

    move v14, v1

    move-object/from16 v28, v5

    move-object v11, v10

    :goto_e3
    const/4 v10, 0x0

    const/4 v13, 0x1

    goto :goto_df

    :catch_31
    move-exception v0

    move-object/from16 v28, v5

    :goto_e4
    move-object v11, v10

    move/from16 v14, v44

    goto :goto_e3

    :catch_32
    move-exception v0

    goto :goto_e4

    :cond_149
    move-object/from16 v22, v7

    move-object/from16 v55, v13

    move-object/from16 v108, v21

    move-object/from16 v109, v28

    move-object/from16 v11, v33

    move-object/from16 v110, v34

    move-object/from16 v16, v35

    move-object/from16 v5, v85

    move-object/from16 v6, v92

    move-object/from16 v1, v93

    move-object/from16 v107, v94

    move-object/from16 v10, v95

    move-object/from16 v35, v12

    move-object v12, v14

    move v14, v8

    move-wide v7, v3

    move v3, v9

    move-object/from16 v9, v36

    move-object/from16 v4, v63

    :try_start_b1
    iget v13, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v13
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b1} :catch_3c

    move-object/from16 v34, v5

    const/16 v5, 0x49

    if-lt v13, v5, :cond_14b

    :try_start_b2
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b2} :catch_34

    move/from16 v44, v14

    const-wide/16 v13, 0x0

    cmp-long v17, v41, v13

    if-eqz v17, :cond_14a

    move-wide/from16 v13, v41

    :try_start_b3
    iput-wide v13, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->grouped_id:J

    move-object/from16 v20, v6

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    const/high16 v17, 0x20000

    or-int v6, v6, v17

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b3} :catch_33

    goto :goto_e6

    :catch_33
    move-exception v0

    :goto_e5
    move-object v1, v0

    move-object v13, v12

    move/from16 v9, v44

    move-object/from16 v14, v108

    goto/16 :goto_12a

    :cond_14a
    move-object/from16 v20, v6

    move-wide/from16 v13, v41

    goto :goto_e6

    :catch_34
    move-exception v0

    move/from16 v44, v14

    goto :goto_e5

    :cond_14b
    move-object/from16 v20, v6

    move/from16 v44, v14

    move-wide/from16 v13, v41

    :try_start_b4
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer45;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer45;-><init>()V

    :goto_e6
    iget v6, v12, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->ttl:I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b4} :catch_3b

    if-eqz v4, :cond_14c

    :try_start_b5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_14c

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->entities:Ljava/util/ArrayList;

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b5} :catch_33

    :cond_14c
    :try_start_b6
    iget-object v4, v12, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b6} :catch_3b

    if-eqz v4, :cond_14d

    move-wide/from16 v41, v7

    :try_start_b7
    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_random_id:J

    const-wide/16 v23, 0x0

    cmp-long v4, v6, v23

    if-eqz v4, :cond_14e

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->reply_to_random_id:J

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    const/16 v6, 0x8

    or-int/2addr v4, v6

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_b7} :catch_33

    goto :goto_e7

    :cond_14d
    move-wide/from16 v41, v7

    :cond_14e
    :goto_e7
    :try_start_b8
    iget-boolean v4, v12, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->silent:Z

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_b8} :catch_3b

    move-object/from16 v6, v22

    if-eqz v6, :cond_14f

    move-object/from16 v4, v25

    :try_start_b9
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_14f

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->via_bot_name:Ljava/lang/String;

    iget v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_b9} :catch_33

    :cond_14f
    :try_start_ba
    iget-wide v7, v12, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    move-object/from16 v4, v16

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->message:Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_ba} :catch_3b

    const/4 v4, 0x1

    if-ne v3, v4, :cond_151

    :try_start_bb
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bb} :catch_36

    if-eqz v4, :cond_150

    :try_start_bc
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bc} :catch_33

    goto :goto_e8

    :cond_150
    :try_start_bd
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    :goto_e8
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v1
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_bd} :catch_36

    move-object/from16 v4, v108

    :try_start_be
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_be} :catch_35

    move-object/from16 v75, v1

    move-object/from16 v77, v6

    move-object/from16 v28, v12

    move-object/from16 v1, v32

    move-wide/from16 v11, v41

    goto/16 :goto_fd

    :catch_35
    move-exception v0

    :goto_e9
    move-object v1, v0

    move-object v14, v4

    move-object v13, v12

    goto/16 :goto_ac

    :catch_36
    move-exception v0

    move-object/from16 v4, v108

    goto :goto_e9

    :cond_151
    move-object/from16 v4, v108

    const/4 v1, 0x2

    if-eq v3, v1, :cond_173

    const/16 v1, 0x9

    if-ne v3, v1, :cond_152

    if-eqz v11, :cond_152

    move/from16 v40, v3

    move-object/from16 v16, v9

    move-object/from16 v28, v12

    move-object/from16 v1, v32

    move-wide/from16 v9, v41

    move-object/from16 v7, v66

    move-object/from16 v3, v81

    move-object/from16 v8, v107

    move-object/from16 v112, v110

    goto/16 :goto_107

    :cond_152
    const/4 v1, 0x3

    if-ne v3, v1, :cond_15f

    :try_start_bf
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-direct {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getThumbForSecretChat(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_bf} :catch_38

    if-nez v7, :cond_155

    :try_start_c0
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_153

    goto :goto_ea

    :cond_153
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    if-eqz v1, :cond_154

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v8, :cond_154

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto :goto_eb

    :cond_154
    const/4 v8, 0x0

    new-array v11, v8, [B

    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c0} :catch_35

    goto :goto_eb

    :cond_155
    :goto_ea
    :try_start_c1
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v8, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c1} :catch_38

    if-eqz v1, :cond_156

    :try_start_c2
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v8, :cond_156

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c2} :catch_35

    goto :goto_eb

    :cond_156
    const/4 v8, 0x0

    :try_start_c3
    new-array v11, v8, [B

    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    :goto_eb
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v8, v107

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    const-string v8, "video/mp4"

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c3} :catch_38

    move-object/from16 v28, v12

    :try_start_c4
    iget-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput-wide v11, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    const/4 v7, 0x0

    :goto_ec
    iget-object v8, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_158

    iget-object v8, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    instance-of v11, v8, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v11, :cond_157

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v11, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v11, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iget v11, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v11, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    double-to-int v8, v11

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    goto :goto_ee

    :catch_37
    move-exception v0

    :goto_ed
    move-object v1, v0

    move-object v14, v4

    goto/16 :goto_ab

    :cond_157
    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_ec

    :cond_158
    :goto_ee
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v8, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v1, :cond_15a

    const-wide/16 v7, 0x0

    cmp-long v1, v13, v7

    if-eqz v1, :cond_159

    goto :goto_ef

    :cond_159
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->access_hash:J

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v79, v1

    move/from16 v40, v3

    move-object/from16 v75, v6

    move-object/from16 v77, v7

    move-object/from16 v1, v32

    move-wide/from16 v9, v41

    goto/16 :goto_109

    :cond_15a
    :goto_ef
    if-nez v32, :cond_15d

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-wide/from16 v11, v41

    invoke-direct {v1, v15, v11, v12}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v2, 0x1

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v7, v66

    iput-object v7, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_15b

    move-object/from16 v2, v81

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15b

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    :goto_f0
    const/4 v2, 0x1

    goto :goto_f1

    :cond_15b
    iput-object v9, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    goto :goto_f0

    :goto_f1
    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    if-eqz v44, :cond_15c

    const/4 v2, 0x1

    goto :goto_f2

    :cond_15c
    const/4 v2, 0x0

    :goto_f2
    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z

    :goto_f3
    move-object/from16 v2, v109

    goto :goto_f4

    :cond_15d
    move-wide/from16 v11, v41

    move-object/from16 v7, v66

    move-object/from16 v1, v32

    goto :goto_f3

    :goto_f4
    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/16 v8, 0x0

    cmp-long v2, v13, v8

    if-nez v2, :cond_15e

    :goto_f5
    move/from16 v40, v3

    move-wide v9, v11

    :goto_f6
    const-wide/16 v2, 0x0

    goto/16 :goto_112

    :cond_15e
    move/from16 v40, v3

    move-wide v9, v11

    :goto_f7
    const-wide/16 v2, 0x0

    goto/16 :goto_113

    :catch_38
    move-exception v0

    move-object/from16 v28, v12

    goto/16 :goto_ed

    :cond_15f
    move-object/from16 v28, v12

    move-wide/from16 v11, v41

    move-object/from16 v7, v66

    move-object/from16 v111, v81

    move-object/from16 v8, v107

    const/4 v1, 0x6

    if-ne v3, v1, :cond_160

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v6, v20

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v8, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v1

    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v75, v1

    move-object/from16 v77, v6

    move-object/from16 v66, v7

    move-object/from16 v1, v32

    goto/16 :goto_fd

    :cond_160
    const/4 v1, 0x7

    if-eq v3, v1, :cond_161

    const/16 v1, 0x9

    if-ne v3, v1, :cond_162

    if-eqz v10, :cond_162

    :cond_161
    move-object/from16 v22, v6

    move-object/from16 v66, v7

    goto :goto_fa

    :cond_162
    const/16 v1, 0x8

    if-ne v3, v1, :cond_165

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v1, v15, v11, v12}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x3

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    iput-object v9, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    if-eqz v44, :cond_163

    const/4 v2, 0x1

    goto :goto_f8

    :cond_163
    const/4 v2, 0x0

    :goto_f8
    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v8, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-direct {v15, v2}, Lorg/telegram/messenger/SendMessagesHelper;->getThumbForSecretChat(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-eqz v2, :cond_164

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object v8, v6

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v9, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget v8, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v8, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v2, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_f9

    :cond_164
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object v6, v2

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v8, 0x0

    new-array v9, v8, [B

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iput v8, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v8, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    :goto_f9
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v6, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-wide v8, v10, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput-wide v8, v2, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    iput-object v7, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    goto/16 :goto_f5

    :cond_165
    move/from16 v40, v3

    move-object/from16 v66, v7

    move-wide v9, v11

    move-object/from16 v1, v32

    goto/16 :goto_10a

    :goto_fa
    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    const-wide/16 v16, 0x0

    cmp-long v1, v6, v16

    if-eqz v1, :cond_166

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-nez v1, :cond_167

    const/4 v1, 0x1

    invoke-static {v10, v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v6

    if-eqz v6, :cond_166

    goto :goto_fb

    :cond_166
    move-object/from16 v1, v32

    goto/16 :goto_fe

    :cond_167
    :goto_fb
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v1, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    iget v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    iget v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-direct {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getThumbForSecretChat(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_168

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iput-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_fc

    :cond_168
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string v6, "s"

    iput-object v6, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    :goto_fc
    if-eqz v32, :cond_169

    move-object/from16 v1, v32

    iget v6, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_16a

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move/from16 v40, v3

    move-wide v9, v11

    move-object/from16 v7, v66

    goto/16 :goto_f6

    :cond_169
    move-object/from16 v1, v32

    :cond_16a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v75, v6

    move-object/from16 v77, v7

    :goto_fd
    const/16 v79, 0x0

    const/16 v80, 0x0

    move-object/from16 v76, v5

    move-object/from16 v78, v2

    move-object/from16 v81, v4

    invoke-virtual/range {v75 .. v81}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    move/from16 v40, v3

    move-wide v9, v11

    goto/16 :goto_10a

    :goto_fe
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-direct {v15, v6}, Lorg/telegram/messenger/SendMessagesHelper;->getThumbForSecretChat(Ljava/util/ArrayList;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    if-eqz v6, :cond_16c

    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v7, :cond_16b

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object v8, v7

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move/from16 v40, v3

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget v3, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    :goto_ff
    iget v3, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto :goto_100

    :cond_16b
    move/from16 v40, v3

    invoke-static {v6}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object v3, v7

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v8, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iget v3, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    goto :goto_ff

    :goto_100
    iput v3, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_101

    :cond_16c
    move/from16 v40, v3

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v7, 0x0

    new-array v8, v7, [B

    iput-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v7, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    :goto_101
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    if-eqz v3, :cond_16e

    const-wide/16 v6, 0x0

    cmp-long v3, v13, v6

    if-eqz v3, :cond_16d

    goto :goto_102

    :cond_16d
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    iget-wide v6, v10, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->access_hash:J

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v79, v3

    move-object/from16 v75, v6

    move-object/from16 v77, v7

    move-wide v9, v11

    goto/16 :goto_109

    :cond_16e
    :goto_102
    if-nez v1, :cond_171

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v1, v15, v11, v12}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v2, 0x2

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v7, v66

    iput-object v7, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    if-eqz v22, :cond_16f

    move-object/from16 v6, v22

    move-object/from16 v3, v111

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16f

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    :goto_103
    const/4 v2, 0x1

    goto :goto_104

    :cond_16f
    iput-object v9, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    goto :goto_103

    :goto_104
    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    if-eqz v44, :cond_170

    const/4 v2, 0x1

    goto :goto_105

    :cond_170
    const/4 v2, 0x0

    :goto_105
    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z

    goto :goto_106

    :cond_171
    move-object/from16 v7, v66

    :goto_106
    if-eqz v34, :cond_172

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_172

    move-object/from16 v10, v34

    move-object/from16 v2, v110

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_172

    iput-object v10, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c4} :catch_37

    :cond_172
    const-wide/16 v2, 0x0

    cmp-long v6, v13, v2

    move-wide v9, v11

    const-wide/16 v2, 0x0

    if-nez v6, :cond_17b

    goto/16 :goto_112

    :cond_173
    move/from16 v40, v3

    move-object/from16 v28, v12

    move-object/from16 v1, v32

    move-object/from16 v7, v66

    move-object/from16 v3, v81

    move-object/from16 v8, v107

    move-object/from16 v112, v110

    move-object v12, v9

    move-wide/from16 v9, v41

    move-object/from16 v16, v12

    :goto_107
    :try_start_c5
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v81, v3

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v11, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v20, v11

    const/16 v18, 0x1

    add-int/lit8 v11, v17, -0x1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v12}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v11, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iput-object v8, v11, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    iget-object v8, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c5} :catch_3a

    if-eqz v8, :cond_174

    :try_start_c6
    iput-object v8, v11, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c6} :catch_37

    move-object/from16 v22, v6

    goto :goto_108

    :cond_174
    move-object/from16 v22, v6

    const/4 v8, 0x0

    :try_start_c7
    new-array v6, v8, [B

    iput-object v6, v11, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    :goto_108
    iget v6, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iget v6, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v11, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    move-object/from16 v66, v7

    int-to-long v6, v6

    iput-wide v6, v11, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:J

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_c7} :catch_3a

    if-eqz v6, :cond_176

    const-wide/16 v6, 0x0

    cmp-long v8, v13, v6

    if-eqz v8, :cond_175

    goto :goto_10b

    :cond_175
    :try_start_c8
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->access_hash:J

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v3, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v75, v3

    move-object/from16 v79, v6

    move-object/from16 v77, v7

    :goto_109
    const/16 v80, 0x0

    move-object/from16 v76, v5

    move-object/from16 v78, v2

    move-object/from16 v81, v4

    invoke-virtual/range {v75 .. v81}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    :goto_10a
    move-object/from16 v7, v66

    goto/16 :goto_f7

    :cond_176
    :goto_10b
    if-nez v1, :cond_179

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    invoke-direct {v1, v15, v9, v10}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    const/4 v2, 0x0

    iput v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    move-object/from16 v7, v66

    iput-object v7, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    iput-object v5, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;

    iput-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    if-eqz v22, :cond_177

    move-object/from16 v6, v22

    move-object/from16 v2, v81

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_177

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    :goto_10c
    const/4 v2, 0x1

    goto :goto_10d

    :cond_177
    move-object/from16 v12, v16

    iput-object v12, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->parentObject:Ljava/lang/Object;

    goto :goto_10c

    :goto_10d
    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    if-eqz v44, :cond_178

    const/4 v2, 0x1

    goto :goto_10e

    :cond_178
    const/4 v2, 0x0

    :goto_10e
    iput-boolean v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->scheduled:Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_c8} :catch_37

    goto :goto_10f

    :cond_179
    move-object/from16 v7, v66

    :goto_10f
    :try_start_c9
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_c9} :catch_3a

    if-nez v2, :cond_17a

    move-object/from16 v2, v34

    move-object/from16 v3, v112

    :try_start_ca
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17a

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_ca} :catch_37

    :goto_110
    const-wide/16 v2, 0x0

    goto :goto_111

    :cond_17a
    move-object/from16 v2, v20

    :try_start_cb
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->locationParent:Lorg/telegram/tgnet/TLObject;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_cb} :catch_3a

    goto :goto_110

    :goto_111
    cmp-long v6, v13, v2

    if-nez v6, :cond_17b

    :goto_112
    :try_start_cc
    invoke-direct {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cc} :catch_37

    :cond_17b
    :goto_113
    cmp-long v6, v13, v2

    if-eqz v6, :cond_17f

    :try_start_cd
    iget-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_cd} :catch_3a

    if-eqz v2, :cond_17c

    :try_start_ce
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_ce} :catch_37

    goto :goto_114

    :cond_17c
    :try_start_cf
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLObject;

    :goto_114
    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->messages:Ljava/util/ArrayList;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_cf} :catch_3a

    move-object/from16 v13, v28

    :try_start_d0
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    iput-boolean v3, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->performMediaUpload:Z

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    move/from16 v5, v40

    const/4 v6, 0x3

    if-eq v5, v6, :cond_17e

    const/4 v6, 0x7

    if-ne v5, v6, :cond_17d

    goto :goto_115

    :cond_17d
    const-wide/16 v5, 0x0

    goto :goto_116

    :cond_17e
    :goto_115
    const-wide/16 v5, 0x1

    :goto_116
    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendEncryptedMultiMedia;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto :goto_118

    :catch_39
    move-exception v0

    :goto_117
    move-object v1, v0

    move-object v14, v4

    goto/16 :goto_ac

    :catch_3a
    move-exception v0

    move-object/from16 v13, v28

    goto :goto_117

    :cond_17f
    move-object/from16 v13, v28

    :goto_118
    if-nez v55, :cond_1a4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    if-eqz v35, :cond_180

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d0} :catch_39

    int-to-long v2, v2

    move-object/from16 v30, v1

    move-wide/from16 v33, v2

    move-object v14, v4

    move-wide/from16 v41, v9

    move/from16 v9, v44

    goto/16 :goto_129

    :cond_180
    move-object/from16 v30, v1

    move-object v14, v4

    move-wide/from16 v41, v9

    move/from16 v9, v44

    :goto_119
    const-wide/16 v33, 0x0

    goto/16 :goto_129

    :catch_3b
    move-exception v0

    move-object v13, v12

    :goto_11a
    move-object/from16 v4, v108

    goto :goto_117

    :catch_3c
    move-exception v0

    move-object v13, v12

    move/from16 v44, v14

    goto :goto_11a

    :goto_11b
    if-nez v2, :cond_19d

    if-eqz v49, :cond_18e

    :try_start_d1
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->message:Ljava/lang/String;

    if-nez v55, :cond_181

    const/4 v5, 0x1

    goto :goto_11c

    :cond_181
    const/4 v5, 0x0

    :goto_11c
    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->clear_draft:Z

    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v5, v13, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d1} :catch_3f

    const-wide/16 v5, 0x0

    cmp-long v11, v7, v5

    if-lez v11, :cond_182

    :try_start_d2
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->allow_paid_stars:J
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d2} :catch_3d

    goto :goto_11d

    :catch_3d
    move-exception v0

    move-object v1, v0

    goto/16 :goto_ac

    :cond_182
    :goto_11d
    :try_start_d3
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;-><init>()V

    move-object/from16 v6, v49

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->url:Ljava/lang/String;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_large_media:Z

    iput-boolean v7, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->force_large_media:Z

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->force_small_media:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->force_small_media:Z

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->optional:Z

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d3} :catch_3f

    if-eqz v1, :cond_183

    :try_start_d4
    invoke-virtual {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d4} :catch_3d

    or-int/2addr v1, v6

    goto :goto_11e

    :cond_183
    :try_start_d5
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d5} :catch_3f

    if-eqz v5, :cond_184

    :try_start_d6
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-virtual {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/4 v5, 0x1

    or-int/2addr v1, v5

    :goto_11e
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    :cond_184
    if-eqz v48, :cond_185

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    if-eqz v1, :cond_185

    const/4 v1, 0x1

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->update_stickersets_order:Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d6} :catch_3d

    :cond_185
    :try_start_d7
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_d7} :catch_3f

    if-eqz v1, :cond_186

    :try_start_d8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_186
    if-eqz v4, :cond_187

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_187

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->entities:Ljava/util/ArrayList;

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/16 v4, 0x8

    or-int/2addr v1, v4

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_d8} :catch_3d

    :cond_187
    if-eqz v44, :cond_188

    move/from16 v11, v44

    :try_start_d9
    iput v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->schedule_date:I

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    goto :goto_120

    :catch_3e
    move-exception v0

    :goto_11f
    move-object v1, v0

    move v9, v11

    goto/16 :goto_12a

    :cond_188
    move/from16 v11, v44

    :goto_120
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    if-eqz v1, :cond_189

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    :cond_189
    iget-wide v3, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->effect_id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_18a

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int v1, v1, v17

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->effect:J

    :cond_18a
    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->invert_media:Z

    if-nez v55, :cond_18b

    iget v1, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Stars/StarsController;->beforeSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    :cond_18b
    if-eqz v11, :cond_18c

    const/4 v8, 0x1

    goto :goto_121

    :cond_18c
    const/4 v8, 0x0

    :goto_121
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide v6, v9

    move-object v3, v14

    move-object/from16 v7, v22

    move-object v6, v12

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    if-nez v55, :cond_1a4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    if-eqz v35, :cond_18d

    invoke-virtual/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_d9} :catch_3e

    int-to-long v2, v2

    move-object/from16 v30, v1

    move-wide/from16 v33, v2

    move-wide/from16 v41, v9

    move v9, v11

    goto/16 :goto_129

    :cond_18d
    move-object/from16 v30, v1

    move-wide/from16 v41, v9

    move v9, v11

    goto/16 :goto_119

    :catch_3f
    move-exception v0

    move/from16 v11, v44

    goto :goto_11f

    :cond_18e
    move/from16 v6, v44

    :try_start_da
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    iput-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    if-nez v55, :cond_18f

    const/4 v5, 0x1

    goto :goto_122

    :cond_18f
    const/4 v5, 0x0

    :goto_122
    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    iget-boolean v5, v13, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-wide/from16 v41, v9

    iget-wide v9, v13, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v9, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_da} :catch_42

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_190

    :try_start_db
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    const/high16 v9, 0x200000

    or-int/2addr v5, v9

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    iput-wide v7, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->allow_paid_stars:J

    goto :goto_123

    :catch_40
    move-exception v0

    move-object v1, v0

    move v9, v6

    goto/16 :goto_12a

    :cond_190
    :goto_123
    if-eqz v1, :cond_191

    invoke-virtual {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    :goto_124
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_db} :catch_40

    const/4 v5, 0x1

    or-int/2addr v1, v5

    goto :goto_125

    :cond_191
    :try_start_dc
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_dc} :catch_42

    if-eqz v5, :cond_192

    :try_start_dd
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    invoke-virtual {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    goto :goto_124

    :goto_125
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_dd} :catch_40

    :cond_192
    :try_start_de
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$Message;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_de} :catch_42

    if-eqz v1, :cond_193

    :try_start_df
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    const/high16 v7, 0x20000

    or-int/2addr v5, v7

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->quick_reply_shortcut:Lorg/telegram/tgnet/TLRPC$InputQuickReplyShortcut;

    :cond_193
    if-eqz v48, :cond_194

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->updateStickersOrderOnSend:Z

    if-eqz v1, :cond_194

    const/4 v1, 0x1

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->update_stickersets_order:Z
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_df} :catch_40

    :cond_194
    :try_start_e0
    iget-object v1, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e0} :catch_42

    if-eqz v1, :cond_195

    :try_start_e1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v5, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_195
    if-nez v38, :cond_196

    const/4 v1, 0x1

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    :cond_196
    if-eqz v4, :cond_197

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_197

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    const/16 v4, 0x8

    or-int/2addr v1, v4

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    :cond_197
    if-eqz v6, :cond_198

    iput v6, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->schedule_date:I

    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e1} :catch_40

    :cond_198
    :try_start_e2
    iget-wide v3, v3, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->effect_id:J
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e2} :catch_42

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-eqz v1, :cond_199

    :try_start_e3
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int v1, v1, v17

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->effect:J
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e3} :catch_40

    :cond_199
    :try_start_e4
    iget-boolean v1, v13, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    iput-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->invert_media:Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e4} :catch_42

    if-nez v55, :cond_19a

    :try_start_e5
    iget v1, v15, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarsController;->getInstance(I)Lorg/telegram/ui/Stars/StarsController;

    move-result-object v1

    invoke-virtual {v1, v14}, Lorg/telegram/ui/Stars/StarsController;->beforeSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e5} :catch_40

    :cond_19a
    if-eqz v6, :cond_19b

    const/4 v8, 0x1

    goto :goto_126

    :cond_19b
    const/4 v8, 0x0

    :goto_126
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v7, v22

    move-object v3, v14

    move v9, v6

    move-object v6, v12

    :try_start_e6
    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/lang/Object;Ljava/util/HashMap;Z)V

    if-nez v55, :cond_1a4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    if-eqz v35, :cond_19c

    :goto_127
    invoke-virtual/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v30, v1

    move-wide/from16 v33, v2

    goto/16 :goto_129

    :catch_41
    move-exception v0

    goto/16 :goto_d1

    :cond_19c
    move-object/from16 v30, v1

    goto/16 :goto_119

    :catch_42
    move-exception v0

    move v9, v6

    goto/16 :goto_d1

    :cond_19d
    move-wide/from16 v41, v9

    move-object/from16 v7, v22

    move/from16 v9, v44

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    iget v3, v13, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->ttl:I

    if-eqz v4, :cond_19e

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19e

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->entities:Ljava/util/ArrayList;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    :cond_19e
    iget-object v3, v13, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v3, :cond_19f

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_random_id:J

    const-wide/16 v10, 0x0

    cmp-long v8, v3, v10

    if-eqz v8, :cond_19f

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->reply_to_random_id:J

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    const/16 v4, 0x8

    or-int/2addr v3, v4

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    :cond_19f
    if-eqz v7, :cond_1a0

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1a0

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->via_bot_name:Ljava/lang/String;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    :cond_1a0
    iget-boolean v3, v13, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->silent:Z

    iget-wide v3, v13, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->message:Ljava/lang/String;

    move-object/from16 v3, v96

    if-eqz v3, :cond_1a1

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_1a1

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v3, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    iget v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->flags:I

    goto :goto_128

    :cond_1a1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    :goto_128
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v75

    iget-object v3, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v79, 0x0

    const/16 v80, 0x0

    move-object/from16 v76, v1

    move-object/from16 v77, v3

    move-object/from16 v78, v2

    move-object/from16 v81, v14

    invoke-virtual/range {v75 .. v81}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    if-nez v55, :cond_1a4

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    if-eqz v35, :cond_19c

    goto/16 :goto_127

    :goto_129
    const/16 v35, 0x0

    move-wide/from16 v31, v41

    invoke-virtual/range {v30 .. v35}, Lorg/telegram/messenger/MediaDataController;->cleanDraft(JJZ)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e6} :catch_41

    goto/16 :goto_131

    :catch_43
    move-exception v0

    move-object v13, v14

    move/from16 v9, v44

    move-object v14, v11

    goto/16 :goto_d1

    :goto_12a
    move-object v4, v13

    move-object v7, v14

    goto :goto_12f

    :catch_44
    move-exception v0

    :goto_12b
    move-object v13, v14

    move/from16 v9, v44

    :goto_12c
    move-object v1, v0

    move-object v7, v13

    goto :goto_12e

    :catch_45
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_12b

    :catch_46
    move-exception v0

    move-object v15, v8

    goto :goto_12b

    :catch_47
    move-exception v0

    move-object/from16 v15, p0

    move v9, v7

    move-object v13, v14

    goto :goto_12c

    :catch_48
    move-exception v0

    move-object v15, v7

    goto :goto_12b

    :catch_49
    move-exception v0

    :goto_12d
    move-object v15, v7

    move/from16 v9, v44

    move-object v1, v0

    move-object/from16 v7, v33

    goto :goto_12e

    :catch_4a
    move-exception v0

    move-object/from16 v33, v3

    goto :goto_12d

    :catch_4b
    move-exception v0

    move-object v15, v11

    move/from16 v9, v44

    move-object v1, v0

    goto/16 :goto_12

    :goto_12e
    move-object v4, v7

    goto/16 :goto_2d

    :goto_12f
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    if-eqz v9, :cond_1a2

    const/4 v2, 0x1

    goto :goto_130

    :cond_1a2
    const/4 v2, 0x0

    :goto_130
    invoke-virtual {v1, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;I)V

    if-eqz v7, :cond_1a3

    iget-object v1, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v2, 0x2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->errorAllowedPriceStars:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Message;->errorNewPriceStars:J

    :cond_1a3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    iget v3, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    iget v1, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v15, v1}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    :cond_1a4
    :goto_131
    return-void
.end method