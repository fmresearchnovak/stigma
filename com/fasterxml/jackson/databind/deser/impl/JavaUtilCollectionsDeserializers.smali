.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;
.super Ljava/lang/Object;
.source "JavaUtilCollectionsDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    }
.end annotation


# static fields
.field private static final PREFIX_JAVA_UTIL_ARRAYS:Ljava/lang/String; = "java.util.Arrays$"

.field private static final PREFIX_JAVA_UTIL_COLLECTIONS:Ljava/lang/String; = "java.util.Collections$"

.field private static final PREFIX_JAVA_UTIL_IMMUTABLE_COLL:Ljava/lang/String; = "java.util.ImmutableCollections$"

.field public static final TYPE_AS_LIST:I = 0xb

.field private static final TYPE_SINGLETON_LIST:I = 0x2

.field private static final TYPE_SINGLETON_MAP:I = 0x3

.field private static final TYPE_SINGLETON_SET:I = 0x1

.field private static final TYPE_SYNC_COLLECTION:I = 0x8

.field private static final TYPE_SYNC_LIST:I = 0x9

.field private static final TYPE_SYNC_MAP:I = 0xa

.field private static final TYPE_SYNC_SET:I = 0x7

.field private static final TYPE_UNMODIFIABLE_LIST:I = 0x5

.field private static final TYPE_UNMODIFIABLE_MAP:I = 0x6

.field private static final TYPE_UNMODIFIABLE_SET:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _findSingletonTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localName"    # Ljava/lang/String;

    .line 168
    const-string v0, "Singleton"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static _findSyncTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localName"    # Ljava/lang/String;

    .line 172
    const-string v0, "Synchronized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static _findUnmodifiableTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localName"    # Ljava/lang/String;

    .line 176
    const-string v0, "Unmodifiable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static _findUtilArrayTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "clsName"    # Ljava/lang/String;

    .line 147
    const-string v0, "java.util.Arrays$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static _findUtilCollectionsImmutableTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "clsName"    # Ljava/lang/String;

    .line 161
    const-string v0, "java.util.ImmutableCollections$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static _findUtilCollectionsTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "clsName"    # Ljava/lang/String;

    .line 154
    const-string v0, "java.util.Collections$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    .locals 2
    .param p0, "kind"    # I
    .param p1, "concreteType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;"
        }
    .end annotation

    .line 143
    .local p2, "rawSuper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;-><init>(ILcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static findForCollection(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "clsName":Ljava/lang/String;
    const-string v1, "java.util."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 47
    return-object v2

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findUtilCollectionsTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "localName":Ljava/lang/String;
    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v5, "Set"

    const-string v6, "List"

    if-eqz v1, :cond_9

    .line 54
    const/4 v7, 0x0

    .line 57
    .local v7, "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findUnmodifiableTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v9, "name":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 58
    invoke-virtual {v9, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    const-class v4, Ljava/util/Set;

    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v7

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 61
    const-class v3, Ljava/util/List;

    invoke-static {v4, p1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v7

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findSingletonTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    if-eqz v3, :cond_4

    .line 64
    invoke-virtual {v9, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    const/4 v3, 0x1

    const-class v4, Ljava/util/Set;

    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v7

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    const/4 v3, 0x2

    const-class v4, Ljava/util/List;

    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v7

    goto :goto_0

    .line 69
    :cond_4
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findSyncTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    if-eqz v3, :cond_7

    .line 71
    invoke-virtual {v9, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 72
    const/4 v3, 0x7

    const-class v4, Ljava/util/Set;

    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v7

    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {v9, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 74
    const/16 v3, 0x9

    const-class v4, Ljava/util/List;

    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v7

    goto :goto_0

    .line 75
    :cond_6
    const-string v3, "Collection"

    invoke-virtual {v9, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 76
    const/16 v3, 0x8

    const-class v4, Ljava/util/Collection;

    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v7

    .line 80
    :cond_7
    :goto_0
    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v2, v7}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;)V

    :goto_1
    return-object v2

    .line 82
    .end local v7    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    .end local v9    # "name":Ljava/lang/String;
    :cond_9
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findUtilArrayTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    if-eqz v7, :cond_b

    .line 84
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 85
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    const-class v3, Ljava/util/List;

    .line 86
    invoke-static {v4, p1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;)V

    .line 85
    return-object v2

    .line 88
    :cond_a
    return-object v2

    .line 91
    :cond_b
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findUtilCollectionsImmutableTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    if-eqz v4, :cond_e

    .line 93
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 94
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    const/16 v3, 0xb

    const-class v4, Ljava/util/List;

    .line 95
    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;)V

    .line 94
    return-object v2

    .line 97
    :cond_c
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 98
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    const-class v4, Ljava/util/Set;

    .line 99
    invoke-static {v3, p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;)V

    .line 98
    return-object v2

    .line 101
    :cond_d
    return-object v2

    .line 104
    :cond_e
    return-object v2
.end method

.method public static findForMap(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 7
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 115
    .local v1, "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findUtilCollectionsTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "localName":Ljava/lang/String;
    const/4 v4, 0x6

    const-string v5, "Map"

    if-eqz v2, :cond_3

    .line 118
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findUnmodifiableTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .local v6, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const-class v2, Ljava/util/Map;

    invoke-static {v4, p1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v1

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findSingletonTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .end local v6    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    const/4 v2, 0x3

    const-class v5, Ljava/util/Map;

    invoke-static {v2, p1, v5}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findSyncTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    if-eqz v2, :cond_2

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const/16 v2, 0xa

    const-class v5, Ljava/util/Map;

    invoke-static {v2, p1, v5}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v1

    .line 132
    .end local v4    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->_findUtilCollectionsImmutableTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    const-class v2, Ljava/util/Map;

    invoke-static {v4, p1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v1

    .line 137
    :cond_4
    :goto_1
    if-nez v1, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;)V

    :goto_2
    return-object v2
.end method
