.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field static final MAX_BYTE_BUFFER_SIZE:I = 0x7d00

.field static final MAX_CHAR_BUFFER_SIZE:I = 0x7d00

.field static final MIN_BYTE_BUFFER_SIZE:I = 0x18

.field static final MIN_CHAR_BUFFER_SIZE:I = 0x10

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field private static final instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    .line 26
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .locals 3
    .param p1, "ch"    # I
    .param p2, "esc"    # I
    .param p3, "bb"    # Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    .param p4, "ptr"    # I

    .line 605
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    .line 606
    const/16 v0, 0x5c

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 607
    if-gez p2, :cond_1

    .line 608
    const/16 v0, 0x75

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 609
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 610
    shr-int/lit8 v0, p1, 0x8

    .line 611
    .local v0, "hi":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 612
    and-int/lit8 v2, v0, 0xf

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 613
    and-int/lit16 p1, p1, 0xff

    .line 614
    .end local v0    # "hi":I
    goto :goto_0

    .line 615
    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 616
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 618
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HB:[B

    shr-int/lit8 v1, p1, 0x4

    aget-byte v1, v0, v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 619
    and-int/lit8 v1, p1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_1

    .line 621
    :cond_1
    int-to-byte v0, p2

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 623
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result v0

    return v0
.end method

.method private _appendNamed(I[C)I
    .locals 2
    .param p1, "esc"    # I
    .param p2, "qbuf"    # [C

    .line 599
    int-to-char v0, p1

    const/4 v1, 0x1

    aput-char v0, p2, v1

    .line 600
    const/4 v0, 0x2

    return v0
.end method

.method private _appendNumeric(I[C)I
    .locals 3
    .param p1, "value"    # I
    .param p2, "qbuf"    # [C

    .line 591
    const/4 v0, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, v0

    .line 593
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v1, v0, v1

    const/4 v2, 0x4

    aput-char v1, p2, v2

    .line 594
    and-int/lit8 v1, p1, 0xf

    aget-char v0, v0, v1

    const/4 v1, 0x5

    aput-char v0, p2, v1

    .line 595
    const/4 v0, 0x6

    return v0
.end method

.method private static _convert(II)I
    .locals 3
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .line 628
    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    .line 631
    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int v2, p0, v2

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    sub-int v0, p1, v0

    add-int/2addr v2, v0

    return v2

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static _illegal(I)V
    .locals 2
    .param p0, "c"    # I

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static _initialByteBufSize(I)I
    .locals 2
    .param p0, "strLen"    # I

    .line 651
    add-int/lit8 v0, p0, 0x6

    shr-int/lit8 v1, p0, 0x1

    add-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 653
    .local v0, "doubled":I
    const/16 v1, 0x7d00

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method static _initialCharBufSize(I)I
    .locals 2
    .param p0, "strLen"    # I

    .line 642
    shr-int/lit8 v0, p0, 0x3

    add-int/lit8 v0, v0, 0x6

    .line 643
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p0

    .line 642
    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 644
    .local v0, "estimated":I
    const/16 v1, 0x7d00

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private _qbuf()[C
    .locals 3

    .line 583
    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 584
    .local v0, "qbuf":[C
    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    .line 585
    const/4 v1, 0x2

    const/16 v2, 0x30

    aput-char v2, v0, v1

    .line 586
    const/4 v1, 0x3

    aput-char v2, v0, v1

    .line 587
    return-object v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 1

    .line 60
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->instance:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    return-object v0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/CharSequence;)[B
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "inputPtr":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 489
    .local v1, "inputEnd":I
    const/4 v2, 0x0

    .line 490
    .local v2, "outputPtr":I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_initialByteBufSize(I)I

    move-result v3

    new-array v3, v3, [B

    .line 491
    .local v3, "outputBuffer":[B
    array-length v4, v3

    .line 492
    .local v4, "outputEnd":I
    const/4 v5, 0x0

    .line 495
    .local v5, "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :goto_0
    if-ge v0, v1, :cond_10

    .line 496
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "inputPtr":I
    .local v6, "inputPtr":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 499
    .local v0, "c":I
    :goto_1
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_3

    .line 500
    if-lt v2, v4, :cond_1

    .line 501
    if-nez v5, :cond_0

    .line 502
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v5

    .line 504
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 505
    array-length v4, v3

    .line 506
    const/4 v2, 0x0

    .line 508
    :cond_1
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    int-to-byte v8, v0

    aput-byte v8, v3, v2

    .line 509
    if-lt v6, v1, :cond_2

    .line 510
    move v0, v6

    move v2, v7

    goto/16 :goto_4

    .line 512
    :cond_2
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "inputPtr":I
    .local v2, "inputPtr":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v6, v2

    move v2, v7

    goto :goto_1

    .line 516
    .end local v7    # "outputPtr":I
    .local v2, "outputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_3
    if-nez v5, :cond_4

    .line 517
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v5

    .line 519
    :cond_4
    if-lt v2, v4, :cond_5

    .line 520
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 521
    array-length v4, v3

    .line 522
    const/4 v2, 0x0

    .line 524
    :cond_5
    const/16 v7, 0x800

    if-ge v0, v7, :cond_6

    .line 525
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    move v2, v0

    move v0, v6

    goto/16 :goto_3

    .line 528
    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    :cond_6
    const v7, 0xd800

    if-lt v0, v7, :cond_d

    const v7, 0xdfff

    if-le v0, v7, :cond_7

    goto :goto_2

    .line 537
    :cond_7
    const v7, 0xdbff

    if-le v0, v7, :cond_8

    .line 538
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 541
    :cond_8
    if-lt v6, v1, :cond_9

    .line 542
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 544
    :cond_9
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inputPtr":I
    .local v7, "inputPtr":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v0

    .line 545
    const v6, 0x10ffff

    if-le v0, v6, :cond_a

    .line 546
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 548
    :cond_a
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v6, "outputPtr":I
    shr-int/lit8 v8, v0, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 549
    if-lt v6, v4, :cond_b

    .line 550
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 551
    array-length v4, v3

    .line 552
    const/4 v6, 0x0

    .line 554
    :cond_b
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    .line 555
    if-lt v2, v4, :cond_c

    .line 556
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 557
    array-length v4, v3

    .line 558
    const/4 v2, 0x0

    .line 560
    :cond_c
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    move v2, v0

    move v0, v7

    move v7, v6

    goto :goto_3

    .line 529
    .end local v7    # "inputPtr":I
    .restart local v2    # "outputPtr":I
    .local v6, "inputPtr":I
    :cond_d
    :goto_2
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 530
    if-lt v7, v4, :cond_e

    .line 531
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 532
    array-length v4, v3

    .line 533
    const/4 v7, 0x0

    .line 535
    :cond_e
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    move v7, v2

    move v2, v0

    move v0, v6

    .line 563
    .end local v6    # "inputPtr":I
    .local v0, "inputPtr":I
    .local v2, "c":I
    .restart local v7    # "outputPtr":I
    :goto_3
    if-lt v7, v4, :cond_f

    .line 564
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 565
    array-length v4, v3

    .line 566
    const/4 v7, 0x0

    .line 568
    :cond_f
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v6, "outputPtr":I
    and-int/lit8 v8, v2, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 569
    .end local v2    # "c":I
    move v2, v6

    goto/16 :goto_0

    .line 570
    .end local v6    # "outputPtr":I
    .local v2, "outputPtr":I
    :cond_10
    :goto_4
    if-nez v5, :cond_11

    .line 571
    const/4 v6, 0x0

    invoke-static {v3, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    return-object v6

    .line 573
    :cond_11
    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v6

    return-object v6
.end method

.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 388
    .local v1, "inputEnd":I
    const/4 v2, 0x0

    .line 389
    .local v2, "outputPtr":I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_initialByteBufSize(I)I

    move-result v3

    new-array v3, v3, [B

    .line 390
    .local v3, "outputBuffer":[B
    array-length v4, v3

    .line 391
    .local v4, "outputEnd":I
    const/4 v5, 0x0

    .line 394
    .local v5, "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :goto_0
    if-ge v0, v1, :cond_10

    .line 395
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "inputPtr":I
    .local v6, "inputPtr":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 398
    .local v0, "c":I
    :goto_1
    const/16 v7, 0x7f

    if-gt v0, v7, :cond_3

    .line 399
    if-lt v2, v4, :cond_1

    .line 400
    if-nez v5, :cond_0

    .line 401
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v5

    .line 403
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 404
    array-length v4, v3

    .line 405
    const/4 v2, 0x0

    .line 407
    :cond_1
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    int-to-byte v8, v0

    aput-byte v8, v3, v2

    .line 408
    if-lt v6, v1, :cond_2

    .line 409
    move v0, v6

    move v2, v7

    goto/16 :goto_4

    .line 411
    :cond_2
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "inputPtr":I
    .local v2, "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v6, v2

    move v2, v7

    goto :goto_1

    .line 415
    .end local v7    # "outputPtr":I
    .local v2, "outputPtr":I
    .restart local v6    # "inputPtr":I
    :cond_3
    if-nez v5, :cond_4

    .line 416
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v5

    .line 418
    :cond_4
    if-lt v2, v4, :cond_5

    .line 419
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 420
    array-length v4, v3

    .line 421
    const/4 v2, 0x0

    .line 423
    :cond_5
    const/16 v7, 0x800

    if-ge v0, v7, :cond_6

    .line 424
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local v7    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    move v2, v0

    move v0, v6

    goto/16 :goto_3

    .line 427
    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    :cond_6
    const v7, 0xd800

    if-lt v0, v7, :cond_d

    const v7, 0xdfff

    if-le v0, v7, :cond_7

    goto :goto_2

    .line 436
    :cond_7
    const v7, 0xdbff

    if-le v0, v7, :cond_8

    .line 437
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 440
    :cond_8
    if-lt v6, v1, :cond_9

    .line 441
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 443
    :cond_9
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inputPtr":I
    .local v7, "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v0

    .line 444
    const v6, 0x10ffff

    if-le v0, v6, :cond_a

    .line 445
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 447
    :cond_a
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v6, "outputPtr":I
    shr-int/lit8 v8, v0, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 448
    if-lt v6, v4, :cond_b

    .line 449
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 450
    array-length v4, v3

    .line 451
    const/4 v6, 0x0

    .line 453
    :cond_b
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    .line 454
    if-lt v2, v4, :cond_c

    .line 455
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 456
    array-length v4, v3

    .line 457
    const/4 v2, 0x0

    .line 459
    :cond_c
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    move v2, v0

    move v0, v7

    move v7, v6

    goto :goto_3

    .line 428
    .end local v7    # "inputPtr":I
    .restart local v2    # "outputPtr":I
    .local v6, "inputPtr":I
    :cond_d
    :goto_2
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 429
    if-lt v7, v4, :cond_e

    .line 430
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 431
    array-length v4, v3

    .line 432
    const/4 v7, 0x0

    .line 434
    :cond_e
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    move v7, v2

    move v2, v0

    move v0, v6

    .line 462
    .end local v6    # "inputPtr":I
    .local v0, "inputPtr":I
    .local v2, "c":I
    .restart local v7    # "outputPtr":I
    :goto_3
    if-lt v7, v4, :cond_f

    .line 463
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 464
    array-length v4, v3

    .line 465
    const/4 v7, 0x0

    .line 467
    :cond_f
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v6, "outputPtr":I
    and-int/lit8 v8, v2, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 468
    .end local v2    # "c":I
    move v2, v6

    goto/16 :goto_0

    .line 469
    .end local v6    # "outputPtr":I
    .local v2, "outputPtr":I
    :cond_10
    :goto_4
    if-nez v5, :cond_11

    .line 470
    const/4 v6, 0x0

    invoke-static {v3, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    return-object v6

    .line 472
    :cond_11
    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v6

    return-object v6
.end method

.method public quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "output"    # Ljava/lang/StringBuilder;

    .line 236
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    .line 237
    .local v0, "escCodes":[I
    array-length v1, v0

    .line 238
    .local v1, "escCodeCount":I
    const/4 v2, 0x0

    .line 239
    .local v2, "inPtr":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 240
    .local v3, "inputLen":I
    const/4 v4, 0x0

    .line 243
    .local v4, "qbuf":[C
    :goto_0
    if-ge v2, v3, :cond_4

    .line 246
    :goto_1
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 247
    .local v5, "c":C
    if-ge v5, v1, :cond_2

    aget v6, v0, v5

    if-eqz v6, :cond_2

    .line 248
    nop

    .line 256
    .end local v5    # "c":C
    if-nez v4, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v4

    .line 259
    :cond_0
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "inPtr":I
    .local v5, "inPtr":I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 260
    .local v2, "d":C
    aget v6, v0, v2

    .line 261
    .local v6, "escCode":I
    if-gez v6, :cond_1

    .line 262
    invoke-direct {p0, v2, v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v7

    goto :goto_2

    .line 263
    :cond_1
    invoke-direct {p0, v6, v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v7

    :goto_2
    nop

    .line 264
    .local v7, "length":I
    const/4 v8, 0x0

    invoke-virtual {p2, v4, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 265
    .end local v2    # "d":C
    .end local v6    # "escCode":I
    .end local v7    # "length":I
    move v2, v5

    goto :goto_0

    .line 250
    .local v2, "inPtr":I
    .local v5, "c":C
    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v3, :cond_3

    .line 252
    goto :goto_3

    .line 254
    .end local v5    # "c":C
    :cond_3
    goto :goto_1

    .line 266
    :cond_4
    :goto_3
    return-void
.end method

.method public quoteAsString(Ljava/lang/CharSequence;)[C
    .locals 14
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 155
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 156
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 161
    .local v0, "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 162
    .local v1, "inputLen":I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_initialCharBufSize(I)I

    move-result v2

    new-array v2, v2, [C

    .line 163
    .local v2, "outputBuffer":[C
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v3

    .line 164
    .local v3, "escCodes":[I
    array-length v4, v3

    .line 165
    .local v4, "escCodeCount":I
    const/4 v5, 0x0

    .line 166
    .local v5, "inPtr":I
    const/4 v6, 0x0

    .line 167
    .local v6, "outPtr":I
    const/4 v7, 0x0

    .line 170
    .local v7, "qbuf":[C
    :goto_0
    const/4 v8, 0x0

    if-ge v5, v1, :cond_a

    .line 173
    :goto_1
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 174
    .local v9, "c":C
    if-ge v9, v4, :cond_6

    aget v10, v3, v9

    if-eqz v10, :cond_6

    .line 175
    nop

    .line 190
    .end local v9    # "c":C
    if-nez v7, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v7

    .line 193
    :cond_1
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "inPtr":I
    .local v9, "inPtr":I
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 194
    .local v5, "d":C
    aget v10, v3, v5

    .line 195
    .local v10, "escCode":I
    if-gez v10, :cond_2

    .line 196
    invoke-direct {p0, v5, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v11

    goto :goto_2

    .line 197
    :cond_2
    invoke-direct {p0, v10, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v11

    :goto_2
    nop

    .line 199
    .local v11, "length":I
    add-int v12, v6, v11

    array-length v13, v2

    if-le v12, v13, :cond_5

    .line 200
    array-length v12, v2

    sub-int/2addr v12, v6

    .line 201
    .local v12, "first":I
    if-lez v12, :cond_3

    .line 202
    invoke-static {v7, v8, v2, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_3
    if-nez v0, :cond_4

    .line 205
    invoke-static {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v0

    .line 207
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 208
    sub-int v13, v11, v12

    .line 209
    .local v13, "second":I
    invoke-static {v7, v12, v2, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    move v6, v13

    .line 211
    .end local v12    # "first":I
    .end local v13    # "second":I
    goto :goto_3

    .line 212
    :cond_5
    invoke-static {v7, v8, v2, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    add-int/2addr v6, v11

    .line 215
    .end local v5    # "d":C
    .end local v10    # "escCode":I
    .end local v11    # "length":I
    :goto_3
    move v5, v9

    goto :goto_0

    .line 177
    .local v5, "inPtr":I
    .local v9, "c":C
    :cond_6
    array-length v10, v2

    if-lt v6, v10, :cond_8

    .line 178
    if-nez v0, :cond_7

    .line 179
    invoke-static {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v0

    .line 181
    :cond_7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v2

    .line 182
    const/4 v6, 0x0

    .line 184
    :cond_8
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "outPtr":I
    .local v10, "outPtr":I
    aput-char v9, v2, v6

    .line 185
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v1, :cond_9

    .line 186
    move v6, v10

    goto :goto_4

    .line 188
    .end local v9    # "c":C
    :cond_9
    move v6, v10

    goto :goto_1

    .line 217
    .end local v10    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_a
    :goto_4
    if-nez v0, :cond_b

    .line 218
    invoke-static {v2, v8, v6}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v8

    return-object v8

    .line 220
    :cond_b
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 221
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v8

    return-object v8
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 14
    .param p1, "input"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 80
    .local v0, "inputLen":I
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_initialCharBufSize(I)I

    move-result v1

    new-array v1, v1, [C

    .line 81
    .local v1, "outputBuffer":[C
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v2

    .line 82
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 83
    .local v3, "escCodeCount":I
    const/4 v4, 0x0

    .line 84
    .local v4, "inPtr":I
    const/4 v5, 0x0

    .line 85
    .local v5, "textBuffer":Lcom/fasterxml/jackson/core/util/TextBuffer;
    const/4 v6, 0x0

    .line 86
    .local v6, "outPtr":I
    const/4 v7, 0x0

    .line 89
    .local v7, "qbuf":[C
    :goto_0
    const/4 v8, 0x0

    if-ge v4, v0, :cond_9

    .line 92
    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 93
    .local v9, "c":C
    if-ge v9, v3, :cond_5

    aget v10, v2, v9

    if-eqz v10, :cond_5

    .line 94
    nop

    .line 109
    .end local v9    # "c":C
    if-nez v7, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf()[C

    move-result-object v7

    .line 112
    :cond_0
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "inPtr":I
    .local v9, "inPtr":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 113
    .local v4, "d":C
    aget v10, v2, v4

    .line 114
    .local v10, "escCode":I
    if-gez v10, :cond_1

    .line 115
    invoke-direct {p0, v4, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumeric(I[C)I

    move-result v11

    goto :goto_2

    .line 116
    :cond_1
    invoke-direct {p0, v10, v7}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamed(I[C)I

    move-result v11

    :goto_2
    nop

    .line 118
    .local v11, "length":I
    add-int v12, v6, v11

    array-length v13, v1

    if-le v12, v13, :cond_4

    .line 119
    array-length v12, v1

    sub-int/2addr v12, v6

    .line 120
    .local v12, "first":I
    if-lez v12, :cond_2

    .line 121
    invoke-static {v7, v8, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    :cond_2
    if-nez v5, :cond_3

    .line 124
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 126
    :cond_3
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 127
    sub-int v13, v11, v12

    .line 128
    .local v13, "second":I
    invoke-static {v7, v12, v1, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    move v6, v13

    .line 130
    .end local v12    # "first":I
    .end local v13    # "second":I
    goto :goto_3

    .line 131
    :cond_4
    invoke-static {v7, v8, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    add-int/2addr v6, v11

    .line 134
    .end local v4    # "d":C
    .end local v10    # "escCode":I
    .end local v11    # "length":I
    :goto_3
    move v4, v9

    goto :goto_0

    .line 96
    .local v4, "inPtr":I
    .local v9, "c":C
    :cond_5
    array-length v10, v1

    if-lt v6, v10, :cond_7

    .line 97
    if-nez v5, :cond_6

    .line 98
    invoke-static {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->fromInitial([C)Lcom/fasterxml/jackson/core/util/TextBuffer;

    move-result-object v5

    .line 100
    :cond_6
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    .line 101
    const/4 v6, 0x0

    .line 103
    :cond_7
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "outPtr":I
    .local v10, "outPtr":I
    aput-char v9, v1, v6

    .line 104
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_8

    .line 105
    move v6, v10

    goto :goto_4

    .line 107
    .end local v9    # "c":C
    :cond_8
    move v6, v10

    goto :goto_1

    .line 136
    .end local v10    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_9
    :goto_4
    if-nez v5, :cond_a

    .line 137
    invoke-static {v1, v8, v6}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v8

    return-object v8

    .line 139
    :cond_a
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 140
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v8

    return-object v8
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "inputPtr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 282
    .local v1, "inputEnd":I
    const/4 v2, 0x0

    .line 283
    .local v2, "outputPtr":I
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_initialByteBufSize(I)I

    move-result v3

    new-array v3, v3, [B

    .line 284
    .local v3, "outputBuffer":[B
    const/4 v4, 0x0

    .line 287
    .local v4, "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :goto_0
    if-ge v0, v1, :cond_12

    .line 288
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v5

    .line 292
    .local v5, "escCodes":[I
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 293
    .local v6, "ch":I
    const/16 v7, 0x7f

    if-gt v6, v7, :cond_4

    aget v8, v5, v6

    if-eqz v8, :cond_0

    .line 294
    goto :goto_2

    .line 296
    :cond_0
    array-length v7, v3

    if-lt v2, v7, :cond_2

    .line 297
    if-nez v4, :cond_1

    .line 298
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v4

    .line 300
    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 301
    const/4 v2, 0x0

    .line 303
    :cond_2
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    int-to-byte v8, v6

    aput-byte v8, v3, v2

    .line 304
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_3

    .line 305
    move v2, v7

    goto/16 :goto_5

    .line 307
    .end local v6    # "ch":I
    :cond_3
    move v2, v7

    goto :goto_1

    .line 308
    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 309
    invoke-static {v3, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->fromInitial([BI)Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v4

    .line 311
    :cond_5
    array-length v6, v3

    if-lt v2, v6, :cond_6

    .line 312
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 313
    const/4 v2, 0x0

    .line 316
    :cond_6
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "inputPtr":I
    .local v6, "inputPtr":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 317
    .local v0, "ch":I
    if-gt v0, v7, :cond_7

    .line 318
    aget v7, v5, v0

    .line 320
    .local v7, "escape":I
    invoke-direct {p0, v0, v7, v4, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByte(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    move-result v2

    .line 321
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v3

    .line 322
    move v0, v6

    goto :goto_0

    .line 324
    .end local v7    # "escape":I
    :cond_7
    const/16 v7, 0x7ff

    if-gt v0, v7, :cond_8

    .line 325
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 326
    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v0, v2, 0x80

    move v2, v0

    move v0, v6

    goto/16 :goto_4

    .line 329
    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    :cond_8
    const v7, 0xd800

    if-lt v0, v7, :cond_f

    const v7, 0xdfff

    if-le v0, v7, :cond_9

    goto :goto_3

    .line 338
    :cond_9
    const v7, 0xdbff

    if-le v0, v7, :cond_a

    .line 339
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 342
    :cond_a
    if-lt v6, v1, :cond_b

    .line 343
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 345
    :cond_b
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "inputPtr":I
    .local v7, "inputPtr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v0

    .line 346
    const v6, 0x10ffff

    if-le v0, v6, :cond_c

    .line 347
    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    .line 349
    :cond_c
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v6, "outputPtr":I
    shr-int/lit8 v8, v0, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 350
    array-length v2, v3

    if-lt v6, v2, :cond_d

    .line 351
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 352
    const/4 v6, 0x0

    .line 354
    :cond_d
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    .line 355
    array-length v6, v3

    if-lt v2, v6, :cond_e

    .line 356
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 357
    const/4 v2, 0x0

    .line 359
    :cond_e
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outputPtr":I
    .restart local v6    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 360
    and-int/lit8 v2, v0, 0x3f

    or-int/lit16 v0, v2, 0x80

    move v2, v0

    move v0, v7

    move v7, v6

    goto :goto_4

    .line 330
    .end local v7    # "inputPtr":I
    .restart local v2    # "outputPtr":I
    .local v6, "inputPtr":I
    :cond_f
    :goto_3
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outputPtr":I
    .local v7, "outputPtr":I
    shr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v3, v2

    .line 331
    array-length v2, v3

    if-lt v7, v2, :cond_10

    .line 332
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 333
    const/4 v7, 0x0

    .line 335
    :cond_10
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "outputPtr":I
    .restart local v2    # "outputPtr":I
    shr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 336
    and-int/lit8 v7, v0, 0x3f

    or-int/lit16 v0, v7, 0x80

    move v7, v2

    move v2, v0

    move v0, v6

    .line 363
    .end local v6    # "inputPtr":I
    .local v0, "inputPtr":I
    .local v2, "ch":I
    .restart local v7    # "outputPtr":I
    :goto_4
    array-length v6, v3

    if-lt v7, v6, :cond_11

    .line 364
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v3

    .line 365
    const/4 v7, 0x0

    .line 367
    :cond_11
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outputPtr":I
    .local v6, "outputPtr":I
    int-to-byte v8, v2

    aput-byte v8, v3, v7

    .line 368
    .end local v2    # "ch":I
    .end local v5    # "escCodes":[I
    move v2, v6

    goto/16 :goto_0

    .line 369
    .end local v6    # "outputPtr":I
    .local v2, "outputPtr":I
    :cond_12
    :goto_5
    if-nez v4, :cond_13

    .line 370
    const/4 v5, 0x0

    invoke-static {v3, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    return-object v5

    .line 372
    :cond_13
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v5

    return-object v5
.end method
