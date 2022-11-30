.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;
.super Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.source "TypeDeserializerBase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _baseType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

.field protected _defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _deserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final _idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final _typeIdVisible:Z

.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V
    .locals 4
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "idRes"    # Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .param p3, "typePropertyName"    # Ljava/lang/String;
    .param p4, "typeIdVisible"    # Z
    .param p5, "defaultImpl"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 72
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 74
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    .line 75
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typePropertyName:Ljava/lang/String;

    .line 76
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typeIdVisible:Z

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/Map;

    .line 79
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 81
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 84
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;-><init>()V

    .line 85
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 86
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    .line 87
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typePropertyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typePropertyName:Ljava/lang/String;

    .line 88
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typeIdVisible:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typeIdVisible:Z

    .line 89
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/Map;

    .line 90
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    .line 91
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 92
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 93
    return-void
.end method


# virtual methods
.method protected _deserializeWithNativeTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTypeId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializeWithNativeTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected _deserializeWithNativeTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    if-nez p3, :cond_0

    .line 260
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_findDefaultImplDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 261
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->baseType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No (native) type id found when one was expected for polymorphic type handling"

    invoke-virtual {p2, v1, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 266
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "typeIdStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    move-object v0, v1

    .line 269
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected final _findDefaultImplDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v0, :cond_1

    .line 216
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_INVALID_SUBTYPE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;

    return-object v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 222
    .local v0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;

    return-object v1

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v2, :cond_3

    .line 228
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImplDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    monitor-exit v1

    return-object v2

    .line 232
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected final _findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 5
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "typeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 153
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_4

    .line 159
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v1, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 160
    .local v1, "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v1, :cond_1

    .line 162
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_findDefaultImplDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 163
    if-nez v0, :cond_3

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_handleUnknownTypeId(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 166
    .local v2, "actual":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v2, :cond_0

    .line 168
    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;

    return-object v3

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 172
    .end local v2    # "actual":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_1

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v2, :cond_2

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 193
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 200
    goto :goto_0

    .line 196
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, p2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->invalidTypeIdException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3

    .line 203
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 205
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_deserializers:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v1    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_4
    return-object v0
.end method

.method protected _handleMissingTypeId(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "extraDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-virtual {p1, v0, v1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingTypeId(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected _handleUnknownTypeId(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "typeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->getDescForKnownTypeIds()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "extraDesc":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 290
    const-string v0, "type ids are not statically known"

    goto :goto_0

    .line 292
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "known type ids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-eqz v1, :cond_1

    .line 295
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 296
    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/BeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 295
    const-string v1, "%s (for POJO property \'%s\')"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnknownTypeId(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    return-object v1
.end method

.method public baseType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public baseTypeName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.end method

.method public getDefaultImpl()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->rawClass(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeIdResolver()Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    return-object v0
.end method

.method public abstract getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.end method

.method public hasDefaultImpl()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "; base-type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "; id-resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
