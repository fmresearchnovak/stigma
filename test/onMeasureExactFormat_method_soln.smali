.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"


# methods
.method private onMeasureExactFormat(II)V
    .locals 44
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 178
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v40:F
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v41:F
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v42:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v40, p0
    
    move/16 v41, p1
    
    move/16 v42, p2
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v40:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object/from16 v0, v40

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v42:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static/range {v42 .. v42}, Landroid/view/View$MeasureSpec;->getMode(I)I
    
    move-result v1

    .line 179
    .local v1, "heightMode":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v41:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static/range {v41 .. v41}, Landroid/view/View$MeasureSpec;->getSize(I)I
    
    move-result v2

    .line 180
    .local v2, "widthSize":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v42:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static/range {v42 .. v42}, Landroid/view/View$MeasureSpec;->getSize(I)I
    
    move-result v3

    .line 182
    .local v3, "heightSize":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v40:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getPaddingLeft_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual/range {v40 .. v40}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I
    
    move-result v4
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v40:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getPaddingRight_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual/range {v40 .. v40}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I
    
    move-result v5
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    add-int/2addr v4, v5

    .line 183
    .local v4, "widthPadding":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v40:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getPaddingTop_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual/range {v40 .. v40}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I
    
    move-result v5
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v40:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getPaddingBottom_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual/range {v40 .. v40}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I
    
    move-result v6
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v6:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    add-int/2addr v5, v6

    .line 185
    .local v5, "heightPadding":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v6, -0x2

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v42:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move/from16 v7, v42

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildMeasureSpec_p0:F
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildMeasureSpec_p1:F
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v6:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildMeasureSpec_p2:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v7, v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I
    
    move-result v6
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    .line 188
    .local v6, "itemHeightSpec":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SUB instruction
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SUB instruction
    
    sub-int/2addr v2, v4

    .line 191
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_v0_mMinCellSize:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    add-float v10, v10, v11
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v8:F
    
    add-float v10, v10, v11
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    
    div-int v9, v2, v8

    .line 192
    .local v9, "cellCount":I
    rem-int v10, v2, v8

    .line 194
    .local v10, "cellSizeRemaining":I
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v12, 0x0
    
    sput v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v11, 0x0

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v14, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
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
    
    if-nez v9, :cond_0

    .line 196
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_setMeasuredDimension_p0:F
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_setMeasuredDimension_p1:F
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    sput v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_setMeasuredDimension_p2:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v2, v11}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 197
    return-void
    :cond_0
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    const/16 v0, 0x0
    
    sget v13, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    add-float v0, v0, v13
    
    sget v13, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    add-float v0, v0, v13
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    
    
    move-object/16 v0, v43
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    div-int v12, v10, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v13, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    add-float v0, v0, v13
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/2addr v8, v12

    .line 202
    .local v8, "cellSize":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v12, v9

    .line 203
    .local v12, "cellsRemaining":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v13:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v13, 0x0

    .line 204
    .local v13, "maxChildHeight":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v14:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v14, 0x0

    .line 205
    .local v14, "maxCellsUsed":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v15, 0x0

    .line 206
    .local v15, "expandableItemCount":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v16:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v16, 0x0

    .line 207
    .local v16, "visibleItemCount":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v17:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v17, 0x0

    .line 210
    .local v17, "hasOverflow":Z
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v18:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const-wide/16 v18, 0x0

    .line 212
    .local v18, "smallestItemsAt":J
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v40:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildCount_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual/range {v40 .. v40}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I
    
    move-result v11
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 213
    .local v11, "childCount":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v21:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v21, 0x0

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v16:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v38:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v38, v16

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v16:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v16, v3

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v38:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v3, v38

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v21:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v39:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v39, v21

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v21:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v21, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v39:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v4, v39

    .local v3, "visibleItemCount":I
    .local v4, "i":I
    .local v16, "heightSize":I
    .local v21, "widthPadding":I
    :goto_0
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_2
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_2
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v4, v11, :cond_8

    .line 214
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v1
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p0:F
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
    
    move-result-object v7
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move/16 v1, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 215
    .local v7, "child":Landroid/view/View;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v23:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v23, v9

    .end local v9    # "cellCount":I
    .local v23, "cellCount":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I
    
    move-result v9
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v24:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v24, v10

    .end local v10    # "cellSizeRemaining":I
    .local v24, "cellSizeRemaining":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v10, 0x8

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v11, v12
    
    if-eqz v12, :stigma_jump_label_4
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_4
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ne v9, v10, :cond_1

    goto/16 :goto_4
    :cond_1
    instance-of v9, v7, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 218
    .local v9, "isGeneratedItem":Z
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v3, v3, 0x1

    .line 220
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_5
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_5
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v9, :cond_2

    .line 223
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v1
    move/16 v44, v11
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_v0_mGeneratedItemPadding:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move/16 v1, v43
    move/16 v11, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v10, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v25, v3

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v3, 0x0

    .end local v3    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    invoke-virtual {v7, v10, v3, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    goto :goto_1
    :cond_2
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v25, v3

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v3, 0x0

    .line 226
    .end local v3    # "visibleItemCount":I
    .restart local v25    # "visibleItemCount":I
    :goto_1
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    
    move-result-object v10
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 227
    .local v10, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_expanded:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_extraPixels:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_cellsUsed:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_expandable:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_leftMargin:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 232
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_rightMargin:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 233
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_6
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_6
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v9, :cond_3

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move-object v3, v7

    check-cast v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_view_menu_ActionMenuItemView_hasText_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z
    
    move-result v3
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_view_menu_ActionMenuItemView_return_field:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_7
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_7
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v3, :cond_3

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v3, 0x1

    goto :goto_2
    :cond_3
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v3, 0x0

    :goto_2
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_preventEdgeOffset:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_isOverflowButton:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_8
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_8
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v3, :cond_4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v3, 0x1

    goto :goto_3
    :cond_4
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v3, v12

    .line 238
    .local v3, "cellsAvailable":I
    :goto_3
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v26:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v26, v9

    .end local v9    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_measureChildForCells_p0:F
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v8:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_measureChildForCells_p1:F
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_measureChildForCells_p2:F
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v6:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_measureChildForCells_p3:F
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_measureChildForCells_p4:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-static {v7, v8, v3, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I
    
    move-result v9
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 241
    .local v9, "cellsUsed":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v14:F
    
    add-float v0, v0, v1
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v14:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I
    
    move-result v14
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 242
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v27:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v27, v3

    .end local v3    # "cellsAvailable":I
    .local v27, "cellsAvailable":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_expandable:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_9
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_9
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v3, :cond_5

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v15, v15, 0x1

    .line 243
    :cond_5
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v10_isOverflowButton:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_10
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v3, :cond_6

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v17:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v17, 0x1

    .line 245
    :cond_6
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SUB instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SUB instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    sub-int/2addr v12, v9

    .line 246
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I
    
    move-result v3
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v13:F
    
    add-float v0, v0, v1
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I
    
    move-result v3
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 247
    .end local v13    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v13:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v13, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v13:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_12
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ne v9, v13, :cond_7

    shl-int/2addr v13, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v28:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v28, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v22:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .local v22, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .local v28, "cellsUsed":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONVERTER: int-to-long
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v13:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONVERTER: int-to-long
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    int-to-long v9, v13

    or-long v9, v18, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v13:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v13, v3

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v18:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move-wide/from16 v18, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v3, v25

    .end local v18    # "smallestItemsAt":J
    .local v9, "smallestItemsAt":J
    goto :goto_4
    :cond_7
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v28:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v28, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v22:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v22    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "cellsUsed":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v13:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v13, v3

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-object/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-object/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v3, v25

    .line 213
    .end local v7    # "child":Landroid/view/View;
    .end local v22    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v25    # "visibleItemCount":I
    .end local v26    # "isGeneratedItem":Z
    .end local v27    # "cellsAvailable":I
    .end local v28    # "cellsUsed":I
    .local v3, "visibleItemCount":I
    .restart local v13    # "maxChildHeight":I
    :goto_4
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v4, v4, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v42:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v7, v42

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v23:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v9, v23

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v24:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v10, v24

    goto/16 :goto_0
    :cond_8
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v23:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v23, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v24:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v24, v10

    .line 252
    .end local v4    # "i":I
    .end local v9    # "cellCount":I
    .end local v10    # "cellSizeRemaining":I
    .restart local v23    # "cellCount":I
    .restart local v24    # "cellSizeRemaining":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v4, 0x2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v17:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_13
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v17, :cond_9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_15
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_15
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ne v3, v4, :cond_9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v7, 0x1

    goto :goto_5
    :cond_9
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v7, 0x0

    .line 257
    .local v7, "centerSingleExpandedItem":Z
    :goto_5
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v9, 0x0

    .line 258
    .local v9, "needsExpansion":Z
    :goto_6
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const-wide/16 v25, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v27:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const-wide/16 v27, 0x0

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_16
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_16
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-lez v15, :cond_13

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_17
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_17
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-lez v12, :cond_13

    .line 259
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const v10, 0x7fffffff

    .line 260
    .local v10, "minCells":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v29:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const-wide/16 v29, 0x0

    .line 261
    .local v29, "minCellsAt":J
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v31:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v31, 0x0

    .line 262
    .local v31, "minCellsItemCount":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v32:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v32, 0x0

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v31:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v4, v31

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v32:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v38:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v38, v32

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v32:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v32, v5

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v38:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v5, v38

    .end local v31    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v5, "i":I
    .local v32, "heightPadding":I
    :goto_7
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_19
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_19
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v5, v11, :cond_d

    .line 263
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v1
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p0:F
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
    
    move-result-object v33
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v33:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move/16 v1, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 264
    .local v33, "child":Landroid/view/View;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v33:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v34:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    
    move-result-object v34
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v35:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v35, v9

    .end local v9    # "needsExpansion":Z
    .local v35, "needsExpansion":Z
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v34:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move-object/from16 v9, v34

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 267
    .local v9, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v34:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v34, v15

    .end local v15    # "expandableItemCount":I
    .local v34, "expandableItemCount":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v9_expandable:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_20
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_20
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v15, :cond_a

    goto :goto_8
    :cond_a
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v9_cellsUsed:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v11, v12
    
    if-eqz v12, :stigma_jump_label_22
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_22
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v15, v10, :cond_b

    .line 271
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v9_cellsUsed:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 272
    shl-long v29, v25, v5

    .line 273
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v4, 0x1

    goto :goto_8
    :cond_b
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v9_cellsUsed:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v11, v12
    
    if-eqz v12, :stigma_jump_label_24
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_24
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ne v15, v10, :cond_c

    .line 275
    shl-long v36, v25, v5

    or-long v29, v29, v36

    .line 276
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v4, v4, 0x1

    .line 262
    .end local v9    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v33    # "child":Landroid/view/View;
    :cond_c
    :goto_8
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v5, v5, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v34:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v15, v34

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v35:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v9, v35

    goto :goto_7
    :cond_d
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v35:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v35, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v34:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v34, v15

    .line 281
    .end local v5    # "i":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v34    # "expandableItemCount":I
    .restart local v35    # "needsExpansion":Z
    or-long v18, v18, v29

    .line 283
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_26
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_26
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-le v4, v12, :cond_e

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v36:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v36, v1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v37:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v37, v2

    goto/16 :goto_b
    :cond_e
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v10, v10, 0x1

    .line 288
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_28
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_28
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v5, v11, :cond_12

    .line 289
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v1
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p0:F
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
    
    move-result-object v9
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move/16 v1, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 290
    .local v9, "child":Landroid/view/View;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    
    move-result-object v15
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    check-cast v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 291
    .local v15, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v33:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v33, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v22:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v22, 0x1

    .end local v4    # "minCellsItemCount":I
    .local v33, "minCellsItemCount":I
    shl-int v4, v22, v5

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v36:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v36, v1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v37:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v37, v2

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .local v36, "heightMode":I
    .local v37, "widthSize":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONVERTER: int-to-long
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONVERTER: int-to-long
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    int-to-long v1, v4

    and-long v1, v29, v1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v27:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v11, v12
    
    if-eqz v12, :stigma_jump_label_30
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_30
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    cmp-long v4, v1, v27

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-wide/16 v44, v1
    move/16 v46, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    const/16 v2, 0x0
    
    cmpl-float v2, v10, v2
    
    if-eqz v2, :stigma_jump_label_31
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_31
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-wide/16 v1, v44
    move/16 v10, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v4, :cond_f

    .line 293
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v15_cellsUsed:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v11
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_33
    
    const-string v0, "STIGMA"
    
    const-string v11, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v11},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v11
    
    invoke-static {v0, v11},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_33
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v11, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ne v1, v10, :cond_11

    shl-int v1, v22, v5

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    int-to-long v1, v1

    or-long v18, v18, v1

    goto :goto_a
    :cond_f
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-wide/16 v44, v1
    move/16 v46, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v7:F
    
    const/16 v2, 0x0
    
    cmpl-float v2, v10, v2
    
    if-eqz v2, :stigma_jump_label_34
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_34
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-wide/16 v1, v44
    move/16 v10, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v7, :cond_10

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v15_preventEdgeOffset:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v11, v12
    
    if-eqz v12, :stigma_jump_label_35
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_35
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v1, :cond_10

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v1, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v11, v13
    
    if-eqz v13, :stigma_jump_label_37
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_37
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ne v12, v1, :cond_10

    .line 299
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v10
    move/16 v44, v11
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_v0_mGeneratedItemPadding:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move/16 v10, v43
    move/16 v11, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    add-float v0, v0, v10
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v8:F
    
    add-float v0, v0, v10
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int v2, v1, v8

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v4, 0x0

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    invoke-virtual {v9, v2, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    :cond_10
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v15_cellsUsed:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v2, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    add-float v0, v0, v10
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/2addr v1, v2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v15_cellsUsed:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v15_expanded:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput-boolean v2, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 303
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v12, v12, -0x1

    .line 288
    .end local v9    # "child":Landroid/view/View;
    .end local v15    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_11
    :goto_a
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    add-float v0, v0, v10
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v5, v5, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v33:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v4, v33

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v36:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v1, v36

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v37:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v2, v37

    goto :goto_9
    :cond_12
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v36:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v36, v1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v37:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v37, v2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v33:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v33, v4

    .line 306
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v4    # "minCellsItemCount":I
    .end local v5    # "i":I
    .restart local v33    # "minCellsItemCount":I
    .restart local v36    # "heightMode":I
    .restart local v37    # "widthSize":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v9, 0x1

    .line 307
    .end local v10    # "minCells":I
    .end local v29    # "minCellsAt":J
    .end local v33    # "minCellsItemCount":I
    .end local v35    # "needsExpansion":Z
    .local v9, "needsExpansion":Z
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v32:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v5, v32

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v34:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v15, v34

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v4, 0x2

    goto/16 :goto_6
    :cond_13
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v36:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v36, v1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v37:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v37, v2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v32:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v32, v5

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v35:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v35, v9

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v34:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v34, v15

    .line 312
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v5    # "heightPadding":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v32    # "heightPadding":I
    .restart local v34    # "expandableItemCount":I
    .restart local v35    # "needsExpansion":Z
    .restart local v36    # "heightMode":I
    .restart local v37    # "widthSize":I
    :goto_b
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v17:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_38
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_38
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v17, :cond_14

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v1, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v11, v12
    
    if-eqz v12, :stigma_jump_label_40
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_40
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ne v3, v1, :cond_14

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v1, 0x1

    goto :goto_c
    :cond_14
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v1, 0x0

    .line 313
    .local v1, "singleItem":Z
    :goto_c
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_41
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_41
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-lez v12, :cond_22

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v27:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_43
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_43
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    cmp-long v2, v18, v27

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_44
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_44
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v2, :cond_22

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v2, v3, -0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_46
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_46
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-lt v12, v2, :cond_16

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v11, v12
    
    if-eqz v12, :stigma_jump_label_47
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_47
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v1, :cond_16

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v2, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_49
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_49
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-le v14, v2, :cond_15

    goto :goto_d
    :cond_15
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v11
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v11, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v10, v1

    goto/16 :goto_12
    :cond_16
    :goto_d
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v18:F
    
    add-float v0, v0, v1
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v19:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I
    
    move-result v2
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    int-to-float v2, v2

    .line 317
    .local v2, "expandCount":F
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v11
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v11, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v11, v12
    
    if-eqz v12, :stigma_jump_label_50
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_50
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v11, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v1, :cond_19

    .line 319
    and-long v4, v18, v25

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/high16 v9, 0x3f000000    # 0.5f

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v27:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_52
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_52
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    cmp-long v10, v4, v27

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_53
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_53
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v10, :cond_17

    .line 320
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-wide/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-wide/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v4, 0x0

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v1
    move-wide/16 v44, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p0:F
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
    
    move-result-object v5
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move/16 v1, v43
    move-wide/16 v10, v44
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-wide/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    
    move-result-object v5
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-wide/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 321
    .local v5, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v5_preventEdgeOffset:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v10, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_54
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_54
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v10, :cond_18

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SUB instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SUB instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    sub-float/2addr v2, v9

    goto :goto_e
    :cond_17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-wide/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-wide/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v4, 0x0

    .line 323
    :cond_18
    :goto_e
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v5, v11, -0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v10, 0x1

    shl-int v5, v10, v5

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONVERTER: int-to-long
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONVERTER: int-to-long
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    int-to-long v4, v5

    and-long v4, v18, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v27:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_56
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_56
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    cmp-long v10, v4, v27

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_57
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_57
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v10, :cond_19

    .line 324
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-wide/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-wide/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v4, v11, -0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v1
    move-wide/16 v44, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p0:F
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
    
    move-result-object v4
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move/16 v1, v43
    move-wide/16 v10, v44
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-wide/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    
    move-result-object v4
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-wide/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    check-cast v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 325
    .local v4, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-wide/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v4_preventEdgeOffset:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-wide/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v5, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-wide/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    const/16 v11, 0x0
    
    cmpl-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_58
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_58
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-wide/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v5, :cond_19

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move-wide/16 v45, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SUB instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SUB instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move-wide/16 v10, v45
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    sub-float/2addr v2, v9

    .line 329
    .end local v4    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_19
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v4, 0x0

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_60
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_60
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    cmpl-float v4, v2, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_61
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_61
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-lez v4, :cond_1a

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v13
    move/16 v46, v14
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MUL instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    add-float v0, v0, v1
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v8:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MUL instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v13, v45
    move/16 v14, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    mul-int v4, v12, v8

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    int-to-float v4, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    div-float/2addr v4, v2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    float-to-int v4, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v20:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v20, v4

    goto :goto_f
    :cond_1a
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v20:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v20, 0x0

    :goto_f
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v20:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v4, v20

    .line 332
    .local v4, "extraPixels":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v5, 0x0

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v35:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v9, v35

    .end local v35    # "needsExpansion":Z
    .local v5, "i":I
    .restart local v9    # "needsExpansion":Z
    :goto_10
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_63
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_63
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v5, v11, :cond_21

    .line 333
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v10, 0x1

    shl-int v15, v10, v5

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v12
    move/16 v45, v13
    move/16 v46, v14
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v12, v44
    move/16 v13, v45
    move/16 v14, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v10, v1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v20:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v20, v2

    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .local v10, "singleItem":Z
    .local v20, "expandCount":F
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONVERTER: int-to-long
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONVERTER: int-to-long
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    int-to-long v1, v15

    and-long v1, v18, v1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v27:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_65
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_65
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    cmp-long v15, v1, v27

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-wide/16 v44, v1
    move/16 v46, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    const/16 v2, 0x0
    
    cmpl-float v2, v10, v2
    
    if-eqz v2, :stigma_jump_label_66
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_66
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-wide/16 v1, v44
    move/16 v10, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v15, :cond_1b

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-wide/16 v44, v1
    move/16 v46, v10
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-wide/16 v1, v44
    move/16 v10, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v25, 0x2

    goto :goto_11
    :cond_1b
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v10
    move/16 v44, v12
    move/16 v45, v13
    move/16 v46, v14
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p0:F
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
    
    move-result-object v1
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move/16 v10, v43
    move/16 v12, v44
    move/16 v13, v45
    move/16 v14, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 336
    .local v1, "child":Landroid/view/View;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    add-float v0, v0, v10
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    
    move-result-object v2
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 337
    .local v2, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    instance-of v15, v1, Landroid/support/v7/view/menu/ActionMenuItemView;

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_67
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_67
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v15, :cond_1d

    .line 339
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_extraPixels:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v4, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 340
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v15, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_expanded:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 341
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_68
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_68
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v5, :cond_1c

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_preventEdgeOffset:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_69
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_69
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v15, :cond_1c

    .line 344
    neg-int v15, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v25, 0x2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    div-int/lit8 v15, v15, 0x2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_leftMargin:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 346
    :cond_1c
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v9, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v25, 0x2

    goto :goto_11
    :cond_1d
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass2;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_isOverflowButton:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_70
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_70
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v15, :cond_1e

    .line 348
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_extraPixels:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v4, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 349
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v15, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_expanded:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    neg-int v15, v4

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v25, 0x2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    div-int/lit8 v15, v15, 0x2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_rightMargin:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 351
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v9, 0x1

    goto :goto_11
    :cond_1e
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v25:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/16 v25, 0x2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_71
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_71
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v5, :cond_1f

    .line 357
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    div-int/lit8 v15, v4, 0x2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_leftMargin:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 359
    :cond_1f
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v15, v11, -0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_73
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_73
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eq v5, v15, :cond_20

    .line 360
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for DIV instruction
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    div-int/lit8 v15, v4, 0x2

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move-object/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v2_rightMargin:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    
    move-object/16 v0, v43
    move-object/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 332
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_20
    :goto_11
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    add-float v0, v0, v10
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v5, v5, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v12
    move/16 v45, v13
    move/16 v46, v14
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v12, v44
    move/16 v13, v45
    move/16 v14, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v1, v10

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v20:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v2, v20

    goto :goto_10
    :cond_21
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v12
    move/16 v45, v13
    move/16 v46, v14
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v12, v44
    move/16 v13, v45
    move/16 v14, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v10, v1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v20:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v20, v2

    .line 365
    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .end local v5    # "i":I
    .restart local v10    # "singleItem":Z
    .restart local v20    # "expandCount":F
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v12:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v12, 0x0

    goto :goto_13
    :cond_22
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v11
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v11, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v10, v1

    .line 369
    .end local v1    # "singleItem":Z
    .restart local v10    # "singleItem":Z
    :goto_12
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v35:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v11, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v9, v35

    .end local v35    # "needsExpansion":Z
    .restart local v9    # "needsExpansion":Z
    :goto_13
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v9:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_74
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_74
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eqz v9, :cond_25

    .line 370
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v11:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_76
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_76
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-ge v2, v11, :cond_24

    .line 371
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v1
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p0:F
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
    
    move-result-object v4
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_return_field:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    
    move/16 v1, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    .line 372
    .local v4, "child":Landroid/view/View;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v4:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    
    move-result-object v5
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 374
    .local v5, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v5_expanded:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget-boolean v15, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    const/16 v12, 0x0
    
    cmpl-float v12, v10, v12
    
    if-eqz v12, :stigma_jump_label_77
    
    const-string v0, "STIGMA"
    
    const-string v1, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v1
    
    invoke-static {v0, v1},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_77
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-nez v15, :cond_23

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v22:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v22, v3

    goto :goto_15
    :cond_23
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v5_cellsUsed:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v15, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MUL instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    add-float v0, v0, v1
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v8:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MUL instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    mul-int v15, v15, v8

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView$LayoutParams_v5_extraPixels:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    iget v1, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    add-float v0, v0, v10
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/2addr v15, v1

    .line 377
    .local v15, "width":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v22:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v22, v3

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/high16 v1, 0x40000000    # 2.0f

    .end local v3    # "visibleItemCount":I
    .local v22, "visibleItemCount":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v0, 0x0
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v15:F
    
    add-float v0, v0, v10
    
    sget v10, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    add-float v0, v0, v10
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
    
    move-result v3
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 370
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v15    # "width":I
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    :goto_15
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/16 v0, 0x0
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    add-float v0, v0, v1
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    add-int/lit8 v2, v2, 0x1

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v22:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v3, v22

    goto :goto_14
    :cond_24
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v22:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v22, v3

    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    goto :goto_16
    :cond_25
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v22:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v22, v3

    .line 382
    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    :goto_16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v36:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v1, v36

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const/high16 v2, 0x40000000    # 2.0f

    .end local v36    # "heightMode":I
    .local v1, "heightMode":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v12, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    const/16 v13, 0x0
    
    cmpl-float v13, v12, v13
    
    if-eqz v13, :stigma_jump_label_79
    
    const-string v0, "STIGMA"
    
    const-string v10, "Implicit flow involving sensitive data!"
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    invoke-static {v0, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_79
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    
    move-object/16 v0, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    if-eq v1, v2, :cond_26

    .line 383
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v13:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v3, v13

    .end local v16    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_17
    :cond_26
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v16:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v3, v16

    .line 386
    .end local v16    # "heightSize":I
    .restart local v3    # "heightSize":I
    :goto_17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v43, v0
    move/16 v44, v1
    move/16 v45, v10
    move/16 v46, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v37:F
    
    sput v0, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v43
    move/16 v1, v44
    move/16 v10, v45
    move/16 v12, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move/from16 v2, v37

    .end local v37    # "widthSize":I
    .local v2, "widthSize":I
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v43, v1
    move/16 v44, v10
    move/16 v45, v12
    move/16 v46, v13
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_setMeasuredDimension_p0:F
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v2:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_setMeasuredDimension_p1:F
    
    sget v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_onMeasureExactFormat_v3:F
    
    sput v1, Lnet/stigmastorage/StorageClass4;->android_support_v7_widget_ActionMenuView_setMeasuredDimension_p2:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 387
    
    move/16 v1, v43
    move/16 v10, v44
    move/16 v12, v45
    move/16 v13, v46
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    return-void
.end method
