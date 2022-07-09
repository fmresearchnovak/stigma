.class public final Lcom/fasterxml/jackson/core/io/NumberInput;
.super Ljava/lang/Object;
.source "NumberInput.java"


# static fields
.field static final L_BILLION:J = 0x3b9aca00L

.field static final MAX_LONG_STR:Ljava/lang/String;

.field static final MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

.field public static final NASTY_SMALL_DOUBLE:Ljava/lang/String; = "2.2250738585072012e-308"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 19
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inLongRange(Ljava/lang/String;Z)Z
    .locals 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "negative"    # Z

    .line 198
    if-eqz p1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    .line 199
    .local v0, "cmp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 200
    .local v1, "cmpLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 201
    .local v2, "alen":I
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    return v3

    .line 202
    :cond_1
    const/4 v4, 0x0

    if-le v2, v1, :cond_2

    return v4

    .line 205
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_5

    .line 206
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int/2addr v6, v7

    .line 207
    .local v6, "diff":I
    if-eqz v6, :cond_4

    .line 208
    if-gez v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return v3

    .line 205
    .end local v6    # "diff":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 211
    .end local v5    # "i":I
    :cond_5
    return v3
.end method

.method public static inLongRange([CIIZ)Z
    .locals 7
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "negative"    # Z

    .line 171
    if-eqz p3, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    .line 172
    .local v0, "cmpStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 173
    .local v1, "cmpLen":I
    const/4 v2, 0x1

    if-ge p2, v1, :cond_1

    return v2

    .line 174
    :cond_1
    const/4 v3, 0x0

    if-le p2, v1, :cond_2

    return v3

    .line 176
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 177
    add-int v5, p1, v4

    aget-char v5, p0, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    .line 178
    .local v5, "diff":I
    if-eqz v5, :cond_4

    .line 179
    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 176
    .end local v5    # "diff":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    .end local v4    # "i":I
    :cond_5
    return v2
.end method

.method public static parseAsDouble(Ljava/lang/String;D)D
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "def"    # D

    .line 290
    if-nez p0, :cond_0

    return-wide p1

    .line 291
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 293
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 294
    return-wide p1

    .line 297
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 298
    :catch_0
    move-exception v1

    .line 299
    return-wide p1
.end method

.method public static parseAsInt(Ljava/lang/String;I)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "def"    # I

    .line 216
    if-nez p0, :cond_0

    .line 217
    return p1

    .line 219
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 221
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 222
    return p1

    .line 225
    :cond_1
    const/4 v1, 0x0

    .line 227
    .local v1, "i":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 228
    .local v2, "sign":C
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    .line 229
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 231
    :cond_2
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    .line 232
    const/4 v1, 0x1

    .line 234
    :cond_3
    :goto_0
    if-ge v1, v0, :cond_6

    .line 235
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 237
    .local v3, "c":C
    const/16 v4, 0x39

    if-gt v3, v4, :cond_5

    const/16 v4, 0x30

    if-ge v3, v4, :cond_4

    goto :goto_1

    .line 234
    .end local v3    # "c":C
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .restart local v3    # "c":C
    :cond_5
    :goto_1
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int v4, v4

    return v4

    .line 240
    :catch_0
    move-exception v4

    .line 241
    .local v4, "e":Ljava/lang/NumberFormatException;
    return p1

    .line 246
    .end local v3    # "c":C
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    .line 247
    :catch_1
    move-exception v3

    .line 248
    return p1
.end method

.method public static parseAsLong(Ljava/lang/String;J)J
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "def"    # J

    .line 253
    if-nez p0, :cond_0

    .line 254
    return-wide p1

    .line 256
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 258
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 259
    return-wide p1

    .line 262
    :cond_1
    const/4 v1, 0x0

    .line 264
    .local v1, "i":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 265
    .local v2, "sign":C
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    .line 266
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 268
    :cond_2
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_3

    .line 269
    const/4 v1, 0x1

    .line 271
    :cond_3
    :goto_0
    if-ge v1, v0, :cond_6

    .line 272
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 274
    .local v3, "c":C
    const/16 v4, 0x39

    if-gt v3, v4, :cond_5

    const/16 v4, 0x30

    if-ge v3, v4, :cond_4

    goto :goto_1

    .line 271
    .end local v3    # "c":C
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .restart local v3    # "c":C
    :cond_5
    :goto_1
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-long v4, v4

    return-wide v4

    .line 277
    :catch_0
    move-exception v4

    .line 278
    .local v4, "e":Ljava/lang/NumberFormatException;
    return-wide p1

    .line 283
    .end local v3    # "c":C
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v3

    .line 284
    :catch_1
    move-exception v3

    .line 285
    return-wide p1
.end method

.method public static parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 314
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static parseBigDecimal([C)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "ch"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([C)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static parseBigDecimal([CII)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 318
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/BigDecimalParser;->parse([CII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 307
    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-wide/16 v0, 0x1

    return-wide v0

    .line 310
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 80
    .local v1, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 81
    .local v2, "len":I
    const/4 v3, 0x1

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 82
    .local v0, "neg":Z
    :cond_0
    const/4 v4, 0x1

    .line 85
    .local v4, "offset":I
    if-eqz v0, :cond_3

    .line 86
    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v4, v3

    goto :goto_1

    .line 87
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 91
    :cond_3
    const/16 v3, 0x9

    if-le v2, v3, :cond_4

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 95
    :cond_4
    :goto_1
    const/16 v3, 0x39

    if-gt v1, v3, :cond_10

    const/16 v5, 0x30

    if-ge v1, v5, :cond_5

    goto :goto_7

    .line 98
    :cond_5
    add-int/lit8 v6, v1, -0x30

    .line 99
    .local v6, "num":I
    if-ge v4, v2, :cond_e

    .line 100
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "offset":I
    .local v7, "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 101
    if-gt v1, v3, :cond_d

    if-ge v1, v5, :cond_6

    goto :goto_4

    .line 104
    :cond_6
    mul-int/lit8 v4, v6, 0xa

    add-int/lit8 v8, v1, -0x30

    add-int v6, v4, v8

    .line 105
    if-ge v7, v2, :cond_c

    .line 106
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 107
    if-gt v1, v3, :cond_b

    if-ge v1, v5, :cond_7

    goto :goto_3

    .line 110
    :cond_7
    mul-int/lit8 v7, v6, 0xa

    add-int/lit8 v8, v1, -0x30

    add-int v6, v7, v8

    .line 112
    if-ge v4, v2, :cond_e

    .line 114
    :cond_8
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 115
    if-gt v1, v3, :cond_a

    if-ge v1, v5, :cond_9

    goto :goto_2

    .line 118
    :cond_9
    mul-int/lit8 v4, v6, 0xa

    add-int/lit8 v8, v1, -0x30

    add-int v6, v4, v8

    .line 119
    move v4, v7

    if-lt v7, v2, :cond_8

    goto :goto_5

    .line 116
    :cond_a
    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 108
    .end local v7    # "offset":I
    .restart local v4    # "offset":I
    :cond_b
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 105
    .end local v4    # "offset":I
    .restart local v7    # "offset":I
    :cond_c
    move v4, v7

    goto :goto_5

    .line 102
    :cond_d
    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 123
    .end local v7    # "offset":I
    .restart local v4    # "offset":I
    :cond_e
    :goto_5
    if-eqz v0, :cond_f

    neg-int v3, v6

    goto :goto_6

    :cond_f
    move v3, v6

    :goto_6
    return v3

    .line 96
    .end local v6    # "num":I
    :cond_10
    :goto_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static parseInt([CII)I
    .locals 3
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 37
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p0, v0

    add-int/lit8 v0, v0, -0x30

    .line 39
    .local v0, "num":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .local v1, "off":I
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    const v2, 0x5f5e100

    mul-int p1, p1, v2

    add-int/2addr v0, p1

    move p1, v1

    .line 43
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :pswitch_1
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    const v2, 0x989680

    mul-int p1, p1, v2

    add-int/2addr v0, p1

    move p1, v1

    .line 45
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :pswitch_2
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    const v2, 0xf4240

    mul-int p1, p1, v2

    add-int/2addr v0, p1

    move p1, v1

    .line 47
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :pswitch_3
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    const v2, 0x186a0

    mul-int p1, p1, v2

    add-int/2addr v0, p1

    move p1, v1

    .line 49
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :pswitch_4
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x2710

    add-int/2addr v0, p1

    move p1, v1

    .line 51
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :pswitch_5
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v0, p1

    move p1, v1

    .line 53
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :pswitch_6
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    aget-char p1, p0, p1

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr v0, p1

    move p1, v1

    .line 55
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :pswitch_7
    aget-char v1, p0, p1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 57
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 146
    .local v0, "length":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 147
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 150
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static parseLong([CII)J
    .locals 5
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 129
    add-int/lit8 v0, p2, -0x9

    .line 130
    .local v0, "len1":I
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long v1, v1, v3

    .line 131
    .local v1, "val":J
    add-int v3, p1, v0

    const/16 v4, 0x9

    invoke-static {p0, v3, v4}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    return-wide v3
.end method
