# methods
.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;
    .locals 22
    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;
    .param p1, "startOld"    # I
    .param p2, "endOld"    # I
    .param p3, "startNew"    # I
    .param p4, "endNew"    # I
    .param p5, "forward"    # [I
    .param p6, "backward"    # [I
    .param p7, "kOffset"    # I

    .line 204
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v18, p0
    
    move/16 v19, p1
    
    move/16 v20, p2
    
    move/16 v21, p3
    
    move/16 v22, p4
    
    move-object/16 v23, p5
    
    move-object/16 v24, p6
    
    move/16 v25, p7
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    sub-int v3, v20, v19

    .line 205
    .local v3, "oldSize":I
    sub-int v4, v22, v21

    .line 207
    .local v4, "newSize":I
    sub-int v5, v20, v19

    const/4 v6, 0x1

    if-lt v5, v6, :cond_f

    sub-int v5, v22, v21

    if-ge v5, v6, :cond_0

    move/from16 v17, v3

    goto/16 :goto_b

    .line 211
    :cond_0
    sub-int v5, v3, v4

    .line 212
    .local v5, "delta":I
    add-int v7, v3, v4

    add-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    .line 213
    .local v7, "dLimit":I
    sub-int v8, v25, v7

    sub-int/2addr v8, v6

    add-int v9, v25, v7

    add-int/2addr v9, v6

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 214
    sub-int v8, v25, v7

    sub-int/2addr v8, v6

    add-int/2addr v8, v5

    add-int v9, v25, v7

    add-int/2addr v9, v6

    add-int/2addr v9, v5

    invoke-static {v2, v8, v9, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 215
    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 216
    .local v8, "checkInFwd":Z
    :goto_0
    const/4 v9, 0x0

    .local v9, "d":I
    :goto_1
    if-gt v9, v7, :cond_e

    .line 217
    neg-int v11, v9

    .local v11, "k":I
    :goto_2
    if-gt v11, v9, :cond_7

    .line 222
    neg-int v12, v9

    if-eq v11, v12, :cond_3

    if-eq v11, v9, :cond_2

    add-int v12, v25, v11

    sub-int/2addr v12, v6

    aget v12, v1, v12

    add-int v13, v25, v11

    add-int/2addr v13, v6

    aget v13, v1, v13

    if-ge v12, v13, :cond_2

    goto :goto_3

    .line 226
    :cond_2
    add-int v12, v25, v11

    sub-int/2addr v12, v6

    aget v12, v1, v12

    add-int/2addr v12, v6

    .line 227
    .local v12, "x":I
    const/4 v13, 0x1

    .local v13, "removal":Z
    goto :goto_4

    .line 223
    .end local v12    # "x":I
    .end local v13    # "removal":Z
    :cond_3
    :goto_3
    add-int v12, v25, v11

    add-int/2addr v12, v6

    aget v12, v1, v12

    .line 224
    .restart local v12    # "x":I
    const/4 v13, 0x0

    .line 230
    .restart local v13    # "removal":Z
    :goto_4
    sub-int v14, v12, v11

    .line 232
    .local v14, "y":I
    :goto_5
    if-ge v12, v3, :cond_4

    if-ge v14, v4, :cond_4

    add-int v15, v19, v12

    add-int v10, v21, v14

    .line 233
    invoke-virtual {v0, v15, v10}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 234
    add-int/lit8 v12, v12, 0x1

    .line 235
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    goto :goto_5

    .line 237
    :cond_4
    add-int v10, v25, v11

    aput v12, v1, v10

    .line 238
    if-eqz v8, :cond_6

    sub-int v10, v5, v9

    add-int/2addr v10, v6

    if-lt v11, v10, :cond_6

    add-int v10, v5, v9

    sub-int/2addr v10, v6

    if-gt v11, v10, :cond_6

    .line 239
    add-int v10, v25, v11

    aget v10, v1, v10

    add-int v15, v25, v11

    aget v15, v2, v15

    if-lt v10, v15, :cond_5

    .line 240
    new-instance v6, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v6}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 241
    .local v6, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v10, v25, v11

    aget v10, v2, v10

    iput v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 242
    iget v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v10, v11

    iput v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 243
    add-int v10, v25, v11

    aget v10, v1, v10

    add-int v15, v25, v11

    aget v15, v2, v15

    sub-int/2addr v10, v15

    iput v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 244
    iput-boolean v13, v6, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 245
    const/4 v10, 0x0

    iput-boolean v10, v6, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 246
    return-object v6

    .line 239
    .end local v6    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 238
    :cond_6
    const/4 v10, 0x0

    .line 217
    .end local v12    # "x":I
    .end local v13    # "removal":Z
    .end local v14    # "y":I
    :goto_6
    add-int/lit8 v11, v11, 0x2

    goto :goto_2

    .line 250
    .end local v11    # "k":I
    :cond_7
    neg-int v11, v9

    .restart local v11    # "k":I
    :goto_7
    if-gt v11, v9, :cond_d

    .line 252
    add-int v12, v11, v5

    .line 255
    .local v12, "backwardK":I
    add-int v13, v9, v5

    if-eq v12, v13, :cond_9

    neg-int v13, v9

    add-int/2addr v13, v5

    if-eq v12, v13, :cond_8

    add-int v13, v25, v12

    sub-int/2addr v13, v6

    aget v13, v2, v13

    add-int v14, v25, v12

    add-int/2addr v14, v6

    aget v14, v2, v14

    if-ge v13, v14, :cond_8

    goto :goto_8

    .line 260
    :cond_8
    add-int v13, v25, v12

    add-int/2addr v13, v6

    aget v13, v2, v13

    sub-int/2addr v13, v6

    .line 261
    .local v13, "x":I
    const/4 v14, 0x1

    .local v14, "removal":Z
    goto :goto_9

    .line 257
    .end local v13    # "x":I
    .end local v14    # "removal":Z
    :cond_9
    :goto_8
    add-int v13, v25, v12

    sub-int/2addr v13, v6

    aget v13, v2, v13

    .line 258
    .restart local v13    # "x":I
    const/4 v14, 0x0

    .line 265
    .restart local v14    # "removal":Z
    :goto_9
    sub-int v15, v13, v12

    .line 267
    .local v15, "y":I
    :goto_a
    if-lez v13, :cond_a

    if-lez v15, :cond_a

    add-int v16, v19, v13

    add-int/lit8 v10, v16, -0x1

    add-int v16, v21, v15

    move/from16 v17, v3

    .end local v3    # "oldSize":I
    .local v17, "oldSize":I
    add-int/lit8 v3, v16, -0x1

    .line 268
    invoke-virtual {v0, v10, v3}, Landroid/support/v7/util/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 269
    add-int/lit8 v13, v13, -0x1

    .line 270
    add-int/lit8 v15, v15, -0x1

    move/from16 v3, v17

    const/4 v10, 0x0

    goto :goto_a

    .line 267
    .end local v17    # "oldSize":I
    .restart local v3    # "oldSize":I
    :cond_a
    move/from16 v17, v3

    .line 272
    .end local v3    # "oldSize":I
    .restart local v17    # "oldSize":I
    :cond_b
    add-int v3, v25, v12

    aput v13, v2, v3

    .line 273
    if-nez v8, :cond_c

    add-int v3, v11, v5

    neg-int v10, v9

    if-lt v3, v10, :cond_c

    add-int v3, v11, v5

    if-gt v3, v9, :cond_c

    .line 274
    add-int v3, v25, v12

    aget v3, v1, v3

    add-int v10, v25, v12

    aget v10, v2, v10

    if-lt v3, v10, :cond_c

    .line 275
    new-instance v3, Landroid/support/v7/util/DiffUtil$Snake;

    invoke-direct {v3}, Landroid/support/v7/util/DiffUtil$Snake;-><init>()V

    .line 276
    .local v3, "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    add-int v10, v25, v12

    aget v10, v2, v10

    iput v10, v3, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    .line 277
    iget v10, v3, Landroid/support/v7/util/DiffUtil$Snake;->x:I

    sub-int/2addr v10, v12

    iput v10, v3, Landroid/support/v7/util/DiffUtil$Snake;->y:I

    .line 278
    add-int v10, v25, v12

    aget v10, v1, v10

    add-int v16, v25, v12

    aget v16, v2, v16

    sub-int v10, v10, v16

    iput v10, v3, Landroid/support/v7/util/DiffUtil$Snake;->size:I

    .line 280
    iput-boolean v14, v3, Landroid/support/v7/util/DiffUtil$Snake;->removal:Z

    .line 281
    iput-boolean v6, v3, Landroid/support/v7/util/DiffUtil$Snake;->reverse:Z

    .line 282
    return-object v3

    .line 250
    .end local v3    # "outSnake":Landroid/support/v7/util/DiffUtil$Snake;
    .end local v12    # "backwardK":I
    .end local v13    # "x":I
    .end local v14    # "removal":Z
    .end local v15    # "y":I
    :cond_c
    add-int/lit8 v11, v11, 0x2

    move/from16 v3, v17

    const/4 v10, 0x0

    goto/16 :goto_7

    .end local v17    # "oldSize":I
    .local v3, "oldSize":I
    :cond_d
    move/from16 v17, v3

    .line 216
    .end local v3    # "oldSize":I
    .end local v11    # "k":I
    .restart local v17    # "oldSize":I
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .end local v17    # "oldSize":I
    .restart local v3    # "oldSize":I
    :cond_e
    move/from16 v17, v3

    .line 287
    .end local v3    # "oldSize":I
    .end local v9    # "d":I
    .restart local v17    # "oldSize":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v6, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    .end local v5    # "delta":I
    .end local v7    # "dLimit":I
    .end local v8    # "checkInFwd":Z
    .end local v17    # "oldSize":I
    .restart local v3    # "oldSize":I
    :cond_f
    move/from16 v17, v3

    .line 208
    .end local v3    # "oldSize":I
    .restart local v17    # "oldSize":I
    :goto_b
    const/4 v3, 0x0

    return-object v3
.end method
