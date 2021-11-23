.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# methods
.method private endAnimatingAwayFragments()V
    .locals 16

    .line 2671
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v12:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v12, p0
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v12_mActive:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v0, v12, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v0:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v11, v13
    
    if-eqz v13, :stigma_jump_label_0
    
    const-string v1, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v1, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v1, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-nez v0, :cond_0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v1, 0x0
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v0, 0x0

    goto :goto_0
    :cond_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v1, 0x0
    
    sget v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v0:F
    
    add-float v1, v1, v10
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    
    move-result v0

    .line 2672
    .local v0, "numFragments":I
    :goto_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v0:F
    
    const/16 v14, 0x0
    
    cmpl-float v14, v13, v14
    
    if-eqz v14, :stigma_jump_label_2
    
    const-string v10, "STIGMA"
    
    const-string v11, "Implicit flow involving sensitive data!"
    
    invoke-static {v10, v11},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v11
    
    invoke-static {v10, v11},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_2
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-ge v1, v0, :cond_4

    .line 2673
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v12_mActive:F
    
    sput v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v2, v12, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    add-float v10, v10, v11
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v1:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
    
    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2674
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    const/16 v14, 0x0
    
    cmpl-float v14, v13, v14
    
    if-eqz v14, :stigma_jump_label_3
    
    const-string v10, "STIGMA"
    
    const-string v11, "Implicit flow involving sensitive data!"
    
    invoke-static {v10, v11},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v11
    
    invoke-static {v10, v11},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v2, :cond_3

    .line 2675
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v3:F
    
    const/16 v14, 0x0
    
    cmpl-float v14, v13, v14
    
    if-eqz v14, :stigma_jump_label_4
    
    const-string v10, "STIGMA"
    
    const-string v11, "Implicit flow involving sensitive data!"
    
    invoke-static {v10, v11},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v11
    
    invoke-static {v10, v11},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_4
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v3, :cond_2

    .line 2677
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I
    
    move-result v9

    .line 2678
    .local v9, "stateAfterAnimating":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v11, 0x0
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    add-float v11, v11, v13
    
    sput v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
    
    move-result-object v10

    .line 2679
    .local v10, "animatingAway":Landroid/view/View;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v10:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v11:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v10}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;
    
    move-result-object v11

    .line 2680
    .local v11, "animation":Landroid/view/animation/Animation;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v11:F
    
    const/16 v4, 0x0
    
    cmpl-float v4, v15, v4
    
    if-eqz v4, :stigma_jump_label_5
    
    const-string v13, "STIGMA"
    
    const-string v14, "Implicit flow involving sensitive data!"
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v14
    
    invoke-static {v13, v14},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_5
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v11, :cond_1

    .line 2681
    invoke-virtual {v11}, Landroid/view/animation/Animation;->cancel()V

    .line 2684
    invoke-virtual {v10}, Landroid/view/View;->clearAnimation()V

    .line 2686
    :cond_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 2687
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v6, 0x0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v7, 0x0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v8, 0x0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v12:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v3, v12

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v4, v2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v5, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_moveToState_p0:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v4:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_moveToState_p1:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v5:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_moveToState_p2:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v6:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_moveToState_p3:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v7:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_moveToState_p4:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v8:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_moveToState_p5:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    .end local v9    # "stateAfterAnimating":I
    .end local v10    # "animatingAway":Landroid/view/View;
    .end local v11    # "animation":Landroid/view/animation/Animation;
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    goto :goto_2
    :cond_2
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    add-float v0, v0, v13
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;
    
    move-result-object v3
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v3:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v14, v15
    
    if-eqz v15, :stigma_jump_label_6
    
    const-string v0, "STIGMA"
    
    const-string v13, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v13
    
    invoke-static {v0, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_6
    
    # IFT INSTRUCTIONS ADDED BY STIGMA IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v3, :cond_3

    .line 2689
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v2:F
    
    add-float v0, v0, v13
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getAnimator()Landroid/animation/Animator;
    
    move-result-object v3
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    nop

    .line 2672
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    :cond_3
    :goto_2
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v1:F
    
    add-float v0, v0, v13
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_endAnimatingAwayFragments_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
    :cond_4
    return-void
.end method
