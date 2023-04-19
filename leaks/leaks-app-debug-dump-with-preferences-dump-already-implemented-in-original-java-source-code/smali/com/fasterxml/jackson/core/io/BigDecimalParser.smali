.class public final Lcom/fasterxml/jackson/core/io/BigDecimalParser;
.super Ljava/lang/Object;
.source "BigDecimalParser.java"


# static fields
.field private static final MAX_CHARS_TO_REPORT:I = 0x3e8


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>([C)V
    .locals 0
    .param p1, "chars"    # [C

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    .line 29
    return-void
.end method

.method private adjustScale(IJ)I
    .locals 5
    .param p1, "scale"    # I
    .param p2, "exp"    # J

    .line 166
    int-to-long v0, p1

    sub-long/2addr v0, p2

    .line 167
    .local v0, "adjScale":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 172
    long-to-int v2, v0

    return v2

    .line 168
    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scale out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while adjusting scale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to exponent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parse(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "valueStr"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([C)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static parse([C)Ljava/math/BigDecimal;
    .locals 7
    .param p0, "chars"    # [C

    .line 43
    array-length v0, p0

    .line 45
    .local v0, "len":I
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 46
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v1

    .line 48
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/core/io/BigDecimalParser;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;-><init>([C)V

    div-int/lit8 v2, v0, 0xa

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parseBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "desc":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 53
    const-string v2, "Not a valid number representation"

    .line 56
    :cond_1
    array-length v3, p0

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_2

    .line 57
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([C)V

    .local v3, "stringToReport":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v3    # "stringToReport":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p0, v6, v4}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(truncated, full length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chars)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    .restart local v3    # "stringToReport":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" can not be represented as `java.math.BigDecimal`, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static parse([CII)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "chars"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 36
    if-gtz p1, :cond_0

    array-length v0, p0

    if-eq p2, v0, :cond_1

    .line 37
    :cond_0
    add-int v0, p1, p2

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([C)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private parseBigDecimal(I)Ljava/math/BigDecimal;
    .locals 17
    .param p1, "splitLen"    # I

    .line 68
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 69
    .local v2, "numHasSign":Z
    const/4 v3, 0x0

    .line 70
    .local v3, "expHasSign":Z
    const/4 v4, 0x0

    .line 71
    .local v4, "neg":Z
    const/4 v5, 0x0

    .line 72
    .local v5, "numIdx":I
    const/4 v6, -0x1

    .line 73
    .local v6, "expIdx":I
    const/4 v7, -0x1

    .line 74
    .local v7, "dotIdx":I
    const/4 v8, 0x0

    .line 75
    .local v8, "scale":I
    iget-object v9, v0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    array-length v9, v9

    .line 77
    .local v9, "len":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_9

    .line 78
    iget-object v11, v0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    aget-char v11, v11, v10

    .line 79
    .local v11, "c":C
    const-string v12, "Multiple signs in exponent"

    const-string v13, "Multiple signs in number"

    sparse-switch v11, :sswitch_data_0

    .line 123
    if-ltz v7, :cond_8

    const/4 v12, -0x1

    if-ne v6, v12, :cond_8

    .line 124
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 111
    :sswitch_0
    if-gez v6, :cond_0

    .line 114
    move v6, v10

    .line 115
    goto :goto_1

    .line 112
    :cond_0
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "Multiple exponent markers"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 117
    :sswitch_1
    if-gez v7, :cond_1

    .line 120
    move v7, v10

    .line 121
    goto :goto_1

    .line 118
    :cond_1
    new-instance v12, Ljava/lang/NumberFormatException;

    const-string v13, "Multiple decimal points"

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 95
    :sswitch_2
    if-ltz v6, :cond_3

    .line 96
    if-nez v3, :cond_2

    .line 99
    const/4 v3, 0x1

    goto :goto_1

    .line 97
    :cond_2
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 101
    :cond_3
    if-nez v2, :cond_4

    .line 104
    const/4 v2, 0x1

    .line 105
    const/4 v4, 0x1

    .line 106
    add-int/lit8 v5, v10, 0x1

    .line 108
    goto :goto_1

    .line 102
    :cond_4
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 81
    :sswitch_3
    if-ltz v6, :cond_6

    .line 82
    if-nez v3, :cond_5

    .line 85
    const/4 v3, 0x1

    goto :goto_1

    .line 83
    :cond_5
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 87
    :cond_6
    if-nez v2, :cond_7

    .line 90
    const/4 v2, 0x1

    .line 91
    add-int/lit8 v5, v10, 0x1

    .line 93
    goto :goto_1

    .line 88
    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 77
    .end local v11    # "c":C
    :cond_8
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 130
    .end local v10    # "i":I
    :cond_9
    const/4 v10, 0x0

    .line 131
    .local v10, "exp":I
    if-ltz v6, :cond_a

    .line 132
    move v11, v6

    .line 133
    .local v11, "numEndIdx":I
    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    add-int/lit8 v14, v6, 0x1

    sub-int v15, v9, v6

    add-int/lit8 v15, v15, -0x1

    invoke-direct {v12, v13, v14, v15}, Ljava/lang/String;-><init>([CII)V

    .line 134
    .local v12, "expStr":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 135
    int-to-long v13, v10

    invoke-direct {v0, v8, v13, v14}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->adjustScale(IJ)I

    move-result v8

    .line 136
    .end local v12    # "expStr":Ljava/lang/String;
    goto :goto_2

    .line 137
    .end local v11    # "numEndIdx":I
    :cond_a
    move v11, v9

    .line 142
    .restart local v11    # "numEndIdx":I
    :goto_2
    if-ltz v7, :cond_b

    .line 143
    sub-int v12, v7, v5

    .line 144
    .local v12, "leftLen":I
    invoke-direct {v0, v5, v12, v10, v1}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v13

    .line 146
    .local v13, "left":Ljava/math/BigDecimal;
    sub-int v14, v11, v7

    add-int/lit8 v14, v14, -0x1

    .line 147
    .local v14, "rightLen":I
    add-int/lit8 v15, v7, 0x1

    move/from16 v16, v2

    .end local v2    # "numHasSign":Z
    .local v16, "numHasSign":Z
    sub-int v2, v10, v14

    invoke-direct {v0, v15, v14, v2, v1}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v2

    .line 149
    .local v2, "right":Ljava/math/BigDecimal;
    invoke-virtual {v13, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 150
    .end local v12    # "leftLen":I
    .end local v13    # "left":Ljava/math/BigDecimal;
    .end local v14    # "rightLen":I
    .local v2, "res":Ljava/math/BigDecimal;
    goto :goto_3

    .line 151
    .end local v16    # "numHasSign":Z
    .local v2, "numHasSign":Z
    :cond_b
    move/from16 v16, v2

    .end local v2    # "numHasSign":Z
    .restart local v16    # "numHasSign":Z
    sub-int v2, v11, v5

    invoke-direct {v0, v5, v2, v10, v1}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v2

    .line 154
    .local v2, "res":Ljava/math/BigDecimal;
    :goto_3
    if-eqz v8, :cond_c

    .line 155
    invoke-virtual {v2, v8}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 158
    :cond_c
    if-eqz v4, :cond_d

    .line 159
    invoke-virtual {v2}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v2

    .line 162
    :cond_d
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_3
        0x2d -> :sswitch_2
        0x2e -> :sswitch_1
        0x45 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private toBigDecimalRec(IIII)Ljava/math/BigDecimal;
    .locals 4
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "scale"    # I
    .param p4, "splitLen"    # I

    .line 176
    if-le p2, p4, :cond_0

    .line 177
    div-int/lit8 v0, p2, 0x2

    .line 178
    .local v0, "mid":I
    add-int v1, p3, p2

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v1

    .line 179
    .local v1, "left":Ljava/math/BigDecimal;
    add-int v2, p1, v0

    sub-int v3, p2, v0

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->toBigDecimalRec(IIII)Ljava/math/BigDecimal;

    move-result-object v2

    .line 181
    .local v2, "right":Ljava/math/BigDecimal;
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 184
    .end local v0    # "mid":I
    .end local v1    # "left":Ljava/math/BigDecimal;
    .end local v2    # "right":Ljava/math/BigDecimal;
    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->chars:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/math/BigDecimal;-><init>([CII)V

    invoke-virtual {v0, p3}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_0
    return-object v0
.end method
