.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# methods
.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 12
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "transitionStyle"    # I

    .line 1160
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v8:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v9:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v10:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v11:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_p4:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v12:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v8, p0
    
    move-object/16 v9, p1
    
    move/16 v10, p2
    
    move/16 v11, p3
    
    move/16 v12, p4
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v9:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->getNextAnim()I
    
    move-result v0

    .line 1161
    .local v0, "nextAnim":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v9:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v10:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v11:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v0:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v9, v10, v11, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
    
    move-result-object v1

    .line 1162
    .local v1, "animation":Landroid/view/animation/Animation;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v1:F
    
    const/16 v2, 0x0
    
    cmpl-float v2, v15, v2
    
    if-eqz v2, :stigma_jump_label_0
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v1, :cond_0

    .line 1163
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v2, v1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v2:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v2
    :cond_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v9:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v10:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v11:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v0:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v9, v10, v11, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;
    
    move-result-object v2

    .line 1167
    .local v2, "animator":Landroid/animation/Animator;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v2:F
    
    const/16 v3, 0x0
    
    cmpl-float v3, v15, v3
    
    if-eqz v3, :stigma_jump_label_1
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v2, :cond_1

    .line 1168
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v3, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :cond_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v0:F
    
    const/16 v3, 0x0
    
    cmpl-float v3, v15, v3
    
    if-eqz v3, :stigma_jump_label_2
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_2
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v0, :cond_6

    .line 1172
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v0:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;
    
    move-result-object v3

    .line 1173
    .local v3, "dir":Ljava/lang/String;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-string v4, "anim"

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v4:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    
    move-result v4

    .line 1174
    .local v4, "isAnim":Z
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v5, 0x0

    .line 1175
    .local v5, "successfulLoad":Z
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v4:F
    
    const/16 v6, 0x0
    
    cmpl-float v6, v15, v6
    
    if-eqz v6, :stigma_jump_label_3
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v4, :cond_3

    .line 1178
    :try_start_0
    iget-object v6, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    move-object v1, v6

    .line 1179
    if-eqz v1, :cond_2

    .line 1180
    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v6, v1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v6
    :cond_2
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v5, 0x1

    .line 1188
    goto :goto_0
    :catch_0
    move-exception v6

    goto :goto_0
    :catch_1
    move-exception v6

    .line 1185
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    throw v6

    .line 1190
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :goto_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    const/16 v7, 0x0
    
    cmpl-float v7, v15, v7
    
    if-eqz v7, :stigma_jump_label_4
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_4
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-nez v5, :cond_6

    .line 1193
    :try_start_1
    iget-object v6, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v6

    move-object v2, v6

    .line 1194
    if-eqz v2, :cond_4

    .line 1195
    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v6, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v6
    :cond_4
    goto :goto_1
    :catch_2
    move-exception v6

    .line 1198
    .local v6, "e":Ljava/lang/RuntimeException;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v4:F
    
    const/16 v7, 0x0
    
    cmpl-float v7, v15, v7
    
    if-eqz v7, :stigma_jump_label_5
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_5
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-nez v4, :cond_5

    .line 1203
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v7, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
    
    move-result-object v7

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v0:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v7, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    
    move-result-object v1

    .line 1204
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v7
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v1:F
    
    const/16 v7, 0x0
    
    cmpl-float v7, v15, v7
    
    if-eqz v7, :stigma_jump_label_6
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_6
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v7, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v1, :cond_6

    .line 1205
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v7, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v7, v1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v7
    :cond_5
    throw v6

    .line 1211
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "isAnim":Z
    .end local v5    # "successfulLoad":Z
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_6
    :goto_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v3, 0x0

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v10:F
    
    const/16 v3, 0x0
    
    cmpl-float v3, v15, v3
    
    if-eqz v3, :stigma_jump_label_7
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_7
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v3, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v10, :cond_7

    .line 1212
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :cond_7
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v10:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_transitToStyleIndex_p0:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v11:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_transitToStyleIndex_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I
    
    move-result v4
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    .line 1216
    .local v4, "styleIndex":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v4:F
    
    const/16 v3, 0x0
    
    cmpl-float v3, v15, v3
    
    if-eqz v3, :stigma_jump_label_8
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_8
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v3, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-gez v4, :cond_8

    .line 1217
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :cond_8
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v5, 0x3f79999a    # 0.975f

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v6, 0x0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/high16 v7, 0x3f800000    # 1.0f

    packed-switch v4, :pswitch_data_0

    .line 1236
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v12:F
    
    const/16 v3, 0x0
    
    cmpl-float v3, v15, v3
    
    if-eqz v3, :stigma_jump_label_9
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_9
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v3, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v12, :cond_9

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v5, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z
    
    move-result v5

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    const/16 v3, 0x0
    
    cmpl-float v3, v15, v3
    
    if-eqz v3, :stigma_jump_label_10
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v3, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v5, :cond_9

    .line 1237
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v5, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v12:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I
    
    move-result v12

    goto :goto_2
    :pswitch_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeFadeAnimation_p0:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeFadeAnimation_p1:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeFadeAnimation_p2:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v3, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    
    move-result-object v3
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :pswitch_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeFadeAnimation_p0:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeFadeAnimation_p1:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeFadeAnimation_p2:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v3, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    
    move-result-object v3
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :pswitch_2
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v5, 0x3f89999a    # 1.075f

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p0:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p1:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p2:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p3:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p4:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v3, v7, v5, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    
    move-result-object v3
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :pswitch_3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p0:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p1:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p2:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p3:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p4:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v3, v5, v7, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    
    move-result-object v3
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :pswitch_4
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p0:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p1:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p2:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p3:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p4:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v3, v7, v5, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    
    move-result-object v3
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :pswitch_5
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v8_mHost:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v8, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/high16 v5, 0x3f900000    # 1.125f

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p0:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v5:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p1:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p2:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p3:F
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v7:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p4:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v3, v5, v7, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    
    move-result-object v3
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :cond_9
    :goto_2
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v12:F
    
    const/16 v3, 0x0
    
    cmpl-float v3, v15, v3
    
    if-eqz v3, :stigma_jump_label_11
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v3, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v12, :cond_a

    .line 1240
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :cond_a
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_loadAnimation_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v3
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

