.class final Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;
.super Ljava/lang/Object;
.source "TypeBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/type/TypeBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsKey"
.end annotation


# instance fields
.field private final _hash:I

.field private final _params:[Lcom/fasterxml/jackson/databind/JavaType;

.field private final _raw:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;I)V
    .locals 0
    .param p2, "params"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "I)V"
        }
    .end annotation

    .line 450
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_raw:Ljava/lang/Class;

    .line 452
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_params:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 453
    iput p3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_hash:I

    .line 454
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 461
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 462
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 463
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 464
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;

    .line 466
    .local v2, "other":Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;
    iget v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_hash:I

    iget v4, v2, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_hash:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_raw:Ljava/lang/Class;

    iget-object v4, v2, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_raw:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    .line 467
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_params:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 468
    .local v3, "otherParams":[Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_params:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v4, v4

    .line 470
    .local v4, "len":I
    array-length v5, v3

    if-ne v4, v5, :cond_5

    .line 471
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 472
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_params:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v6, v6, v5

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 473
    return v1

    .line 471
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 476
    .end local v5    # "i":I
    :cond_4
    return v0

    .line 479
    .end local v3    # "otherParams":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v4    # "len":I
    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;->_raw:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
