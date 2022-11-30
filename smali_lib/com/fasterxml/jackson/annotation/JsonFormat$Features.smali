.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
.super Ljava/lang/Object;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Features"
.end annotation


# static fields
.field private static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;


# instance fields
.field private final _disabled:I

.field private final _enabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 326
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "e"    # I
    .param p2, "d"    # I

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    .line 330
    iput p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    .line 331
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 2
    .param p0, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat;

    .line 338
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->with()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v0

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->without()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->construct([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v0

    return-object v0
.end method

.method public static construct([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 7
    .param p0, "enabled"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    .param p1, "disabled"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "e":I
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    aget-object v5, p0, v3

    .line 345
    .local v5, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int/2addr v4, v6

    or-int/2addr v0, v4

    .line 344
    .end local v5    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_0
    const/4 v1, 0x0

    .line 348
    .local v1, "d":I
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, p1, v2

    .line 349
    .restart local v5    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v6

    shl-int v6, v4, v6

    or-int/2addr v1, v6

    .line 348
    .end local v5    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 351
    :cond_1
    new-instance v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    return-object v2
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 1

    .line 334
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 421
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 422
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 423
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 424
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 425
    .local v2, "other":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    iget v3, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-ne v3, v4, :cond_3

    iget v3, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 396
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 397
    .local v0, "mask":I
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 398
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 400
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 401
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 403
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 416
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 408
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    if-ne p0, v0, :cond_0

    .line 409
    const-string v0, "EMPTY"

    return-object v0

    .line 411
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "(enabled=0x%x,disabled=0x%x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs with([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 6
    .param p1, "features"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 380
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    .line 381
    .local v0, "e":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 382
    .local v3, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v0, v4

    .line 381
    .end local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    :goto_1
    return-object v1
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 6
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 356
    if-nez p1, :cond_0

    .line 357
    return-object p0

    .line 359
    :cond_0
    iget v0, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    .line 360
    .local v0, "overrideD":I
    iget v1, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    .line 361
    .local v1, "overrideE":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 362
    return-object p0

    .line 364
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    if-nez v2, :cond_2

    iget v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-nez v3, :cond_2

    .line 365
    return-object p1

    .line 368
    :cond_2
    not-int v3, v0

    and-int/2addr v3, v2

    or-int/2addr v3, v1

    .line 369
    .local v3, "newE":I
    iget v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    not-int v5, v1

    and-int/2addr v5, v4

    or-int/2addr v5, v0

    .line 372
    .local v5, "newD":I
    if-ne v3, v2, :cond_3

    if-ne v5, v4, :cond_3

    .line 373
    return-object p0

    .line 376
    :cond_3
    new-instance v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-direct {v2, v3, v5}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    return-object v2
.end method

.method public varargs without([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 6
    .param p1, "features"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 388
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    .line 389
    .local v0, "d":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 390
    .local v3, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v0, v4

    .line 389
    .end local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_disabled:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->_enabled:I

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;-><init>(II)V

    :goto_1
    return-object v1
.end method
