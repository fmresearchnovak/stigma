.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    #p0:object, p1:object

    .line 86
    new-instance v0, Ljava/lang/StringBuilder; #v0:object, 

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V  

    const-string v1, "" #v1:object

    if-nez p0, :cond_0

    move-object p0, v1  #p0:object

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1  #p1:object

    .line 92
    :cond_1             #p0:object, p1:object, v1:object
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v1  #p0:object, p1:object, v1:[I

    const/4 v2, 0x0      #p0:object, p1:object, v1:[I, v2:32-bit

    .line 93
    aget v3, v1, v2      #p0:object, p1:object, v1:[I, v2:32-bit, v3:I

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1      #p0:object, p1:object, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit

    if-eq v3, v4, :cond_2

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    aget p0, v1, v6        #p0:I, p1:object, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit

    aget p1, v1, v5        #p0:I, p1:I, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0    #p0:object, p1:I, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit

    return-object p0    

    .line 100
    :cond_2         #p0:object, p1:object, v1:[I, v2:32-bit, v3:I, v4:32-bit, v5:32-bit, v6:32-bit
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v3   #p0:object, p1:object, v1:[I, v2:32-bit, v3:[I, v4:32-bit, v5:32-bit, v6:32-bit

    const/4 v7, 0x3  #p0:object, p1:object, v1:[I, v2:32-bit, v3:[I, v4:32-bit, v5:32-bit, v6:32-bit, v7:32-bit

    .line 101
    aget v8, v1, v7    #p0:object, p1:object, v1:[I, v2:32-bit, v3:[I, v4:32-bit, v5:32-bit, v6:32-bit, v7:32-bit, v8:I

    if-nez v8, :cond_3

    .line 104
    aget v1, v3, v7

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_3
    aget v7, v1, v5

    if-nez v7, :cond_4

    .line 110
    aget v1, v3, v5

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_4
    aget v7, v1, v6

    if-eqz v7, :cond_5

    .line 115
    aget v3, v3, v2

    add-int/2addr v3, v6

    .line 116
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    aget p0, v1, v6

    add-int/2addr p0, v3

    aget p1, v1, v5

    add-int/2addr v3, p1

    invoke-static {v0, p0, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_5
    aget v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    .line 123
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_6
    aget v7, v3, v2

    add-int/2addr v7, v5

    aget v9, v3, v6

    if-ge v7, v9, :cond_7

    aget v7, v3, v6

    aget v9, v3, v5

    if-ne v7, v9, :cond_7

    .line 133
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    aget p0, v3, v6

    aget p1, v3, v6

    aget v1, v1, v5

    add-int/2addr p1, v1

    add-int/2addr p1, v6

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 140
    :cond_7
    aget v7, v3, v5

    sub-int/2addr v7, v6

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 141
    aget v4, v3, v6

    goto :goto_0

    :cond_8
    add-int/lit8 v4, v7, 0x1

    .line 142
    :goto_0
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    aget p0, v3, v6

    aget p1, v1, v5

    add-int/2addr v4, p1

    invoke-static {v0, p0, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
    .end method