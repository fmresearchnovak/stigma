.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# methods
.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 21
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    .line 2386
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v17:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v18:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v19:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v20:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_p4:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v21:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v17, p0
    
    move-object/16 v18, p1
    
    move-object/16 v19, p2
    
    move/16 v20, p3
    
    move/16 v21, p4
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v17:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object/from16 v6, v17

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v18:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object/from16 v7, v18

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v19:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object/from16 v8, v19

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v20:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move/from16 v9, v20

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v21:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move/from16 v10, v21

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v1, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v7:F
    
    add-float v1, v1, v11
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v9:F
    
    add-float v1, v1, v11
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    
    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_BackStackRecord_v0_mReorderingAllowed:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v11:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-boolean v11, v0, Landroid/support/v4/app/BackStackRecord;->mReorderingAllowed:Z

    .line 2387
    .local v11, "allowReordering":Z
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v1, 0x0
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v0, 0x0

    .line 2388
    .local v0, "addToBackStack":Z
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v6_mTmpAddedFragments:F
    
    sput v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v14, v15
    
    if-eqz v15, :stigma_jump_label_0
    
    const-string v12, "STIGMA"
    
    const-string v13, "Implicit flow involving sensitive data!"
    
    invoke-static {v12, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v13
    
    invoke-static {v12, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-nez v1, :cond_0

    .line 2389
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v12, 0x0
    
    sput v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    sput v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v6_mTmpAddedFragments:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    iput-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2393
    :goto_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v6_mTmpAddedFragments:F
    
    sput v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v1, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v6_mAdded:F
    
    sput v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v2, v6, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2394
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v17:F
    
    sput v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_getPrimaryNavigationFragment_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroid/support/v4/app/Fragment;
    
    move-result-object v1
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    sput v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    .line 2395
    .local v1, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v20:F
    
    sput v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move/from16 v2, v20

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v0:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v12:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v12, v0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    sput v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v13:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v13, v1

    .end local v0    # "addToBackStack":Z
    .end local v1    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .local v2, "recordNum":I
    .local v12, "addToBackStack":Z
    .local v13, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    :goto_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v15, 0x0
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v14:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v14, 0x1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v10:F
    
    const/16 v5, 0x0
    
    cmpl-float v5, v4, v5
    
    if-eqz v5, :stigma_jump_label_2
    
    const-string v15, "STIGMA"
    
    const-string v3, "Implicit flow involving sensitive data!"
    
    invoke-static {v15, v3},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v3
    
    invoke-static {v15, v3},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_2
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-ge v2, v10, :cond_4

    .line 2396
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v15, 0x0
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v7:F
    
    add-float v15, v15, v3
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v2:F
    
    add-float v15, v15, v3
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    
    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 2397
    .local v0, "record":Landroid/support/v4/app/BackStackRecord;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v15, 0x0
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v8:F
    
    add-float v15, v15, v3
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v2:F
    
    add-float v15, v15, v3
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    
    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v15, 0x0
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    add-float v15, v15, v3
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    
    move-result v1

    .line 2398
    .local v1, "isPop":Z
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v1:F
    
    const/16 v5, 0x0
    
    cmpl-float v5, v4, v5
    
    if-eqz v5, :stigma_jump_label_3
    
    const-string v15, "STIGMA"
    
    const-string v3, "Implicit flow involving sensitive data!"
    
    invoke-static {v15, v3},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v3
    
    invoke-static {v15, v3},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-nez v1, :cond_1

    .line 2399
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v6_mTmpAddedFragments:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v15, 0x0
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v0:F
    
    add-float v15, v15, v4
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v3:F
    
    add-float v15, v15, v4
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v13:F
    
    add-float v15, v15, v4
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v0, v3, v13}, Landroid/support/v4/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v3:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v13:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v13, v3

    .end local v13    # "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    .local v3, "oldPrimaryNav":Landroid/support/v4/app/Fragment;
    goto :goto_2
    :cond_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_v6_mTmpAddedFragments:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v6, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v15, 0x0
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v0:F
    
    add-float v15, v15, v4
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v3:F
    
    add-float v15, v15, v4
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v13:F
    
    add-float v15, v15, v4
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v0, v3, v13}, Landroid/support/v4/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    
    move-result-object v3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v3:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_executeOpsTogether_v13:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v13, v3

    # this method was truncated at this point

.end method

