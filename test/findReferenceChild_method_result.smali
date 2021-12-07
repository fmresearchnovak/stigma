.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"


# methods
.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 13
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .line 1785
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v9:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v10:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v11:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v12:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p4:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v13:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p5:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v14:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v9, p0
    
    move-object/16 v10, p1
    
    move-object/16 v11, p2
    
    move/16 v12, p3
    
    move/16 v13, p4
    
    move/16 v14, p5
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v9:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_ensureLayoutState_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1786
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v15, 0x0
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v0, 0x0

    .line 1787
    .local v0, "invalidMatch":Landroid/view/View;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v15, 0x0
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v1, 0x0

    .line 1788
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_v9_mOrientationHelper:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v2, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v15, 0x0
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v2:F
    
    add-float v15, v15, v3
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I
    
    move-result v2

    .line 1789
    .local v2, "boundsStart":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_v9_mOrientationHelper:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v3, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v15, 0x0
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v3:F
    
    add-float v15, v15, v4
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I
    
    move-result v3

    .line 1790
    .local v3, "boundsEnd":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v12:F
    
    const/16 v6, 0x0
    
    cmpl-float v6, v5, v6
    
    if-eqz v6, :stigma_jump_label_1
    
    const-string v15, "STIGMA"
    
    const-string v4, "Implicit flow involving sensitive data!"
    
    invoke-static {v15, v4},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v4
    
    invoke-static {v15, v4},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-le v13, v12, :cond_0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v15, 0x0
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v4, 0x1

    goto :goto_0
    :cond_0 # ignore
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v15, 0x0
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v4, -0x1

    .line 1791
    .local v4, "diff":I
    :goto_0 # ignore
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v12:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v5, v12

    .local v5, "i":I
    :goto_1  # v0 comes in with value of v6 from line 3876, which is an object
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v7, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v13:F
    
    const/16 v8, 0x0
    
    cmpl-float v8, v7, v8
    
    if-eqz v8, :stigma_jump_label_3
    
    const-string v15, "STIGMA"
    
    const-string v6, "Implicit flow involving sensitive data!"
    
    invoke-static {v15, v6},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v6
    
    invoke-static {v15, v6},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_3
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eq v5, v13, :cond_5

    .line 1792
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v9:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_getChildAt_p0:F
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v9, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;
    
    move-result-object v6
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_return_field:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    .line 1793
    .local v6, "view":Landroid/view/View;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v9:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_getPosition_p0:F
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_getPosition_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v9, v6}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I
    
    move-result v7
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_return_field:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    .line 1794
    .local v7, "position":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    move/16 v17, v1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v7:F
    
    const/16 v8, 0x0
    
    cmpl-float v8, v15, v8
    
    if-eqz v8, :stigma_jump_label_4
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_4
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v0, v16
    move/16 v1, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ltz v7, :cond_4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    move/16 v17, v1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v14:F
    
    const/16 v8, 0x0
    
    cmpl-float v8, v15, v8
    
    if-eqz v8, :stigma_jump_label_6
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_6
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v0, v16
    move/16 v1, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v7, v14, :cond_4

    .line 1795
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    add-float v0, v0, v15
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    
    move-result-object v8
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    add-float v0, v0, v15
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z
    
    move-result v8
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    move/16 v17, v1
    move-object/16 v18, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v10, v15
    
    if-eqz v15, :stigma_jump_label_7
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_7
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v0, v16
    move/16 v1, v17
    move-object/16 v10, v18
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v8, :cond_1

    .line 1796
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v1
    move-object/16 v17, v10
    move-object/16 v18, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v0:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v11, v15
    
    if-eqz v15, :stigma_jump_label_8
    
    const-string v1, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v1, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v1, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_8
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v1, v16
    move-object/16 v10, v17
    move-object/16 v11, v18
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v0, :cond_4

    .line 1797
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v0, v6

    goto :goto_3
    :cond_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_v9_mOrientationHelper:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v8, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    add-float v0, v0, v15
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    add-float v0, v0, v15
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v8, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I
    
    move-result v8
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    move/16 v17, v1
    move-object/16 v18, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v3:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v10, v15
    
    if-eqz v15, :stigma_jump_label_10
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v0, v16
    move/16 v1, v17
    move-object/16 v10, v18
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v8, v3, :cond_3

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_v9_mOrientationHelper:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v8, v9, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 1800
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    add-float v0, v0, v15
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    add-float v0, v0, v15
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v8, v6}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I
    
    move-result v8
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    move/16 v17, v1
    move-object/16 v18, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v2:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v10, v15
    
    if-eqz v15, :stigma_jump_label_12
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v0, v16
    move/16 v1, v17
    move-object/16 v10, v18
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v8, v2, :cond_2

    goto :goto_2
    :cond_2
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v6
    :cond_3
    :goto_2
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    move-object/16 v17, v10
    move-object/16 v18, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v1:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v11, v15
    
    if-eqz v15, :stigma_jump_label_13
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move/16 v0, v16
    move-object/16 v10, v17
    move-object/16 v11, v18
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v1, :cond_4

    .line 1802
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v1, v6

    .line 1791
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    :cond_4
    :goto_3
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v10, 0x0
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v4:F
    
    add-float v10, v10, v15
    
    sput v10, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v10, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/2addr v5, v4

    goto :goto_1
    :cond_5
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v7, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v1:F
    
    const/16 v8, 0x0
    
    cmpl-float v8, v7, v8
    
    if-eqz v8, :stigma_jump_label_14
    
    const-string v15, "STIGMA"
    
    const-string v6, "Implicit flow involving sensitive data!"
    
    invoke-static {v15, v6},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v6
    
    invoke-static {v15, v6},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_14
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v1, :cond_6

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v1:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v5, v1

    goto :goto_4
    :cond_6
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v0:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v5, v0

    :goto_4
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v5
.end method
