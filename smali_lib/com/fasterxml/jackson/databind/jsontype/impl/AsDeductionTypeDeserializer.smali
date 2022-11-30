.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;
.source "AsDeductionTypeDeserializer.java"


# static fields
.field private static final EMPTY_CLASS_FINGERPRINT:Ljava/util/BitSet;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fieldBitIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final subtypeFingerprints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/BitSet;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->EMPTY_CLASS_FINGERPRINT:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/util/Collection;)V
    .locals 7
    .param p1, "bt"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "idRes"    # Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .param p3, "defaultImpl"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p5, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->fieldBitIndex:Ljava/util/Map;

    .line 48
    invoke-virtual {p0, p4, p5}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->buildFingerprints(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->subtypeFingerprints:Ljava/util/Map;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 53
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->fieldBitIndex:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->fieldBitIndex:Ljava/util/Map;

    .line 54
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->subtypeFingerprints:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->subtypeFingerprints:Ljava/util/Map;

    .line 55
    return-void
.end method

.method private static prune(Ljava/util/List;I)V
    .locals 2
    .param p1, "bit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/BitSet;",
            ">;I)V"
        }
    .end annotation

    .line 152
    .local p0, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/BitSet;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/BitSet;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 157
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/BitSet;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected buildFingerprints(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/util/Collection;)Ljava/util/Map;
    .locals 16
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/util/BitSet;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    .local p2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    .line 65
    .local v2, "ignoreCase":Z
    const/4 v3, 0x0

    .line 66
    .local v3, "nextField":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v4, "fingerprints":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/BitSet;Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 69
    .local v6, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v7

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 70
    .local v7, "subtyped":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/BeanDescription;->findProperties()Ljava/util/List;

    move-result-object v8

    .line 72
    .local v8, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    new-instance v9, Ljava/util/BitSet;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v3

    invoke-direct {v9, v10}, Ljava/util/BitSet;-><init>(I)V

    .line 73
    .local v9, "fingerprint":Ljava/util/BitSet;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 74
    .local v11, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 76
    :cond_0
    iget-object v13, v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->fieldBitIndex:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 77
    .local v13, "bitIndex":Ljava/lang/Integer;
    if-nez v13, :cond_1

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 79
    iget-object v14, v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->fieldBitIndex:Ljava/util/Map;

    add-int/lit8 v15, v3, 0x1

    .end local v3    # "nextField":I
    .local v15, "nextField":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v15

    .line 81
    .end local v15    # "nextField":I
    .restart local v3    # "nextField":I
    :cond_1
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/util/BitSet;->set(I)V

    .line 82
    .end local v11    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "bitIndex":Ljava/lang/Integer;
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 87
    .local v10, "existingFingerprint":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 92
    .end local v6    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v7    # "subtyped":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v8    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .end local v9    # "fingerprint":Ljava/util/BitSet;
    .end local v10    # "existingFingerprint":Ljava/lang/String;
    goto :goto_0

    .line 88
    .restart local v6    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .restart local v7    # "subtyped":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v8    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v9    # "fingerprint":Ljava/util/BitSet;
    .restart local v10    # "existingFingerprint":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    .line 89
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string v12, "Subtypes %s and %s have the same signature and cannot be uniquely deduced."

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    .end local v6    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v7    # "subtyped":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v8    # "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .end local v9    # "fingerprint":Ljava/util/BitSet;
    .end local v10    # "existingFingerprint":Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method public deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 100
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 110
    const-string v1, "Unexpected input"

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 114
    :cond_1
    :goto_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->subtypeFingerprints:Ljava/util/Map;

    sget-object v3, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->EMPTY_CLASS_FINGERPRINT:Ljava/util/BitSet;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "emptySubtype":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->_deserializeTypedForId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 121
    .end local v1    # "emptySubtype":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->subtypeFingerprints:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 126
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/BitSet;>;"
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v2

    .line 127
    .local v2, "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    sget-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v3

    .line 129
    .local v3, "ignoreCase":Z
    :goto_1
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v4, :cond_5

    .line 130
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentName()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 133
    :cond_3
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 135
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->fieldBitIndex:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 136
    .local v7, "bit":Ljava/lang/Integer;
    if-eqz v7, :cond_4

    .line 138
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v1, v8}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->prune(Ljava/util/List;I)V

    .line 139
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v5, :cond_4

    .line 140
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->subtypeFingerprints:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->_deserializeTypedForId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 129
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "bit":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_5
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Cannot deduce unique subtype of %s (%d candidates match)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "msgToReportIfDefaultImplFailsToo":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 1
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 59
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    :goto_0
    return-object v0
.end method
