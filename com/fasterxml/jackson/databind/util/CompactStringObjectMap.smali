.class public final Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
.super Ljava/lang/Object;
.source "CompactStringObjectMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _hashArea:[Ljava/lang/Object;

.field private final _hashMask:I

.field private final _spillCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;-><init>(II[Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->EMPTY:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    return-void
.end method

.method private constructor <init>(II[Ljava/lang/Object;)V
    .locals 0
    .param p1, "hashMask"    # I
    .param p2, "spillCount"    # I
    .param p3, "hashArea"    # [Ljava/lang/Object;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashMask:I

    .line 35
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_spillCount:I

    .line 36
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private final _find2(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "match"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 112
    return-object v0

    .line 114
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashMask:I

    add-int/lit8 v1, v1, 0x1

    .line 115
    .local v1, "hashSize":I
    shr-int/lit8 v2, p2, 0x1

    add-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x1

    .line 116
    .local v2, "ix":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v3, v2

    .line 117
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v3

    return-object v0

    .line 120
    :cond_1
    if-eqz p3, :cond_4

    .line 121
    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x1

    .line 122
    .local v3, "i":I
    iget v4, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_spillCount:I

    add-int/2addr v4, v3

    .local v4, "end":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 123
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v5, v3

    .line 124
    if-eq p3, p1, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 125
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    aget-object v0, v0, v5

    return-object v0

    .line 129
    .end local v3    # "i":I
    .end local v4    # "end":I
    :cond_4
    return-object v0
.end method

.method public static construct(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;"
        }
    .end annotation

    .line 41
    .local p0, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->EMPTY:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    return-object v0

    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->findSize(I)I

    move-result v0

    .line 47
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .line 49
    .local v1, "mask":I
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    .line 50
    .local v2, "alloc":I
    new-array v3, v2, [Ljava/lang/Object;

    .line 51
    .local v3, "hashArea":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 53
    .local v4, "spillCount":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 54
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 57
    .local v7, "key":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 58
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    and-int/2addr v8, v1

    .line 62
    .local v8, "slot":I
    add-int v9, v8, v8

    .line 65
    .local v9, "ix":I
    aget-object v10, v3, v9

    if-eqz v10, :cond_2

    .line 67
    shr-int/lit8 v10, v8, 0x1

    add-int/2addr v10, v0

    shl-int/lit8 v9, v10, 0x1

    .line 68
    aget-object v10, v3, v9

    if-eqz v10, :cond_2

    .line 70
    shr-int/lit8 v10, v0, 0x1

    add-int/2addr v10, v0

    shl-int/lit8 v10, v10, 0x1

    add-int v9, v10, v4

    .line 71
    add-int/lit8 v4, v4, 0x2

    .line 72
    array-length v10, v3

    if-lt v9, v10, :cond_2

    .line 73
    array-length v10, v3

    add-int/lit8 v10, v10, 0x4

    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 77
    :cond_2
    aput-object v7, v3, v9

    .line 78
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v3, v10

    .line 79
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "slot":I
    .end local v9    # "ix":I
    goto :goto_0

    .line 80
    :cond_3
    new-instance v5, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    invoke-direct {v5, v1, v4, v3}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;-><init>(II[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static final findSize(I)I
    .locals 2
    .param p0, "size"    # I

    .line 85
    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    .line 86
    const/16 v0, 0x8

    return v0

    .line 88
    :cond_0
    const/16 v0, 0xc

    if-gt p0, v0, :cond_1

    .line 89
    const/16 v0, 0x10

    return v0

    .line 91
    :cond_1
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    .line 92
    .local v0, "needed":I
    const/16 v1, 0x20

    .line 93
    .local v1, "result":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 94
    add-int/2addr v1, v1

    goto :goto_0

    .line 96
    :cond_2
    return v1
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashMask:I

    and-int/2addr v0, v1

    .line 101
    .local v0, "slot":I
    shl-int/lit8 v1, v0, 0x1

    .line 102
    .local v1, "ix":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 103
    .local v2, "match":Ljava/lang/Object;
    if-eq v2, p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, p1, v0, v2}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_find2(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 104
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public findCaseInsensitive(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    array-length v1, v1

    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 135
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 136
    .local v2, "k2":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 137
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    return-object v4

    .line 134
    .end local v2    # "k2":Ljava/lang/Object;
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    .end local v1    # "end":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public keys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v0

    .line 148
    .local v0, "end":I
    new-instance v1, Ljava/util/ArrayList;

    shr-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 150
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 151
    .local v3, "key":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 152
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v3    # "key":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 155
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method
