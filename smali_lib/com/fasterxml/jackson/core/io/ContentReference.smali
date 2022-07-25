.class public Lcom/fasterxml/jackson/core/io/ContentReference;
.super Ljava/lang/Object;
.source "ContentReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_MAX_CONTENT_SNIPPET:I = 0x1f4

.field protected static final UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _isContentTextual:Z

.field protected final _length:I

.field protected final _offset:I

.field protected final transient _rawContent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "isContentTextual"    # Z
    .param p2, "rawContent"    # Ljava/lang/Object;

    .line 80
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;II)V

    .line 81
    return-void
.end method

.method protected constructor <init>(ZLjava/lang/Object;II)V
    .locals 0
    .param p1, "isContentTextual"    # Z
    .param p2, "rawContent"    # Ljava/lang/Object;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_isContentTextual:Z

    .line 87
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    .line 88
    iput p3, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    .line 89
    iput p4, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    .line 90
    return-void
.end method

.method public static construct(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1
    .param p0, "isContentTextual"    # Z
    .param p1, "rawContent"    # Ljava/lang/Object;

    .line 104
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public static construct(ZLjava/lang/Object;II)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1
    .param p0, "isContentTextual"    # Z
    .param p1, "rawContent"    # Ljava/lang/Object;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 109
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;II)V

    return-object v0
.end method

.method public static rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1
    .param p0, "rawContent"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    return-object v0
.end method

.method public static rawReference(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1
    .param p0, "isContentTextual"    # Z
    .param p1, "rawContent"    # Ljava/lang/Object;

    .line 128
    instance-of v0, p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-eqz v0, :cond_0

    .line 129
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/ContentReference;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public static unknown()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 100
    sget-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    return-void
.end method


# virtual methods
.method protected _append(Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "content"    # Ljava/lang/String;

    .line 317
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 323
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 324
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/core/io/ContentReference;->_appendEscaped(Ljava/lang/StringBuilder;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    .end local v3    # "ch":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected _appendEscaped(Ljava/lang/StringBuilder;I)Z
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "ctrlChar"    # I

    .line 334
    const/16 v0, 0xd

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    shr-int/lit8 v0, p2, 0xc

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    shr-int/lit8 v0, p2, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    shr-int/lit8 v0, p2, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    and-int/lit8 v0, p2, 0xf

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/CharTypes;->hexToChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    const/4 v0, 0x1

    return v0

    .line 335
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected _truncate(Ljava/lang/CharSequence;[II)Ljava/lang/String;
    .locals 3
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "offsets"    # [I
    .param p3, "maxSnippetLen"    # I

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    .line 277
    const/4 v0, 0x0

    aget v0, p2, v0

    .line 278
    .local v0, "start":I
    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 279
    .local v1, "length":I
    add-int v2, v0, v1

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected _truncate([B[II)Ljava/lang/String;
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offsets"    # [I
    .param p3, "maxSnippetLen"    # I

    .line 290
    array-length v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    .line 291
    const/4 v0, 0x0

    aget v0, p2, v0

    .line 292
    .local v0, "start":I
    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 293
    .local v1, "length":I
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2
.end method

.method protected _truncate([C[II)Ljava/lang/String;
    .locals 3
    .param p1, "cs"    # [C
    .param p2, "offsets"    # [I
    .param p3, "maxSnippetLen"    # I

    .line 283
    array-length v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncateOffsets([II)V

    .line 284
    const/4 v0, 0x0

    aget v0, p2, v0

    .line 285
    .local v0, "start":I
    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 286
    .local v1, "length":I
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method protected _truncateOffsets([II)V
    .locals 4
    .param p1, "offsets"    # [I
    .param p2, "actualLength"    # I

    .line 299
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 301
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 302
    const/4 v1, 0x0

    goto :goto_0

    .line 303
    :cond_0
    if-lt v1, p2, :cond_1

    .line 304
    move v1, p2

    .line 306
    :cond_1
    :goto_0
    aput v1, p1, v0

    .line 309
    const/4 v0, 0x1

    aget v2, p1, v0

    .line 310
    .local v2, "length":I
    sub-int v3, p2, v1

    .line 311
    .local v3, "maxLength":I
    if-ltz v2, :cond_2

    if-le v2, v3, :cond_3

    .line 312
    :cond_2
    aput v3, p1, v0

    .line 314
    :cond_3
    return-void
.end method

.method public appendSourceDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, "srcRef":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 216
    const-string v1, "UNKNOWN"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    return-object p1

    .line 220
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    nop

    .line 222
    .local v1, "srcType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "tn":Ljava/lang/String;
    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 226
    :cond_2
    instance-of v3, v0, [B

    if-eqz v3, :cond_3

    .line 227
    const-string v2, "byte[]"

    goto :goto_1

    .line 228
    :cond_3
    instance-of v3, v0, [C

    if-eqz v3, :cond_4

    .line 229
    const-string v2, "char[]"

    .line 231
    :cond_4
    :goto_1
    const/16 v3, 0x28

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->hasTextualContent()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 236
    const-string v3, " chars"

    .line 240
    .local v3, "unitStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->maxContentSnippetLength()I

    move-result v4

    .line 241
    .local v4, "maxLen":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentOffset()I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentLength()I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 243
    .local v5, "offsets":[I
    instance-of v6, v0, Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 244
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p0, v6, v5, v4}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate(Ljava/lang/CharSequence;[II)Ljava/lang/String;

    move-result-object v6

    .local v6, "trimmed":Ljava/lang/String;
    goto :goto_2

    .line 245
    .end local v6    # "trimmed":Ljava/lang/String;
    :cond_5
    instance-of v6, v0, [C

    if-eqz v6, :cond_6

    .line 246
    move-object v6, v0

    check-cast v6, [C

    check-cast v6, [C

    invoke-virtual {p0, v6, v5, v4}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate([C[II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "trimmed":Ljava/lang/String;
    goto :goto_2

    .line 247
    .end local v6    # "trimmed":Ljava/lang/String;
    :cond_6
    instance-of v6, v0, [B

    if-eqz v6, :cond_7

    .line 248
    move-object v6, v0

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {p0, v6, v5, v4}, Lcom/fasterxml/jackson/core/io/ContentReference;->_truncate([B[II)Ljava/lang/String;

    move-result-object v6

    .line 249
    .restart local v6    # "trimmed":Ljava/lang/String;
    const-string v3, " bytes"

    goto :goto_2

    .line 251
    .end local v6    # "trimmed":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    .line 253
    .restart local v6    # "trimmed":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_8

    .line 254
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/core/io/ContentReference;->_append(Ljava/lang/StringBuilder;Ljava/lang/String;)I

    .line 255
    aget v8, v5, v7

    if-le v8, v4, :cond_8

    .line 256
    const-string v8, "[truncated "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v5, v7

    sub-int/2addr v7, v4

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x5d

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    .end local v3    # "unitStr":Ljava/lang/String;
    .end local v4    # "maxLen":I
    .end local v5    # "offsets":[I
    .end local v6    # "trimmed":Ljava/lang/String;
    :cond_8
    goto :goto_3

    .line 261
    :cond_9
    instance-of v3, v0, [B

    if-eqz v3, :cond_b

    .line 262
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->contentLength()I

    move-result v3

    .line 264
    .local v3, "length":I
    if-gez v3, :cond_a

    .line 265
    move-object v4, v0

    check-cast v4, [B

    check-cast v4, [B

    array-length v3, v4

    .line 267
    :cond_a
    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    const-string v4, " bytes]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .end local v3    # "length":I
    :cond_b
    :goto_3
    return-object p1
.end method

.method public buildSourceDescription()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->appendSourceDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    return v0
.end method

.method public contentOffset()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 358
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 359
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 360
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-nez v2, :cond_2

    return v1

    .line 361
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 364
    .local v2, "otherSrc":Lcom/fasterxml/jackson/core/io/ContentReference;
    iget v3, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    iget v4, v2, Lcom/fasterxml/jackson/core/io/ContentReference;->_offset:I

    if-ne v3, v4, :cond_a

    iget v3, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    iget v4, v2, Lcom/fasterxml/jackson/core/io/ContentReference;->_length:I

    if-eq v3, v4, :cond_3

    goto :goto_3

    .line 372
    :cond_3
    iget-object v3, v2, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    .line 374
    .local v3, "otherRaw":Ljava/lang/Object;
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 375
    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 376
    :cond_5
    if-nez v3, :cond_6

    .line 377
    return v1

    .line 380
    :cond_6
    instance-of v5, v4, Ljava/io/File;

    if-nez v5, :cond_9

    instance-of v5, v4, Ljava/net/URL;

    if-nez v5, :cond_9

    instance-of v5, v4, Ljava/net/URI;

    if-eqz v5, :cond_7

    goto :goto_2

    .line 386
    :cond_7
    iget-object v5, v2, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    if-ne v4, v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 384
    :cond_9
    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 366
    .end local v3    # "otherRaw":Ljava/lang/Object;
    :cond_a
    :goto_3
    return v1
.end method

.method public getRawContent()Ljava/lang/Object;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    return-object v0
.end method

.method public hasTextualContent()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_isContentTextual:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;->_rawContent:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected maxContentSnippetLength()I
    .locals 1

    .line 184
    const/16 v0, 0x1f4

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 156
    sget-object v0, Lcom/fasterxml/jackson/core/io/ContentReference;->UNKNOWN_CONTENT:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method
