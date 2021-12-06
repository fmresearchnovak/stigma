.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"



.method private onMeasureExactFormat(II)V
    .locals 40
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 178
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 179
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 180
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 182
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 183
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 185
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 188
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 191
    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v9, v2, v8

    .line 192
    .local v9, "cellCount":I
    rem-int v10, v2, v8

    .line 194
    .local v10, "cellSizeRemaining":I
    const/4 v11, 0x0

    if-nez v9, :cond_0

    .line 196
    invoke-virtual {v0, v2, v11}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 197
    return-void

    .line 200
    :cond_0
    div-int v12, v10, v9

    add-int/2addr v8, v12

    .line 202
    .local v8, "cellSize":I
    move v12, v9

    .line 203
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 204
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 205
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 206
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 207
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 210
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 212
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 213
    .local v11, "childCount":I
    const/16 v21, 0x0

    move/from16 v38, v16

    move/from16 v16, v3

    move/from16 v3, v38

    move/from16 v39, v21

    move/from16 v21, v4

    move/from16 v4, v39

    .local v3, "visibleItemCount":I
    .local v4, "i":I
    .local v16, "heightSize":I
    .local v21, "widthPadding":I
    :goto_0
    if-ge v4, v11, :cond_8

    .line 214
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 215
    .local v7, "child":Landroid/view/View;
    move/from16 v23, v9

    .end local v9    # "cellCount":I
    .local v23, "cellCount":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v24, v10

    .end local v10    # "cellSizeRemaining":I
    .local v24, "cellSizeRemaining":I
    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto/16 :goto_4

    .line 217
    :cond_1
    instance-of v9, v7, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 218
    .local v9, "isGeneratedItem":Z
    add-int/lit8 v3, v3, 0x1

    .line 220
    if-eqz v9, :cond_2

    .line 223
    iget v10, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v3

    const/4 v3, 0x0

    .end local v3    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    invoke-virtual {v7, v10, v3, v10, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 220
    .end local v25    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_2
    move/from16 v25, v3

    const/4 v3, 0x0

    .line 226
    .end local v3    # "visibleItemCount":I
    .restart local v25    # "visibleItemCount":I
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 227
    .local v10, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 228
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 229
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 230
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 231
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 232
    iput v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 233
    if-eqz v9, :cond_3

    move-object v3, v7

    check-cast v3, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 236
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v12

    .line 238
    .local v3, "cellsAvailable":I
    :goto_3
    move/from16 v26, v9

    .end local v9    # "isGeneratedItem":Z
    .local v26, "isGeneratedItem":Z
    invoke-static {v7, v8, v3, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 241
    .local v9, "cellsUsed":I
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 242
    move/from16 v27, v3

    .end local v3    # "cellsAvailable":I
    .local v27, "cellsAvailable":I
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v3, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 243
    :cond_5
    iget-boolean v3, v10, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v3, :cond_6

    const/16 v17, 0x1

    .line 245
    :cond_6
    sub-int/2addr v12, v9

    .line 246
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 247
    .end local v13    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_7

    shl-int/2addr v13, v4

    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .local v22, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .local v28, "cellsUsed":I
    int-to-long v9, v13

    or-long v9, v18, v9

    move v13, v3

    move-wide/from16 v18, v9

    move/from16 v3, v25

    .end local v18    # "smallestItemsAt":J
    .local v9, "smallestItemsAt":J
    goto :goto_4

    .end local v22    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v28    # "cellsUsed":I
    .local v9, "cellsUsed":I
    .restart local v10    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v18    # "smallestItemsAt":J
    :cond_7
    move/from16 v28, v9

    move-object/from16 v22, v10

    .end local v9    # "cellsUsed":I
    .end local v10    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v22    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "cellsUsed":I
    move v13, v3

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
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p2

    move/from16 v9, v23

    move/from16 v10, v24

    goto/16 :goto_0

    .end local v23    # "cellCount":I
    .end local v24    # "cellSizeRemaining":I
    .local v9, "cellCount":I
    .local v10, "cellSizeRemaining":I
    :cond_8
    move/from16 v23, v9

    move/from16 v24, v10

    .line 252
    .end local v4    # "i":I
    .end local v9    # "cellCount":I
    .end local v10    # "cellSizeRemaining":I
    .restart local v23    # "cellCount":I
    .restart local v24    # "cellSizeRemaining":I
    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v3, v4, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    .line 257
    .local v7, "centerSingleExpandedItem":Z
    :goto_5
    const/4 v9, 0x0

    .line 258
    .local v9, "needsExpansion":Z
    :goto_6
    const-wide/16 v25, 0x1

    const-wide/16 v27, 0x0

    if-lez v15, :cond_13

    if-lez v12, :cond_13

    .line 259
    const v10, 0x7fffffff

    .line 260
    .local v10, "minCells":I
    const-wide/16 v29, 0x0

    .line 261
    .local v29, "minCellsAt":J
    const/16 v31, 0x0

    .line 262
    .local v31, "minCellsItemCount":I
    const/16 v32, 0x0

    move/from16 v4, v31

    move/from16 v38, v32

    move/from16 v32, v5

    move/from16 v5, v38

    .end local v31    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v5, "i":I
    .local v32, "heightPadding":I
    :goto_7
    if-ge v5, v11, :cond_d

    .line 263
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    .line 264
    .local v33, "child":Landroid/view/View;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move/from16 v35, v9

    .end local v9    # "needsExpansion":Z
    .local v35, "needsExpansion":Z
    move-object/from16 v9, v34

    check-cast v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 267
    .local v9, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move/from16 v34, v15

    .end local v15    # "expandableItemCount":I
    .local v34, "expandableItemCount":I
    iget-boolean v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v15, :cond_a

    goto :goto_8

    .line 270
    :cond_a
    iget v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v15, v10, :cond_b

    .line 271
    iget v10, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 272
    shl-long v29, v25, v5

    .line 273
    const/4 v4, 0x1

    goto :goto_8

    .line 274
    :cond_b
    iget v15, v9, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v15, v10, :cond_c

    .line 275
    shl-long v36, v25, v5

    or-long v29, v29, v36

    .line 276
    add-int/lit8 v4, v4, 0x1

    .line 262
    .end local v9    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v33    # "child":Landroid/view/View;
    :cond_c
    :goto_8
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v34

    move/from16 v9, v35

    goto :goto_7

    .end local v34    # "expandableItemCount":I
    .end local v35    # "needsExpansion":Z
    .local v9, "needsExpansion":Z
    .restart local v15    # "expandableItemCount":I
    :cond_d
    move/from16 v35, v9

    move/from16 v34, v15

    .line 281
    .end local v5    # "i":I
    .end local v9    # "needsExpansion":Z
    .end local v15    # "expandableItemCount":I
    .restart local v34    # "expandableItemCount":I
    .restart local v35    # "needsExpansion":Z
    or-long v18, v18, v29

    .line 283
    if-le v4, v12, :cond_e

    move/from16 v36, v1

    move/from16 v37, v2

    goto/16 :goto_b

    .line 286
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 288
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9
    if-ge v5, v11, :cond_12

    .line 289
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 290
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 291
    .local v15, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    move/from16 v33, v4

    const/16 v22, 0x1

    .end local v4    # "minCellsItemCount":I
    .local v33, "minCellsItemCount":I
    shl-int v4, v22, v5

    move/from16 v36, v1

    move/from16 v37, v2

    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .local v36, "heightMode":I
    .local v37, "widthSize":I
    int-to-long v1, v4

    and-long v1, v29, v1

    cmp-long v4, v1, v27

    if-nez v4, :cond_f

    .line 293
    iget v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v1, v10, :cond_11

    shl-int v1, v22, v5

    int-to-long v1, v1

    or-long v18, v18, v1

    goto :goto_a

    .line 297
    :cond_f
    if-eqz v7, :cond_10

    iget-boolean v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    if-ne v12, v1, :cond_10

    .line 299
    iget v1, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int v2, v1, v8

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    :cond_10
    iget v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 302
    iput-boolean v2, v15, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 303
    add-int/lit8 v12, v12, -0x1

    .line 288
    .end local v9    # "child":Landroid/view/View;
    .end local v15    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_11
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v33

    move/from16 v1, v36

    move/from16 v2, v37

    goto :goto_9

    .end local v33    # "minCellsItemCount":I
    .end local v36    # "heightMode":I
    .end local v37    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .restart local v4    # "minCellsItemCount":I
    :cond_12
    move/from16 v36, v1

    move/from16 v37, v2

    move/from16 v33, v4

    .line 306
    .end local v1    # "heightMode":I
    .end local v2    # "widthSize":I
    .end local v4    # "minCellsItemCount":I
    .end local v5    # "i":I
    .restart local v33    # "minCellsItemCount":I
    .restart local v36    # "heightMode":I
    .restart local v37    # "widthSize":I
    const/4 v9, 0x1

    .line 307
    .end local v10    # "minCells":I
    .end local v29    # "minCellsAt":J
    .end local v33    # "minCellsItemCount":I
    .end local v35    # "needsExpansion":Z
    .local v9, "needsExpansion":Z
    move/from16 v5, v32

    move/from16 v15, v34

    const/4 v4, 0x2

    goto/16 :goto_6

    .line 258
    .end local v32    # "heightPadding":I
    .end local v34    # "expandableItemCount":I
    .end local v36    # "heightMode":I
    .end local v37    # "widthSize":I
    .restart local v1    # "heightMode":I
    .restart local v2    # "widthSize":I
    .local v5, "heightPadding":I
    .local v15, "expandableItemCount":I
    :cond_13
    move/from16 v36, v1

    move/from16 v37, v2

    move/from16 v32, v5

    move/from16 v35, v9

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
    if-nez v17, :cond_14

    const/4 v1, 0x1

    if-ne v3, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    .line 313
    .local v1, "singleItem":Z
    :goto_c
    if-lez v12, :cond_22

    cmp-long v2, v18, v27

    if-eqz v2, :cond_22

    add-int/lit8 v2, v3, -0x1

    if-lt v12, v2, :cond_16

    if-nez v1, :cond_16

    const/4 v2, 0x1

    if-le v14, v2, :cond_15

    goto :goto_d

    :cond_15
    move v10, v1

    goto/16 :goto_12

    .line 315
    :cond_16
    :goto_d
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    .line 317
    .local v2, "expandCount":F
    if-nez v1, :cond_19

    .line 319
    and-long v4, v18, v25

    const/high16 v9, 0x3f000000    # 0.5f

    cmp-long v10, v4, v27

    if-eqz v10, :cond_17

    .line 320
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 321
    .local v5, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v10, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v10, :cond_18

    sub-float/2addr v2, v9

    goto :goto_e

    .line 319
    .end local v5    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/4 v4, 0x0

    .line 323
    :cond_18
    :goto_e
    add-int/lit8 v5, v11, -0x1

    const/4 v10, 0x1

    shl-int v5, v10, v5

    int-to-long v4, v5

    and-long v4, v18, v4

    cmp-long v10, v4, v27

    if-eqz v10, :cond_19

    .line 324
    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 325
    .local v4, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v5, v4, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_19

    sub-float/2addr v2, v9

    .line 329
    .end local v4    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_19
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1a

    mul-int v4, v12, v8

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    move/from16 v20, v4

    goto :goto_f

    :cond_1a
    const/16 v20, 0x0

    :goto_f
    move/from16 v4, v20

    .line 332
    .local v4, "extraPixels":I
    const/4 v5, 0x0

    move/from16 v9, v35

    .end local v35    # "needsExpansion":Z
    .local v5, "i":I
    .restart local v9    # "needsExpansion":Z
    :goto_10
    if-ge v5, v11, :cond_21

    .line 333
    const/4 v10, 0x1

    shl-int v15, v10, v5

    move v10, v1

    move/from16 v20, v2

    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .local v10, "singleItem":Z
    .local v20, "expandCount":F
    int-to-long v1, v15

    and-long v1, v18, v1

    cmp-long v15, v1, v27

    if-nez v15, :cond_1b

    const/16 v25, 0x2

    goto :goto_11

    .line 335
    :cond_1b
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 336
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 337
    .local v2, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    instance-of v15, v1, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v15, :cond_1d

    .line 339
    iput v4, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 340
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 341
    if-nez v5, :cond_1c

    iget-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v15, :cond_1c

    .line 344
    neg-int v15, v4

    const/16 v25, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 346
    :cond_1c
    const/4 v9, 0x1

    const/16 v25, 0x2

    goto :goto_11

    .line 347
    :cond_1d
    iget-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v15, :cond_1e

    .line 348
    iput v4, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 349
    const/4 v15, 0x1

    iput-boolean v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 350
    neg-int v15, v4

    const/16 v25, 0x2

    div-int/lit8 v15, v15, 0x2

    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 351
    const/4 v9, 0x1

    goto :goto_11

    .line 356
    :cond_1e
    const/16 v25, 0x2

    if-eqz v5, :cond_1f

    .line 357
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 359
    :cond_1f
    add-int/lit8 v15, v11, -0x1

    if-eq v5, v15, :cond_20

    .line 360
    div-int/lit8 v15, v4, 0x2

    iput v15, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 332
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    :cond_20
    :goto_11
    add-int/lit8 v5, v5, 0x1

    move v1, v10

    move/from16 v2, v20

    goto :goto_10

    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .local v1, "singleItem":Z
    .local v2, "expandCount":F
    :cond_21
    move v10, v1

    move/from16 v20, v2

    .line 365
    .end local v1    # "singleItem":Z
    .end local v2    # "expandCount":F
    .end local v5    # "i":I
    .restart local v10    # "singleItem":Z
    .restart local v20    # "expandCount":F
    const/4 v12, 0x0

    goto :goto_13

    .line 313
    .end local v4    # "extraPixels":I
    .end local v9    # "needsExpansion":Z
    .end local v10    # "singleItem":Z
    .end local v20    # "expandCount":F
    .restart local v1    # "singleItem":Z
    .restart local v35    # "needsExpansion":Z
    :cond_22
    move v10, v1

    .line 369
    .end local v1    # "singleItem":Z
    .restart local v10    # "singleItem":Z
    :goto_12
    move/from16 v9, v35

    .end local v35    # "needsExpansion":Z
    .restart local v9    # "needsExpansion":Z
    :goto_13
    if-eqz v9, :cond_25

    .line 370
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v11, :cond_24

    .line 371
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 372
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 374
    .local v5, "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    iget-boolean v15, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v15, :cond_23

    move/from16 v22, v3

    goto :goto_15

    .line 376
    :cond_23
    iget v15, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v15, v15, v8

    iget v1, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v15, v1

    .line 377
    .local v15, "width":I
    move/from16 v22, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v3    # "visibleItemCount":I
    .local v22, "visibleItemCount":I
    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 370
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .end local v15    # "width":I
    :goto_15
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v22

    goto :goto_14

    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_24
    move/from16 v22, v3

    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    goto :goto_16

    .line 369
    .end local v2    # "i":I
    .end local v22    # "visibleItemCount":I
    .restart local v3    # "visibleItemCount":I
    :cond_25
    move/from16 v22, v3

    .line 382
    .end local v3    # "visibleItemCount":I
    .restart local v22    # "visibleItemCount":I
    :goto_16
    move/from16 v1, v36

    const/high16 v2, 0x40000000    # 2.0f

    .end local v36    # "heightMode":I
    .local v1, "heightMode":I
    if-eq v1, v2, :cond_26

    .line 383
    move v3, v13

    .end local v16    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_17

    .line 382
    .end local v3    # "heightSize":I
    .restart local v16    # "heightSize":I
    :cond_26
    move/from16 v3, v16

    .line 386
    .end local v16    # "heightSize":I
    .restart local v3    # "heightSize":I
    :goto_17
    move/from16 v2, v37

    .end local v37    # "widthSize":I
    .local v2, "widthSize":I
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 387
    return-void
.end method