.class Ledu/fandm/enovak/a01;
.method public static A01(Lcom/facebook/ads/redexgen/X/IL;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 15

    move/from16 v3, p3

    .line 33864
    const/4 v8, 0x0

    .line 33865
    .end local v8
    .local p2, "endOfPixelCodeString":Z
    .local v8, "column":I
    :cond_0
    const/4 v6, 0x0

    .line 33866
    .local v3, "runLength":I
    const/4 v7, 0x0

    .line 33867
    .local v2, "clutIndex":I
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33868
    .local v3, "peek":I
    if-eqz v0, :cond_3

    .line 33869
    const/4 v6, 0x1

    .line 33870
    .end local p2    # "endOfPixelCodeString":Z
    .end local v3    # "peek":I
    .end local v2    # "clutIndex":I
    .local v6, "runLength":I
    .local v7, "clutIndex":I
    .local v4, "endOfPixelCodeString":Z
    :goto_0
    if-eqz v6, :cond_2

    move-object/from16 v1, p5

    if-eqz v1, :cond_2

    .line 33871
    if-eqz p2, :cond_1

    aget-byte v0, p2, v0

    :cond_1
    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33872
    int-to-float v10, v3

    move/from16 v2, p4

    int-to-float v11, v2

    add-int v0, v3, v6

    int-to-float v12, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v13, v0

    move-object v14, v1

    move-object/from16 v9, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 33873
    :cond_2
    add-int/2addr v3, v6

    .line 33874
    .end local v3
    .end local v6    # "runLength":I
    .end local v7    # "clutIndex":I
    if-eqz v8, :cond_0

    .line 33875
    return v3

    .line 33876
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "NWJ2j8DR8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "tuFwEgjWv5QsbV2rgY7O01mW2P3xd0b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v2, 0x3

    if-eqz v5, :cond_4

    .line 33877
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x3

    .line 33878
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto :goto_0

    .line 33879
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33880
    const/4 v6, 0x1

    move v0, v7

    goto :goto_0

    .line 33881
    :cond_5
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    if-eq v1, v0, :cond_9

    if-eq v1, v4, :cond_8

    if-eq v1, v2, :cond_6

    move v0, v7

    goto :goto_0

    .line 33882
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "aK1SAaExMssx18Id1roywrSfe1Et1yGa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-int/lit8 v6, v5, 0x1d

    .line 33883
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/GV;->A08:[Ljava/lang/String;

    const-string v1, "EWrEb5ztJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "osfW1bR5YMm4TxT0YESgxQn9EHcmZGy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v6, v5, 0xc

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    goto/16 :goto_0

    .line 33884
    :cond_8
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/lit8 v6, v0, 0xc

    .line 33885
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 33886
    goto/16 :goto_0

    .line 33887
    :cond_9
    const/4 v6, 0x2

    .line 33888
    move v0, v7

    goto/16 :goto_0

    .line 33889
    :cond_a
    const/4 v8, 0x1

    .line 33890
    move v0, v7

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
