.class public Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final _aliasDefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _aliasMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _caseInsensitive:Z

.field private _hashArea:[Ljava/lang/Object;

.field private _hashMask:I

.field private final _locale:Ljava/util/Locale;

.field private final _propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field private _size:I

.field private _spillCount:I


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;II)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .param p2, "newProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p3, "hashIndex"    # I
    .param p4, "orderedIndex"    # I

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 126
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    .line 127
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 128
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 129
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 130
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    .line 131
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    .line 134
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 135
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 136
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object p2, v1, p3

    .line 137
    aput-object p2, v0, p4

    .line 138
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;I)V
    .locals 6
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .param p2, "newProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "slot"    # I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 149
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    .line 150
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 151
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 152
    iget v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 153
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    .line 154
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    .line 157
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 158
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v0

    .line 160
    .local v1, "last":I
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 161
    aput-object p2, v0, v1

    .line 163
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v0, v0, 0x1

    .line 164
    .local v0, "hashSize":I
    shl-int/lit8 v2, p4, 0x1

    .line 167
    .local v2, "ix":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    .line 169
    shr-int/lit8 v4, p4, 0x1

    add-int/2addr v4, v0

    shl-int/lit8 v2, v4, 0x1

    .line 170
    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    .line 172
    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    shl-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int v2, v4, v5

    .line 173
    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 174
    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 175
    array-length v4, v3

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aput-object p3, v3, v2

    .line 180
    add-int/lit8 v4, v2, 0x1

    aput-object p2, v3, v4

    .line 181
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Z)V
    .locals 2
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .param p2, "caseInsensitive"    # Z

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 189
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    .line 190
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    .line 191
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    .line 194
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 195
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 196
    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;Ljava/util/Map;)V
    .locals 1
    .param p1, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    .local p2, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    .local p3, "aliasDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    .line 115
    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V
    .locals 1
    .param p1, "caseInsensitive"    # Z
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;>;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 98
    .local p2, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    .local p3, "aliasDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    .line 100
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 101
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    .line 102
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    .line 103
    invoke-direct {p0, p3, p1, p4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_buildAliasMapping(Ljava/util/Map;ZLjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    .line 104
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 106
    return-void
.end method

.method private _buildAliasMapping(Ljava/util/Map;ZLjava/util/Locale;)Ljava/util/Map;
    .locals 7
    .param p2, "caseInsensitive"    # Z
    .param p3, "loc"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;>;Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 819
    .local p1, "defs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;>;"
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 822
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 823
    .local v0, "aliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 824
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 825
    .local v3, "key":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 826
    invoke-virtual {v3, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 828
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 829
    .local v5, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, "mapped":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 831
    invoke-virtual {v6, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 833
    :cond_2
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .end local v5    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v6    # "mapped":Ljava/lang/String;
    goto :goto_1

    .line 835
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 836
    :cond_4
    return-object v0

    .line 820
    .end local v0    # "aliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final _find2(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "match"    # Ljava/lang/Object;

    .line 583
    if-nez p3, :cond_0

    .line 585
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findWithAlias(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0

    .line 588
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v0, v0, 0x1

    .line 589
    .local v0, "hashSize":I
    shr-int/lit8 v1, p2, 0x1

    add-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 590
    .local v1, "ix":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v2, v1

    .line 591
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v2

    .line 594
    :cond_1
    if-eqz p3, :cond_4

    .line 595
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x1

    .line 596
    .local v2, "i":I
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int/2addr v3, v2

    .local v3, "end":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 597
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v4, v2

    .line 598
    if-eq p3, p1, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 596
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 599
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v4

    .line 604
    .end local v2    # "i":I
    .end local v3    # "end":I
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasMapping:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findWithAlias(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    return-object v2
.end method

.method private _find2ViaAlias(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "match"    # Ljava/lang/Object;

    .line 629
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    add-int/lit8 v0, v0, 0x1

    .line 630
    .local v0, "hashSize":I
    shr-int/lit8 v1, p2, 0x1

    add-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x1

    .line 631
    .local v1, "ix":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v2, v1

    .line 632
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v2

    .line 635
    :cond_0
    if-eqz p3, :cond_3

    .line 636
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    shl-int/lit8 v2, v2, 0x1

    .line 637
    .local v2, "i":I
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    add-int/2addr v3, v2

    .local v3, "end":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 638
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object p3, v4, v2

    .line 639
    if-eq p3, p1, :cond_2

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 637
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 640
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v4

    .line 644
    .end local v2    # "i":I
    .end local v3    # "end":I
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private final _findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I
    .locals 3
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 793
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v1, v1

    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 794
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 795
    return v0

    .line 793
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    .end local v0    # "i":I
    .end local v1    # "end":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' missing from _propsInOrder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _findWithAlias(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 5
    .param p1, "keyFromAlias"    # Ljava/lang/String;

    .line 609
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 610
    return-object v0

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v1

    .line 615
    .local v1, "slot":I
    shl-int/lit8 v2, v1, 0x1

    .line 616
    .local v2, "ix":I
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 617
    .local v3, "match":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 618
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v0, v0, v4

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v0

    .line 620
    :cond_1
    if-nez v3, :cond_2

    .line 621
    return-object v0

    .line 623
    :cond_2
    invoke-direct {p0, p1, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_find2ViaAlias(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method private final _hashCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 812
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private _properties()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .local v0, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v2, v2

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 511
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 512
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_0

    .line 513
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_1
    return-object v0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Collection;Ljava/util/Map;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p1, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    .local p2, "aliasMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 295
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    .line 293
    return-object v0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Collection;Ljava/util/Map;Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 2
    .param p3, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;>;Z)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .line 280
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p1, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    .local p2, "aliasMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 282
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p3, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    .line 280
    return-object v0
.end method

.method public static construct(Ljava/util/Collection;ZLjava/util/Map;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 1
    .param p1, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    .local p0, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    .local p2, "aliasMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {v0, p1, p0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;Ljava/util/Map;)V

    return-object v0
.end method

.method private static final findSize(I)I
    .locals 2
    .param p0, "size"    # I

    .line 259
    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    .line 260
    const/16 v0, 0x8

    return v0

    .line 262
    :cond_0
    const/16 v0, 0xc

    if-gt p0, v0, :cond_1

    .line 263
    const/16 v0, 0x10

    return v0

    .line 265
    :cond_1
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    .line 266
    .local v0, "needed":I
    const/16 v1, 0x20

    .line 267
    .local v1, "result":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 268
    add-int/2addr v1, v1

    goto :goto_0

    .line 270
    :cond_2
    return v1
.end method


# virtual methods
.method protected _rename(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 3
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "xf"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 718
    if-nez p1, :cond_0

    .line 719
    return-object p1

    .line 721
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "newName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .line 723
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 724
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v1, :cond_1

    .line 726
    nop

    .line 727
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 728
    .local v2, "newDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-eq v2, v1, :cond_1

    .line 729
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    .line 732
    .end local v2    # "newDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_1
    return-object p1
.end method

.method public assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 5

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "index":I
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v2, v2

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 336
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 337
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_0

    .line 338
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->assignIndex(I)V

    move v0, v4

    .line 335
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v4    # "index":I
    .restart local v0    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_1
    return-object p0
.end method

.method public find(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 4
    .param p1, "index"    # I

    .line 550
    const/4 v0, 0x1

    .local v0, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v1, v1

    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 551
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 552
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 553
    return-object v2

    .line 550
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 556
    .end local v0    # "i":I
    .end local v1    # "end":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 561
    if-eqz p1, :cond_3

    .line 564
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 569
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v0, v1

    .line 573
    .local v0, "slot":I
    shl-int/lit8 v1, v0, 0x1

    .line 574
    .local v1, "ix":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 575
    .local v2, "match":Ljava/lang/Object;
    if-eq v2, p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 578
    :cond_1
    invoke-direct {p0, p1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_find2(Ljava/lang/String;ILjava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    return-object v3

    .line 576
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v3

    .line 562
    .end local v0    # "slot":I
    .end local v1    # "ix":I
    .end local v2    # "match":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot pass null property name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findDeserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 666
    .local v0, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v0, :cond_0

    .line 667
    const/4 v1, 0x0

    return v1

    .line 670
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    goto :goto_0

    .line 671
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p3, p4, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 674
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v0
.end method

.method protected final getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;
    .locals 2
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 534
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasAliases()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected init(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "props":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    .line 217
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->findSize(I)I

    move-result v0

    .line 218
    .local v0, "hashSize":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 221
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 222
    .local v1, "alloc":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 223
    .local v2, "hashed":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 225
    .local v3, "spillCount":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 227
    .local v5, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v5, :cond_0

    .line 228
    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "key":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v7

    .line 233
    .local v7, "slot":I
    shl-int/lit8 v8, v7, 0x1

    .line 236
    .local v8, "ix":I
    aget-object v9, v2, v8

    if-eqz v9, :cond_1

    .line 238
    shr-int/lit8 v9, v7, 0x1

    add-int/2addr v9, v0

    shl-int/lit8 v8, v9, 0x1

    .line 239
    aget-object v9, v2, v8

    if-eqz v9, :cond_1

    .line 241
    shr-int/lit8 v9, v0, 0x1

    add-int/2addr v9, v0

    shl-int/lit8 v9, v9, 0x1

    add-int v8, v9, v3

    .line 242
    add-int/lit8 v3, v3, 0x2

    .line 243
    array-length v9, v2

    if-lt v8, v9, :cond_1

    .line 244
    array-length v9, v2

    add-int/lit8 v9, v9, 0x4

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 248
    :cond_1
    aput-object v6, v2, v8

    .line 249
    add-int/lit8 v9, v8, 0x1

    aput-object v5, v2, v9

    .line 252
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "slot":I
    .end local v8    # "ix":I
    goto :goto_0

    .line 253
    :cond_2
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    .line 254
    iput v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_spillCount:I

    .line 255
    return-void
.end method

.method public isCaseInsensitive()Z
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 505
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_properties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 9
    .param p1, "propToRm"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    .local v0, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 455
    .local v2, "found":Z
    const/4 v3, 0x1

    .local v3, "i":I
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v4, v4

    .local v4, "end":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 456
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v6, v5, v3

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 457
    .local v6, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v6, :cond_0

    .line 458
    goto :goto_1

    .line 460
    :cond_0
    if-nez v2, :cond_1

    .line 463
    add-int/lit8 v7, v3, -0x1

    aget-object v5, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 464
    if-eqz v2, :cond_1

    .line 466
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v7

    const/4 v8, 0x0

    aput-object v8, v5, v7

    .line 467
    goto :goto_1

    .line 470
    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 472
    .end local v3    # "i":I
    .end local v4    # "end":I
    :cond_2
    if-eqz v2, :cond_3

    .line 475
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->init(Ljava/util/Collection;)V

    .line 476
    return-void

    .line 473
    :cond_3
    new-instance v3, Ljava/util/NoSuchElementException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No entry \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' found, can\'t remove"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 6
    .param p1, "transformer"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 350
    if-eqz p1, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v0, v0

    .line 355
    .local v0, "len":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v1, "newProps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 358
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v3, v3, v2

    .line 361
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v3, :cond_1

    .line 362
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {p0, v3, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_rename(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    return-object v2

    .line 351
    .end local v0    # "len":I
    .end local v1    # "newProps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    :cond_3
    :goto_2
    return-object p0
.end method

.method public replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 5
    .param p1, "origProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "newProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 430
    const/4 v0, 0x1

    .line 431
    .local v0, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v1, v1

    .line 434
    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 437
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_0

    .line 438
    aput-object p2, v2, v0

    .line 439
    nop

    .line 442
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v3

    aput-object p2, v2, v3

    .line 443
    return-void

    .line 433
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 435
    :cond_1
    new-instance v2, Ljava/util/NoSuchElementException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No entry \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' found, can\'t replace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public size()I
    .locals 1

    .line 484
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Properties=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const/4 v1, 0x0

    .line 690
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 691
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 693
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "count":I
    .local v4, "count":I
    if-lez v1, :cond_0

    .line 694
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    move v1, v4

    goto :goto_0

    .line 701
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 703
    const-string v3, "(aliases: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 705
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public withCaseInsensitivity(Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 1
    .param p1, "state"    # Z

    .line 206
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    if-ne v0, p1, :cond_0

    .line 207
    return-object p0

    .line 209
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Z)V

    return-object v0
.end method

.method public withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 6
    .param p1, "newProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 317
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertyName(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    array-length v2, v2

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 320
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 321
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_findFromOrdered(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)I

    move-result v5

    invoke-direct {v4, p0, p1, v1, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;II)V

    return-object v4

    .line 319
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 326
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_hashCode(Ljava/lang/String;)I

    move-result v1

    .line 328
    .local v1, "slot":I
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;I)V

    return-object v2
.end method

.method public withoutProperties(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .line 387
    .local p1, "toExclude":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withoutProperties(Ljava/util/Collection;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v0

    return-object v0
.end method

.method public withoutProperties(Ljava/util/Collection;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;"
        }
    .end annotation

    .line 400
    .local p1, "toExclude":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "toInclude":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 401
    return-object p0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    array-length v0, v0

    .line 404
    .local v0, "len":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v1, "newProps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 407
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_propsInOrder:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aget-object v3, v3, v2

    .line 411
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_2

    .line 412
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->shouldIgnore(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 413
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_caseInsensitive:Z

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_aliasDefs:Ljava/util/Map;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->_locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    return-object v2
.end method

.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 743
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 745
    if-eqz p4, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p4, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 747
    .local v0, "wrap":Z
    :goto_2
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_4

    .line 748
    if-eqz v0, :cond_3

    instance-of v1, p1, Lcom/fasterxml/jackson/core/JacksonException;

    if-nez v1, :cond_5

    .line 749
    :cond_3
    move-object v1, p1

    check-cast v1, Ljava/io/IOException;

    throw v1

    .line 751
    :cond_4
    if-nez v0, :cond_5

    .line 752
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfRTE(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 754
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1
.end method
