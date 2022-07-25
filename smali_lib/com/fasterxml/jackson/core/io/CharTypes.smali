.class public final Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;
    }
.end annotation


# static fields
.field protected static final HB:[B

.field protected static final HC:[C

.field protected static final sHexValues:[I

.field protected static final sInputCodes:[I

.field protected static final sInputCodesComment:[I

.field protected static final sInputCodesJsNames:[I

.field protected static final sInputCodesUTF8:[I

.field protected static final sInputCodesUtf8JsNames:[I

.field protected static final sInputCodesWS:[I

.field protected static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 7
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 10
    array-length v0, v0

    .line 11
    .local v0, "len":I
    new-array v1, v0, [B

    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    .line 12
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    sget-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    sget-object v3, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    aget-char v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_0
    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 29
    .local v1, "table":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x20

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 30
    aput v4, v1, v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 33
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x22

    const/4 v5, 0x1

    aput v5, v1, v2

    .line 34
    const/16 v6, 0x5c

    aput v5, v1, v6

    .line 35
    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    .line 44
    .end local v1    # "table":[I
    array-length v7, v1

    new-array v7, v7, [I

    .line 45
    .local v7, "table":[I
    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v1, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    const/16 v1, 0x80

    .local v1, "c":I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 50
    and-int/lit16 v8, v1, 0xe0

    const/16 v10, 0xc0

    if-ne v8, v10, :cond_2

    .line 51
    const/4 v8, 0x2

    .local v8, "code":I
    goto :goto_3

    .line 52
    .end local v8    # "code":I
    :cond_2
    and-int/lit16 v8, v1, 0xf0

    const/16 v10, 0xe0

    if-ne v8, v10, :cond_3

    .line 53
    const/4 v8, 0x3

    .restart local v8    # "code":I
    goto :goto_3

    .line 54
    .end local v8    # "code":I
    :cond_3
    and-int/lit16 v8, v1, 0xf8

    const/16 v10, 0xf0

    if-ne v8, v10, :cond_4

    .line 56
    const/4 v8, 0x4

    .restart local v8    # "code":I
    goto :goto_3

    .line 59
    .end local v8    # "code":I
    :cond_4
    const/4 v8, -0x1

    .line 61
    .restart local v8    # "code":I
    :goto_3
    aput v8, v7, v1

    .line 46
    .end local v8    # "code":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 63
    .end local v1    # "c":I
    :cond_5
    sput-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    .line 74
    .end local v7    # "table":[I
    new-array v1, v0, [I

    .line 76
    .local v1, "table":[I
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 78
    const/16 v7, 0x21

    .local v7, "i":I
    :goto_4
    if-ge v7, v0, :cond_7

    .line 79
    int-to-char v8, v7

    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 80
    aput v9, v1, v7

    .line 78
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 86
    .end local v7    # "i":I
    :cond_7
    const/16 v7, 0x40

    aput v9, v1, v7

    .line 87
    const/16 v7, 0x23

    aput v9, v1, v7

    .line 88
    const/16 v8, 0x2a

    aput v9, v1, v8

    .line 89
    const/16 v10, 0x2d

    aput v9, v1, v10

    .line 90
    const/16 v10, 0x2b

    aput v9, v1, v10

    .line 91
    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    .line 101
    .end local v1    # "table":[I
    new-array v10, v0, [I

    .line 103
    .local v10, "table":[I
    array-length v11, v10

    invoke-static {v1, v9, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    const/16 v1, 0x80

    invoke-static {v10, v1, v1, v9}, Ljava/util/Arrays;->fill([IIII)V

    .line 105
    sput-object v10, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 114
    .end local v10    # "table":[I
    new-array v10, v0, [I

    .line 116
    .local v10, "buf":[I
    sget-object v11, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v11, v1, v10, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    invoke-static {v10, v9, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 120
    const/16 v12, 0x9

    aput v9, v10, v12

    .line 121
    const/16 v13, 0xa

    aput v13, v10, v13

    .line 122
    const/16 v14, 0xd

    aput v14, v10, v14

    .line 123
    aput v8, v10, v8

    .line 124
    sput-object v10, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    .line 135
    .end local v10    # "buf":[I
    new-array v8, v0, [I

    .line 136
    .local v8, "buf":[I
    invoke-static {v11, v1, v8, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-static {v8, v9, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 142
    aput v5, v8, v3

    .line 143
    aput v5, v8, v12

    .line 144
    aput v13, v8, v13

    .line 145
    aput v14, v8, v14

    .line 146
    const/16 v5, 0x2f

    aput v5, v8, v5

    .line 147
    aput v7, v8, v7

    .line 148
    sput-object v8, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    .line 157
    .end local v8    # "buf":[I
    new-array v1, v1, [I

    .line 159
    .restart local v1    # "table":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v3, :cond_8

    .line 161
    aput v4, v1, v5

    .line 159
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 164
    .end local v5    # "i":I
    :cond_8
    aput v2, v1, v2

    .line 165
    aput v6, v1, v6

    .line 167
    const/16 v2, 0x8

    const/16 v3, 0x62

    aput v3, v1, v2

    .line 168
    const/16 v2, 0x74

    aput v2, v1, v12

    .line 169
    const/16 v2, 0xc

    const/16 v3, 0x66

    aput v3, v1, v2

    .line 170
    const/16 v2, 0x6e

    aput v2, v1, v13

    .line 171
    const/16 v2, 0x72

    aput v2, v1, v14

    .line 172
    sput-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 182
    .end local v1    # "table":[I
    new-array v0, v0, [I

    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 184
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v13, :cond_9

    .line 186
    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x30

    aput v0, v1, v2

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 188
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    const/4 v1, 0x6

    if-ge v0, v1, :cond_a

    .line 189
    sget-object v1, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 190
    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 192
    .end local v0    # "i":I
    :cond_a
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "content"    # Ljava/lang/String;

    .line 256
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 257
    .local v0, "escCodes":[I
    array-length v1, v0

    .line 258
    .local v1, "escLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 259
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 260
    .local v4, "c":C
    if-ge v4, v1, :cond_2

    aget v5, v0, v4

    if-nez v5, :cond_0

    goto :goto_1

    .line 264
    :cond_0
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    aget v5, v0, v4

    .line 266
    .local v5, "escCode":I
    if-gez v5, :cond_1

    .line 275
    const/16 v6, 0x75

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    const/16 v6, 0x30

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    move v6, v4

    .line 279
    .local v6, "value":I
    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    shr-int/lit8 v8, v6, 0x4

    aget-char v8, v7, v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    .end local v6    # "value":I
    goto :goto_2

    .line 282
    :cond_1
    int-to-char v6, v5

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 261
    .end local v5    # "escCode":I
    :cond_2
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    nop

    .line 258
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_3
    return-void
.end method

.method public static charToHex(I)I
    .locals 2
    .param p0, "ch"    # I

    .line 236
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    return v0
.end method

.method public static copyHexBytes()[B
    .locals 1

    .line 292
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .locals 1

    .line 288
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static get7BitOutputEscapes()[I
    .locals 1

    .line 212
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static get7BitOutputEscapes(I)[I
    .locals 1
    .param p0, "quoteChar"    # I

    .line 226
    const/16 v0, 0x22

    if-ne p0, v0, :cond_0

    .line 227
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0

    .line 229
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->instance:Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/CharTypes$AltEscapes;->escapesFor(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static getInputCodeComment()[I
    .locals 1

    .line 200
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static getInputCodeLatin1()[I
    .locals 1

    .line 194
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static getInputCodeLatin1JsNames()[I
    .locals 1

    .line 197
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static getInputCodeUtf8()[I
    .locals 1

    .line 195
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    return-object v0
.end method

.method public static getInputCodeUtf8JsNames()[I
    .locals 1

    .line 198
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method

.method public static getInputCodeWS()[I
    .locals 1

    .line 201
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    return-object v0
.end method

.method public static hexToChar(I)C
    .locals 1
    .param p0, "ch"    # I

    .line 242
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    aget-char v0, v0, p0

    return v0
.end method
