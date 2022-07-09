.class public final Lcom/fasterxml/jackson/core/sym/NameN;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "NameN.java"


# instance fields
.field private final q:[I

.field private final q1:I

.field private final q2:I

.field private final q3:I

.field private final q4:I

.field private final qlen:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIII[II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "q1"    # I
    .param p4, "q2"    # I
    .param p5, "q3"    # I
    .param p6, "q4"    # I
    .param p7, "quads"    # [I
    .param p8, "quadLen"    # I

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q1:I

    .line 19
    iput p4, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q2:I

    .line 20
    iput p5, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q3:I

    .line 21
    iput p6, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q4:I

    .line 22
    iput-object p7, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    .line 23
    iput p8, p0, Lcom/fasterxml/jackson/core/sym/NameN;->qlen:I

    .line 24
    return-void
.end method

.method private final _equals2([I)Z
    .locals 4
    .param p1, "quads"    # [I

    .line 92
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/NameN;->qlen:I

    add-int/lit8 v0, v0, -0x4

    .line 93
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 94
    add-int/lit8 v2, v1, 0x4

    aget v2, p1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 95
    const/4 v2, 0x0

    return v2

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static construct(Ljava/lang/String;I[II)Lcom/fasterxml/jackson/core/sym/NameN;
    .locals 18
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "hash"    # I
    .param p2, "q"    # [I
    .param p3, "qlen"    # I

    .line 31
    move-object/from16 v0, p2

    move/from16 v10, p3

    const/4 v1, 0x4

    if-lt v10, v1, :cond_1

    .line 34
    const/4 v2, 0x0

    aget v11, v0, v2

    .line 35
    .local v11, "q1":I
    const/4 v2, 0x1

    aget v12, v0, v2

    .line 36
    .local v12, "q2":I
    const/4 v2, 0x2

    aget v13, v0, v2

    .line 37
    .local v13, "q3":I
    const/4 v2, 0x3

    aget v14, v0, v2

    .line 39
    .local v14, "q4":I
    add-int/lit8 v15, v10, -0x4

    .line 43
    .local v15, "rem":I
    if-lez v15, :cond_0

    .line 44
    invoke-static {v0, v1, v10}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    move-object/from16 v16, v1

    .local v1, "buf":[I
    goto :goto_0

    .line 46
    .end local v1    # "buf":[I
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v16, v1

    .line 48
    .local v16, "buf":[I
    :goto_0
    new-instance v17, Lcom/fasterxml/jackson/core/sym/NameN;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v3, p1

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    move-object/from16 v8, v16

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/fasterxml/jackson/core/sym/NameN;-><init>(Ljava/lang/String;IIIII[II)V

    return-object v17

    .line 32
    .end local v11    # "q1":I
    .end local v12    # "q2":I
    .end local v13    # "q3":I
    .end local v14    # "q4":I
    .end local v15    # "rem":I
    .end local v16    # "buf":[I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "quad"    # I

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .locals 1
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public equals(III)Z
    .locals 1
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I
    .param p3, "quad3"    # I

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public equals([II)Z
    .locals 6
    .param p1, "quads"    # [I
    .param p2, "len"    # I

    .line 66
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/NameN;->qlen:I

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    .line 69
    :cond_0
    aget v0, p1, v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q1:I

    if-eq v0, v2, :cond_1

    return v1

    .line 70
    :cond_1
    const/4 v0, 0x1

    aget v2, p1, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q2:I

    if-eq v2, v3, :cond_2

    return v1

    .line 71
    :cond_2
    const/4 v2, 0x2

    aget v3, p1, v2

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q3:I

    if-eq v3, v4, :cond_3

    return v1

    .line 72
    :cond_3
    const/4 v3, 0x3

    aget v4, p1, v3

    iget v5, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q4:I

    if-eq v4, v5, :cond_4

    return v1

    .line 74
    :cond_4
    packed-switch p2, :pswitch_data_0

    .line 76
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/NameN;->_equals2([I)Z

    move-result v0

    return v0

    .line 78
    :pswitch_0
    const/4 v4, 0x7

    aget v4, p1, v4

    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v5, v3

    if-eq v4, v3, :cond_5

    return v1

    .line 80
    :cond_5
    :pswitch_1
    const/4 v3, 0x6

    aget v3, p1, v3

    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v2, v4, v2

    if-eq v3, v2, :cond_6

    return v1

    .line 82
    :cond_6
    :pswitch_2
    const/4 v2, 0x5

    aget v2, p1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_7

    return v1

    .line 84
    :cond_7
    :pswitch_3
    const/4 v2, 0x4

    aget v2, p1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/NameN;->q:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_8

    return v1

    .line 87
    :cond_8
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
