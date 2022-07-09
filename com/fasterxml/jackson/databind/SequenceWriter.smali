.class public Lcom/fasterxml/jackson/databind/SequenceWriter;
.super Ljava/lang/Object;
.source "SequenceWriter.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field protected final _cfgCloseCloseable:Z

.field protected final _cfgFlush:Z

.field protected final _closeGenerator:Z

.field protected _closed:Z

.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected final _generator:Lcom/fasterxml/jackson/core/JsonGenerator;

.field protected _openArray:Z

.field protected final _provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

.field protected final _rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/core/JsonGenerator;ZLcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)V
    .locals 2
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "closeGenerator"    # Z
    .param p4, "prefetch"    # Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 83
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 84
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closeGenerator:Z

    .line 85
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 86
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 88
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 89
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    .line 90
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    .line 93
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForRootValues()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 94
    return-void
.end method

.method private final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddRootValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .local v0, "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    goto :goto_0

    .line 325
    .end local v0    # "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    const/4 v4, 0x0

    .line 326
    invoke-virtual {v3, p1, v4}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 325
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->addSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 328
    .restart local v0    # "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :goto_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 329
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v1
.end method

.method private final _findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 309
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddRootValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .local v0, "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    goto :goto_0

    .line 312
    .end local v0    # "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    const/4 v4, 0x0

    .line 313
    invoke-virtual {v3, p1, v4}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 312
    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 315
    .restart local v0    # "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :goto_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 316
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v1
.end method


# virtual methods
.method protected _writeCloseableValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    .line 255
    .local v0, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 256
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 258
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    move-object v1, v3

    .line 259
    if-nez v1, :cond_0

    .line 260
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    move-object v1, v3

    .line 263
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 264
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 267
    :cond_1
    move-object v2, v0

    .line 268
    .local v2, "tmpToClose":Ljava/io/Closeable;
    const/4 v0, 0x0

    .line 269
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v2    # "tmpToClose":Ljava/io/Closeable;
    if-eqz v0, :cond_2

    .line 273
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 277
    :cond_2
    :goto_1
    return-object p0

    .line 271
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 273
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 274
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    .line 276
    :cond_3
    :goto_3
    throw v1
.end method

.method protected _writeCloseableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    .line 285
    .local v0, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 286
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 287
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    move-object v1, v2

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 290
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 293
    :cond_1
    move-object v2, v0

    .line 294
    .local v2, "tmpToClose":Ljava/io/Closeable;
    const/4 v0, 0x0

    .line 295
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v2    # "tmpToClose":Ljava/io/Closeable;
    if-eqz v0, :cond_2

    .line 299
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 303
    :cond_2
    :goto_1
    return-object p0

    .line 297
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 299
    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 300
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    .line 302
    :cond_3
    :goto_3
    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    if-nez v0, :cond_1

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    .line 235
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    .line 237
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closeGenerator:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 243
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 228
    :cond_0
    return-void
.end method

.method public init(Z)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 1
    .param p1, "wrapInArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    .line 106
    :cond_0
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .line 121
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 139
    return-object p0

    .line 142
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    if-eqz v1, :cond_1

    instance-of v1, p1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_writeCloseableValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 146
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v1, :cond_2

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 148
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 149
    if-nez v1, :cond_2

    .line 150
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 153
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 154
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 157
    :cond_3
    return-object p0
.end method

.method public write(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 173
    return-object p0

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_writeCloseableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object v0

    return-object v0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 185
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 186
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 189
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 192
    :cond_3
    return-object p0
.end method

.method public writeAll(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/SequenceWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    .line 219
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 220
    :cond_0
    return-object p0
.end method

.method public writeAll(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "*>;>(TC;)",
            "Lcom/fasterxml/jackson/databind/SequenceWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    .local p1, "container":Ljava/util/Collection;, "TC;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 207
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    .line 208
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 209
    :cond_0
    return-object p0
.end method

.method public writeAll([Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "value"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 198
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-object p0
.end method
