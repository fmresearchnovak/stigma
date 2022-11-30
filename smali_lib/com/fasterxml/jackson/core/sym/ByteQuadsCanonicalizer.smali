.class public final Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
.super Ljava/lang/Object;
.source "ByteQuadsCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_T_SIZE:I = 0x40

.field protected static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field private static final MAX_T_SIZE:I = 0x10000

.field private static final MIN_HASH_SIZE:I = 0x10

.field private static final MULT:I = 0x21

.field private static final MULT2:I = 0x1003f

.field private static final MULT3:I = 0x1f


# instance fields
.field protected _count:I

.field protected final _failOnDoS:Z

.field protected _hashArea:[I

.field protected _hashShared:Z

.field protected _hashSize:I

.field protected final _intern:Z

.field protected _longNameOffset:I

.field protected _names:[Ljava/lang/String;

.field protected final _parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

.field protected _secondaryStart:I

.field protected final _seed:I

.field protected _spilloverEnd:I

.field protected final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected _tertiaryShift:I

.field protected _tertiaryStart:I


# direct methods
.method private constructor <init>(II)V
    .locals 2
    .param p1, "sz"    # I
    .param p2, "seed"    # I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 234
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 235
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 236
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 238
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 239
    const/16 p1, 0x10

    goto :goto_1

    .line 243
    :cond_0
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 244
    const/16 v0, 0x10

    .line 245
    .local v0, "curr":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 246
    add-int/2addr v0, v0

    goto :goto_0

    .line 248
    :cond_1
    move p1, v0

    .line 251
    .end local v0    # "curr":I
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 252
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V
    .locals 2
    .param p1, "state"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 296
    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 297
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 298
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 299
    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 305
    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 307
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 308
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->names:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 310
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->size:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 314
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v0, v0

    .line 315
    .local v0, "end":I
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 316
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 317
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 319
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 320
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 323
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 324
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;ZZ)V
    .locals 2
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .param p2, "seed"    # I
    .param p3, "state"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    .param p4, "intern"    # Z
    .param p5, "failOnDoS"    # Z

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 262
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 263
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 264
    iput-boolean p5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 268
    iget v0, p3, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 269
    iget v0, p3, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->size:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 270
    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 271
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 272
    iget v0, p3, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->tertiaryShift:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 274
    iget-object v0, p3, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 275
    iget-object v0, p3, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->names:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 277
    iget v0, p3, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->spilloverEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 278
    iget v0, p3, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->longNameOffset:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 282
    return-void
.end method

.method private _appendLongName([II)I
    .locals 5
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .line 1082
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 1085
    .local v0, "start":I
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 1087
    add-int v1, v0, p2

    array-length v2, v2

    sub-int/2addr v1, v2

    .line 1089
    .local v1, "toAdd":I
    const/16 v2, 0x1000

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1091
    .local v2, "minAdd":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1092
    .local v3, "newSize":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1094
    .end local v1    # "toAdd":I
    .end local v2    # "minAdd":I
    .end local v3    # "newSize":I
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {p1, v1, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1095
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 1096
    return v0
.end method

.method private final _calcOffset(I)I
    .locals 2
    .param p1, "hash"    # I

    .line 709
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    .line 711
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    return v1
.end method

.method static _calcTertiaryShift(I)I
    .locals 2
    .param p0, "primarySlots"    # I

    .line 1333
    shr-int/lit8 v0, p0, 0x2

    .line 1336
    .local v0, "tertSlots":I
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 1337
    const/4 v1, 0x4

    return v1

    .line 1339
    :cond_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 1340
    const/4 v1, 0x5

    return v1

    .line 1342
    :cond_1
    const/16 v1, 0x400

    if-gt v0, v1, :cond_2

    .line 1343
    const/4 v1, 0x6

    return v1

    .line 1346
    :cond_2
    const/4 v1, 0x7

    return v1
.end method

.method private _checkNeedForRehash()Z
    .locals 9

    .line 1070
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 1071
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    .line 1072
    .local v0, "spillCount":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v3, v3, 0x7

    if-gt v0, v3, :cond_0

    int-to-double v3, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    int-to-double v5, v1

    const-wide v7, 0x3fe999999999999aL    # 0.8

    mul-double v5, v5, v7

    cmpl-double v1, v3, v5

    if-lez v1, :cond_1

    .line 1074
    :cond_0
    return v2

    .line 1077
    .end local v0    # "spillCount":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private _findOffsetForAdd(I)I
    .locals 6
    .param p1, "hash"    # I

    .line 988
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 989
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 990
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    if-nez v2, :cond_0

    .line 992
    return v0

    .line 996
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_checkNeedForRehash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 997
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_resizeAndFindOffsetForAdd(I)I

    move-result v2

    return v2

    .line 1001
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 1002
    .local v2, "offset2":I
    add-int/lit8 v3, v2, 0x3

    aget v3, v1, v3

    if-nez v3, :cond_2

    .line 1004
    return v2

    .line 1008
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v5, v4, 0x2

    shr-int v5, v0, v5

    shl-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 1009
    .end local v2    # "offset2":I
    .local v3, "offset2":I
    const/4 v2, 0x1

    shl-int/2addr v2, v4

    .line 1010
    .local v2, "bucketSize":I
    add-int v4, v3, v2

    .local v4, "end":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 1011
    add-int/lit8 v5, v3, 0x3

    aget v5, v1, v5

    if-nez v5, :cond_3

    .line 1013
    return v3

    .line 1010
    :cond_3
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 1018
    .end local v4    # "end":I
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1019
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1029
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v5, v5, 0x3

    .line 1030
    .local v5, "end":I
    if-lt v4, v5, :cond_6

    .line 1031
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    if-eqz v4, :cond_5

    .line 1032
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_reportTooManyCollisions()V

    .line 1034
    :cond_5
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_resizeAndFindOffsetForAdd(I)I

    move-result v4

    return v4

    .line 1036
    :cond_6
    return v0
.end method

.method private _findSecondary(II)Ljava/lang/String;
    .locals 8
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I

    .line 726
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v1, 0x2

    shr-int v2, p1, v2

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 727
    .local v0, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 728
    .local v2, "hashArea":[I
    const/4 v3, 0x1

    shl-int v1, v3, v1

    .line 729
    .local v1, "bucketSize":I
    add-int v4, v0, v1

    .local v4, "end":I
    :goto_0
    const/4 v5, 0x0

    if-ge v0, v4, :cond_2

    .line 730
    add-int/lit8 v6, v0, 0x3

    aget v6, v2, v6

    .line 731
    .local v6, "len":I
    aget v7, v2, v0

    if-ne p2, v7, :cond_0

    if-ne v3, v6, :cond_0

    .line 732
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0x2

    aget-object v3, v3, v5

    return-object v3

    .line 734
    :cond_0
    if-nez v6, :cond_1

    .line 735
    return-object v5

    .line 729
    .end local v6    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 741
    .end local v4    # "end":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_1
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v4, :cond_4

    .line 742
    aget v4, v2, v0

    if-ne p2, v4, :cond_3

    add-int/lit8 v4, v0, 0x3

    aget v4, v2, v4

    if-ne v3, v4, :cond_3

    .line 743
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 741
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 746
    :cond_4
    return-object v5
.end method

.method private _findSecondary(III)Ljava/lang/String;
    .locals 8
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .line 751
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v1, 0x2

    shr-int v2, p1, v2

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 752
    .local v0, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 754
    .local v2, "hashArea":[I
    const/4 v3, 0x1

    shl-int v1, v3, v1

    .line 755
    .local v1, "bucketSize":I
    add-int v3, v0, v1

    .local v3, "end":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v0, v3, :cond_2

    .line 756
    add-int/lit8 v6, v0, 0x3

    aget v6, v2, v6

    .line 757
    .local v6, "len":I
    aget v7, v2, v0

    if-ne p2, v7, :cond_0

    add-int/lit8 v7, v0, 0x1

    aget v7, v2, v7

    if-ne p3, v7, :cond_0

    if-ne v5, v6, :cond_0

    .line 758
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    return-object v4

    .line 760
    :cond_0
    if-nez v6, :cond_1

    .line 761
    return-object v4

    .line 755
    .end local v6    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 764
    .end local v3    # "end":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 765
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-ne p3, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne v5, v3, :cond_3

    .line 766
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 764
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 769
    :cond_4
    return-object v4
.end method

.method private _findSecondary(IIII)Ljava/lang/String;
    .locals 8
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I
    .param p3, "q2"    # I
    .param p4, "q3"    # I

    .line 774
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v1, 0x2

    shr-int v2, p1, v2

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 775
    .local v0, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 777
    .local v2, "hashArea":[I
    const/4 v3, 0x1

    shl-int v1, v3, v1

    .line 778
    .local v1, "bucketSize":I
    add-int v3, v0, v1

    .local v3, "end":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ge v0, v3, :cond_2

    .line 779
    add-int/lit8 v6, v0, 0x3

    aget v6, v2, v6

    .line 780
    .local v6, "len":I
    aget v7, v2, v0

    if-ne p2, v7, :cond_0

    add-int/lit8 v7, v0, 0x1

    aget v7, v2, v7

    if-ne p3, v7, :cond_0

    add-int/lit8 v7, v0, 0x2

    aget v7, v2, v7

    if-ne p4, v7, :cond_0

    if-ne v5, v6, :cond_0

    .line 781
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    return-object v4

    .line 783
    :cond_0
    if-nez v6, :cond_1

    .line 784
    return-object v4

    .line 778
    .end local v6    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 787
    .end local v3    # "end":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 788
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    if-ne p3, v3, :cond_3

    add-int/lit8 v3, v0, 0x2

    aget v3, v2, v3

    if-ne p4, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne v5, v3, :cond_3

    .line 790
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 787
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 793
    :cond_4
    return-object v4
.end method

.method private _findSecondary(II[II)Ljava/lang/String;
    .locals 7
    .param p1, "origOffset"    # I
    .param p2, "hash"    # I
    .param p3, "q"    # [I
    .param p4, "qlen"    # I

    .line 798
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v2, v1, 0x2

    shr-int v2, p1, v2

    shl-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 799
    .local v0, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 801
    .local v2, "hashArea":[I
    const/4 v3, 0x1

    shl-int v1, v3, v1

    .line 802
    .local v1, "bucketSize":I
    add-int v3, v0, v1

    .local v3, "end":I
    :goto_0
    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    .line 803
    add-int/lit8 v5, v0, 0x3

    aget v5, v2, v5

    .line 804
    .local v5, "len":I
    aget v6, v2, v0

    if-ne p2, v6, :cond_0

    if-ne p4, v5, :cond_0

    .line 805
    add-int/lit8 v6, v0, 0x1

    aget v6, v2, v6

    invoke-direct {p0, p3, p4, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 806
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v0, 0x2

    aget-object v4, v4, v6

    return-object v4

    .line 809
    :cond_0
    if-nez v5, :cond_1

    .line 810
    return-object v4

    .line 802
    .end local v5    # "len":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 813
    .end local v3    # "end":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    :goto_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v0, v3, :cond_4

    .line 814
    aget v3, v2, v0

    if-ne p2, v3, :cond_3

    add-int/lit8 v3, v0, 0x3

    aget v3, v2, v3

    if-ne p4, v3, :cond_3

    .line 815
    add-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    invoke-direct {p0, p3, p4, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 816
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 813
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 820
    :cond_4
    return-object v4
.end method

.method private _resizeAndFindOffsetForAdd(I)I
    .locals 6
    .param p1, "hash"    # I

    .line 1043
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->rehash()V

    .line 1046
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 1047
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1048
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    if-nez v2, :cond_0

    .line 1049
    return v0

    .line 1051
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v3, v0, 0x3

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 1052
    .local v2, "offset2":I
    add-int/lit8 v3, v2, 0x3

    aget v3, v1, v3

    if-nez v3, :cond_1

    .line 1053
    return v2

    .line 1055
    :cond_1
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v5, v4, 0x2

    shr-int v5, v0, v5

    shl-int/2addr v5, v4

    add-int/2addr v3, v5

    .line 1056
    .end local v2    # "offset2":I
    .local v3, "offset2":I
    const/4 v2, 0x1

    shl-int/2addr v2, v4

    .line 1057
    .local v2, "bucketSize":I
    add-int v4, v3, v2

    .local v4, "end":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 1058
    add-int/lit8 v5, v3, 0x3

    aget v5, v1, v5

    if-nez v5, :cond_2

    .line 1059
    return v3

    .line 1057
    :cond_2
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 1062
    .end local v4    # "end":I
    :cond_3
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1063
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1064
    return v0
.end method

.method private final _spilloverStart()I
    .locals 2

    .line 1314
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1315
    .local v0, "offset":I
    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr v1, v0

    return v1
.end method

.method private _verifyLongName([III)Z
    .locals 5
    .param p1, "q"    # [I
    .param p2, "qlen"    # I
    .param p3, "spillOffset"    # I

    .line 825
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 827
    .local v0, "hashArea":[I
    const/4 v1, 0x0

    .line 829
    .local v1, "ix":I
    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 831
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName2([III)Z

    move-result v2

    return v2

    .line 833
    :pswitch_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .local v3, "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .local v4, "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_0

    return v2

    :cond_0
    move v1, v3

    move p3, v4

    .line 835
    .end local v3    # "ix":I
    .end local v4    # "spillOffset":I
    .restart local v1    # "ix":I
    .restart local p3    # "spillOffset":I
    :pswitch_1
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .restart local v3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_1

    return v2

    :cond_1
    move v1, v3

    move p3, v4

    .line 837
    .end local v3    # "ix":I
    .end local v4    # "spillOffset":I
    .restart local v1    # "ix":I
    .restart local p3    # "spillOffset":I
    :pswitch_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .restart local v3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_2

    return v2

    :cond_2
    move v1, v3

    move p3, v4

    .line 839
    .end local v3    # "ix":I
    .end local v4    # "spillOffset":I
    .restart local v1    # "ix":I
    .restart local p3    # "spillOffset":I
    :pswitch_3
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .restart local v3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_3

    return v2

    :cond_3
    move v1, v3

    move p3, v4

    .line 841
    .end local v3    # "ix":I
    .end local v4    # "spillOffset":I
    .restart local v1    # "ix":I
    .restart local p3    # "spillOffset":I
    :pswitch_4
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ix":I
    .restart local v3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v4, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget p3, v0, p3

    if-eq v1, p3, :cond_4

    return v2

    .line 842
    :cond_4
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "ix":I
    .local p3, "ix":I
    aget v1, p1, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "spillOffset":I
    .local v3, "spillOffset":I
    aget v4, v0, v4

    if-eq v1, v4, :cond_5

    return v2

    .line 843
    :cond_5
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "ix":I
    .restart local v1    # "ix":I
    aget p3, p1, p3

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "spillOffset":I
    .restart local v4    # "spillOffset":I
    aget v3, v0, v3

    if-eq p3, v3, :cond_6

    return v2

    .line 844
    :cond_6
    add-int/lit8 p3, v1, 0x1

    .end local v1    # "ix":I
    .restart local p3    # "ix":I
    aget v1, p1, v1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "spillOffset":I
    .restart local v3    # "spillOffset":I
    aget v4, v0, v4

    if-eq v1, v4, :cond_7

    return v2

    .line 846
    :cond_7
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private _verifyLongName2([III)Z
    .locals 4
    .param p1, "q"    # [I
    .param p2, "qlen"    # I
    .param p3, "spillOffset"    # I

    .line 851
    const/4 v0, 0x0

    .line 853
    .local v0, "ix":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ix":I
    .local v1, "ix":I
    aget v0, p1, v0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v3, p3, 0x1

    .end local p3    # "spillOffset":I
    .local v3, "spillOffset":I
    aget p3, v2, p3

    if-eq v0, p3, :cond_0

    .line 854
    const/4 p3, 0x0

    return p3

    .line 856
    :cond_0
    if-lt v1, p2, :cond_1

    .line 857
    const/4 p3, 0x1

    return p3

    .line 856
    :cond_1
    move v0, v1

    move p3, v3

    goto :goto_0
.end method

.method private _verifySharing()V
    .locals 2

    .line 966
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    if-eqz v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    if-nez v0, :cond_1

    .line 970
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add names to Root symbol table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add names to Placeholder symbol table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 977
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 980
    :cond_2
    return-void
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 5

    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    .local v0, "now":J
    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    long-to-int v4, v3

    add-int/2addr v2, v4

    or-int/lit8 v2, v2, 0x1

    .line 344
    .local v2, "seed":I
    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    move-result-object v3

    return-object v3
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 2
    .param p0, "seed"    # I

    .line 350
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    const/16 v1, 0x40

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(II)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V
    .locals 3
    .param p1, "childState"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .line 411
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    .line 412
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .line 416
    .local v1, "currState":Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    iget v2, v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    if-ne v0, v2, :cond_0

    .line 417
    return-void

    .line 424
    :cond_0
    const/16 v2, 0x1770

    if-le v0, v2, :cond_1

    .line 426
    const/16 v2, 0x40

    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-result-object p1

    .line 428
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method private nukeSymbols(Z)V
    .locals 2
    .param p1, "fill"    # Z

    .line 1291
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 1293
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1295
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 1296
    if-eqz p1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1298
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1300
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 17

    .line 1208
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 1212
    iget-object v2, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1213
    .local v2, "oldHashArea":[I
    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 1214
    .local v3, "oldNames":[Ljava/lang/String;
    iget v4, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1215
    .local v4, "oldSize":I
    iget v5, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 1216
    .local v5, "oldCount":I
    add-int v6, v4, v4

    .line 1217
    .local v6, "newSize":I
    iget v7, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1222
    .local v7, "oldEnd":I
    const/4 v8, 0x1

    const/high16 v9, 0x10000

    if-le v6, v9, :cond_0

    .line 1223
    invoke-direct {v0, v8}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->nukeSymbols(Z)V

    .line 1224
    return-void

    .line 1227
    :cond_0
    array-length v9, v2

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v9, v10

    new-array v9, v9, [I

    iput-object v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1228
    iput v6, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1229
    shl-int/lit8 v9, v6, 0x2

    iput v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 1230
    shr-int/lit8 v10, v9, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 1231
    invoke-static {v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcTertiaryShift(I)I

    move-result v9

    iput v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 1234
    array-length v9, v3

    shl-int/2addr v9, v8

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 1235
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->nukeSymbols(Z)V

    .line 1242
    const/4 v9, 0x0

    .line 1243
    .local v9, "copyCount":I
    const/16 v10, 0x10

    new-array v10, v10, [I

    .line 1244
    .local v10, "q":[I
    const/4 v11, 0x0

    .local v11, "offset":I
    move v12, v7

    .local v12, "end":I
    :goto_0
    if-ge v11, v12, :cond_3

    .line 1245
    add-int/lit8 v13, v11, 0x3

    aget v13, v2, v13

    .line 1246
    .local v13, "len":I
    if-nez v13, :cond_1

    .line 1247
    goto :goto_2

    .line 1249
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 1250
    shr-int/lit8 v14, v11, 0x2

    aget-object v14, v3, v14

    .line 1251
    .local v14, "name":Ljava/lang/String;
    const/4 v15, 0x2

    packed-switch v13, :pswitch_data_0

    .line 1268
    array-length v15, v10

    if-le v13, v15, :cond_2

    .line 1269
    new-array v10, v13, [I

    goto :goto_1

    .line 1262
    :pswitch_0
    aget v16, v2, v11

    aput v16, v10, v1

    .line 1263
    add-int/lit8 v16, v11, 0x1

    aget v16, v2, v16

    aput v16, v10, v8

    .line 1264
    add-int/lit8 v16, v11, 0x2

    aget v16, v2, v16

    aput v16, v10, v15

    .line 1265
    const/4 v15, 0x3

    invoke-virtual {v0, v14, v10, v15}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    .line 1266
    goto :goto_2

    .line 1257
    :pswitch_1
    aget v16, v2, v11

    aput v16, v10, v1

    .line 1258
    add-int/lit8 v16, v11, 0x1

    aget v16, v2, v16

    aput v16, v10, v8

    .line 1259
    invoke-virtual {v0, v14, v10, v15}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    .line 1260
    goto :goto_2

    .line 1253
    :pswitch_2
    aget v15, v2, v11

    aput v15, v10, v1

    .line 1254
    invoke-virtual {v0, v14, v10, v8}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    .line 1255
    goto :goto_2

    .line 1272
    :cond_2
    :goto_1
    add-int/lit8 v15, v11, 0x1

    aget v15, v2, v15

    .line 1273
    .local v15, "qoff":I
    invoke-static {v2, v15, v10, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1274
    invoke-virtual {v0, v14, v10, v13}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    .line 1244
    .end local v13    # "len":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "qoff":I
    :goto_2
    add-int/lit8 v11, v11, 0x4

    goto :goto_0

    .line 1281
    .end local v11    # "offset":I
    .end local v12    # "end":I
    :cond_3
    if-ne v9, v5, :cond_4

    .line 1284
    return-void

    .line 1282
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed rehash(): old count="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", copyCount="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected _reportTooManyCollisions()V
    .locals 3

    .line 1321
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 1322
    return-void

    .line 1324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spill-over slots in symbol table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " entries, hash area of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slots is now full (all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shr-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slots -- suspect a DoS attack based on hash collisions. You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I

    .line 867
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 868
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 869
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 871
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 872
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 873
    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 874
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v2, v0, 0x2

    aput-object p1, v1, v2

    .line 875
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 876
    return-object p1
.end method

.method public addName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .line 880
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 881
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 882
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 889
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v0

    .line 890
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v1

    .line 891
    .local v1, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v2, v1

    .line 892
    add-int/lit8 v3, v1, 0x1

    aput p3, v2, v3

    .line 893
    add-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 894
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v3, v1, 0x2

    aput-object p1, v2, v3

    .line 895
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 896
    return-object p1
.end method

.method public addName(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I
    .param p4, "q3"    # I

    .line 900
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 901
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 902
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 904
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 905
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 906
    add-int/lit8 v2, v0, 0x1

    aput p3, v1, v2

    .line 907
    add-int/lit8 v2, v0, 0x2

    aput p4, v1, v2

    .line 908
    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 909
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v2, v0, 0x2

    aput-object p1, v1, v2

    .line 910
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 911
    return-object p1
.end method

.method public addName(Ljava/lang/String;[II)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q"    # [I
    .param p3, "qlen"    # I

    .line 916
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 917
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v0, :cond_0

    .line 918
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 922
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p3, :pswitch_data_0

    .line 948
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash([II)I

    move-result v0

    .line 949
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v3

    .line 951
    .local v3, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput v0, v1, v3

    .line 952
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_appendLongName([II)I

    move-result v1

    .line 953
    .local v1, "longStart":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v5, v3, 0x1

    aput v1, v4, v5

    .line 954
    add-int/lit8 v5, v3, 0x3

    aput p3, v4, v5

    goto :goto_0

    .line 940
    .end local v0    # "hash":I
    .end local v1    # "longStart":I
    .end local v3    # "offset":I
    :pswitch_0
    aget v3, p2, v1

    aget v4, p2, v2

    aget v5, p2, v0

    invoke-virtual {p0, v3, v4, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v3

    .line 941
    .restart local v3    # "offset":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v1, p2, v1

    aput v1, v4, v3

    .line 942
    add-int/lit8 v1, v3, 0x1

    aget v5, p2, v2

    aput v5, v4, v1

    .line 943
    add-int/lit8 v1, v3, 0x2

    aget v0, p2, v0

    aput v0, v4, v1

    .line 944
    add-int/lit8 v0, v3, 0x3

    const/4 v1, 0x3

    aput v1, v4, v0

    .line 946
    goto :goto_0

    .line 932
    .end local v3    # "offset":I
    :pswitch_1
    aget v3, p2, v1

    aget v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v3

    .line 933
    .restart local v3    # "offset":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v1, p2, v1

    aput v1, v4, v3

    .line 934
    add-int/lit8 v1, v3, 0x1

    aget v5, p2, v2

    aput v5, v4, v1

    .line 935
    add-int/lit8 v1, v3, 0x3

    aput v0, v4, v1

    .line 937
    goto :goto_0

    .line 925
    .end local v3    # "offset":I
    :pswitch_2
    aget v0, p2, v1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v3

    .line 926
    .restart local v3    # "offset":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v1, p2, v1

    aput v1, v0, v3

    .line 927
    add-int/lit8 v1, v3, 0x3

    aput v2, v0, v1

    .line 929
    nop

    .line 957
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v1, v3, 0x2

    aput-object p1, v0, v1

    .line 960
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 961
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bucketCount()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    return v0
.end method

.method public calcHash(I)I
    .locals 2
    .param p1, "q1"    # I

    .line 1121
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, p1

    .line 1127
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 1128
    shl-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    .line 1129
    ushr-int/lit8 v1, v0, 0xc

    add-int/2addr v0, v1

    .line 1130
    return v0
.end method

.method public calcHash(II)I
    .locals 2
    .param p1, "q1"    # I
    .param p2, "q2"    # I

    .line 1137
    move v0, p1

    .line 1139
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1140
    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 1141
    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    .line 1142
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 1143
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 1144
    ushr-int/lit8 v1, v0, 0x4

    xor-int/2addr v0, v1

    .line 1145
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1147
    return v0
.end method

.method public calcHash(III)I
    .locals 2
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I

    .line 1152
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, p1

    .line 1153
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    .line 1154
    mul-int/lit8 v0, v0, 0x1f

    .line 1155
    add-int/2addr v0, p2

    .line 1156
    mul-int/lit8 v0, v0, 0x21

    .line 1157
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1158
    xor-int/2addr v0, p3

    .line 1160
    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 1162
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1163
    shl-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 1165
    return v0
.end method

.method public calcHash([II)I
    .locals 4
    .param p1, "q"    # [I
    .param p2, "qlen"    # I

    .line 1170
    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    .line 1178
    const/4 v0, 0x0

    aget v0, p1, v0

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 1179
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    .line 1180
    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    .line 1181
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1182
    mul-int/lit8 v0, v0, 0x21

    .line 1183
    const/4 v1, 0x2

    aget v1, p1, v1

    xor-int/2addr v0, v1

    .line 1184
    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 1186
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1187
    aget v2, p1, v1

    .line 1188
    .local v2, "next":I
    shr-int/lit8 v3, v2, 0x15

    xor-int/2addr v2, v3

    .line 1189
    add-int/2addr v0, v2

    .line 1186
    .end local v2    # "next":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1191
    .end local v1    # "i":I
    :cond_0
    const v1, 0x1003f

    mul-int v0, v0, v1

    .line 1194
    ushr-int/lit8 v1, v0, 0x13

    add-int/2addr v0, v1

    .line 1195
    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 1196
    return v0

    .line 1171
    .end local v0    # "hash":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public findName(I)Ljava/lang/String;
    .locals 7
    .param p1, "q1"    # I

    .line 570
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 572
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 574
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    .line 576
    .local v2, "len":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 577
    aget v5, v1, v0

    if-ne v5, p1, :cond_1

    .line 578
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 580
    :cond_0
    if-nez v2, :cond_1

    .line 581
    return-object v3

    .line 584
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v0, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 586
    .local v5, "offset2":I
    add-int/lit8 v6, v5, 0x3

    aget v2, v1, v6

    .line 588
    if-ne v2, v4, :cond_2

    .line 589
    aget v3, v1, v5

    if-ne v3, p1, :cond_3

    .line 590
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v5, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 592
    :cond_2
    if-nez v2, :cond_3

    .line 593
    return-object v3

    .line 597
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findName(II)Ljava/lang/String;
    .locals 7
    .param p1, "q1"    # I
    .param p2, "q2"    # I

    .line 602
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 604
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 606
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    .line 608
    .local v2, "len":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 609
    aget v5, v1, v0

    if-ne p1, v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    aget v5, v1, v5

    if-ne p2, v5, :cond_1

    .line 610
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 612
    :cond_0
    if-nez v2, :cond_1

    .line 613
    return-object v3

    .line 616
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v0, 0x3

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 618
    .local v5, "offset2":I
    add-int/lit8 v6, v5, 0x3

    aget v2, v1, v6

    .line 620
    if-ne v2, v4, :cond_2

    .line 621
    aget v3, v1, v5

    if-ne p1, v3, :cond_3

    add-int/lit8 v3, v5, 0x1

    aget v3, v1, v3

    if-ne p2, v3, :cond_3

    .line 622
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v5, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 624
    :cond_2
    if-nez v2, :cond_3

    .line 625
    return-object v3

    .line 627
    :cond_3
    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(III)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findName(III)Ljava/lang/String;
    .locals 7
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I

    .line 632
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v0

    .line 633
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 634
    .local v1, "hashArea":[I
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    .line 636
    .local v2, "len":I
    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 637
    aget v5, v1, v0

    if-ne p1, v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    aget v5, v1, v5

    if-ne v5, p2, :cond_1

    add-int/lit8 v5, v0, 0x2

    aget v5, v1, v5

    if-ne v5, p3, :cond_1

    .line 638
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 640
    :cond_0
    if-nez v2, :cond_1

    .line 641
    return-object v3

    .line 644
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v0, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    .line 646
    .local v5, "offset2":I
    add-int/lit8 v6, v5, 0x3

    aget v2, v1, v6

    .line 648
    if-ne v2, v4, :cond_2

    .line 649
    aget v3, v1, v5

    if-ne p1, v3, :cond_3

    add-int/lit8 v3, v5, 0x1

    aget v3, v1, v3

    if-ne v3, p2, :cond_3

    add-int/lit8 v3, v5, 0x2

    aget v3, v1, v3

    if-ne v3, p3, :cond_3

    .line 650
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v5, 0x2

    aget-object v3, v3, v4

    return-object v3

    .line 652
    :cond_2
    if-nez v2, :cond_3

    .line 653
    return-object v3

    .line 655
    :cond_3
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(IIII)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public findName([II)Ljava/lang/String;
    .locals 8
    .param p1, "q"    # [I
    .param p2, "qlen"    # I

    .line 664
    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 665
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    .line 673
    const-string v0, ""

    return-object v0

    .line 667
    :pswitch_0
    aget v1, p1, v1

    aget v2, p1, v2

    aget v0, p1, v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 669
    :pswitch_1
    aget v0, p1, v1

    aget v1, p1, v2

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 671
    :pswitch_2
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 676
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash([II)I

    move-result v1

    .line 677
    .local v1, "hash":I
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v2

    .line 679
    .local v2, "offset":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 681
    .local v3, "hashArea":[I
    add-int/lit8 v4, v2, 0x3

    aget v4, v3, v4

    .line 683
    .local v4, "len":I
    aget v5, v3, v2

    if-ne v1, v5, :cond_1

    if-ne v4, p2, :cond_1

    .line 685
    add-int/lit8 v5, v2, 0x1

    aget v5, v3, v5

    invoke-direct {p0, p1, p2, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 686
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v2, 0x2

    aget-object v0, v0, v5

    return-object v0

    .line 689
    :cond_1
    if-nez v4, :cond_2

    .line 690
    const/4 v0, 0x0

    return-object v0

    .line 693
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v2, 0x3

    shl-int/lit8 v0, v6, 0x2

    add-int/2addr v5, v0

    .line 695
    .local v5, "offset2":I
    add-int/lit8 v0, v5, 0x3

    aget v0, v3, v0

    .line 696
    .local v0, "len2":I
    aget v6, v3, v5

    if-ne v1, v6, :cond_3

    if-ne v0, p2, :cond_3

    .line 697
    add-int/lit8 v6, v5, 0x1

    aget v6, v3, v6

    invoke-direct {p0, p1, p2, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 698
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v7, v5, 0x2

    aget-object v6, v6, v7

    return-object v6

    .line 701
    :cond_3
    invoke-direct {p0, v2, v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(II[II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashSeed()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    return v0
.end method

.method public isCanonicalizing()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeChild(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 7
    .param p1, "flags"    # I

    .line 362
    new-instance v6, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 363
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 364
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v4

    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 365
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;ZZ)V

    .line 362
    return-object v6
.end method

.method public makeChildOrPlaceholder(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 7
    .param p1, "flags"    # I

    .line 381
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 384
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 385
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .line 386
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;ZZ)V

    .line 383
    return-object v0

    .line 388
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V

    return-object v0
.end method

.method public maybeDirty()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public primaryCount()I
    .locals 4

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "count":I
    const/4 v1, 0x3

    .local v1, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 487
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 488
    add-int/lit8 v0, v0, 0x1

    .line 486
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 491
    .end local v1    # "offset":I
    .end local v2    # "end":I
    :cond_1
    return v0
.end method

.method public release()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 407
    :cond_0
    return-void
.end method

.method public secondaryCount()I
    .locals 4

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "count":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    add-int/lit8 v1, v1, 0x3

    .line 503
    .local v1, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 504
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 505
    add-int/lit8 v0, v0, 0x1

    .line 503
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 508
    .end local v2    # "end":I
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    return v0

    .line 446
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    return v0
.end method

.method public spilloverCount()I
    .locals 2

    .line 536
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public tertiaryCount()I
    .locals 4

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "count":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    add-int/lit8 v1, v1, 0x3

    .line 520
    .local v1, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    add-int/2addr v2, v1

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 521
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 522
    add-int/lit8 v0, v0, 0x1

    .line 520
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 525
    .end local v2    # "end":I
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 552
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->primaryCount()I

    move-result v0

    .line 553
    .local v0, "pri":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->secondaryCount()I

    move-result v1

    .line 554
    .local v1, "sec":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->tertiaryCount()I

    move-result v2

    .line 555
    .local v2, "tert":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->spilloverCount()I

    move-result v3

    .line 556
    .local v3, "spill":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->totalCount()I

    move-result v4

    .line 557
    .local v4, "total":I
    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    .line 558
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 559
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    add-int v6, v0, v1

    add-int/2addr v6, v2

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v5, v7

    .line 557
    const-string v6, "[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public totalCount()I
    .locals 4

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "count":I
    const/4 v1, 0x3

    .local v1, "offset":I
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v2, v2, 0x3

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 543
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 544
    add-int/lit8 v0, v0, 0x1

    .line 542
    :cond_0
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 547
    .end local v1    # "offset":I
    .end local v2    # "end":I
    :cond_1
    return v0
.end method
