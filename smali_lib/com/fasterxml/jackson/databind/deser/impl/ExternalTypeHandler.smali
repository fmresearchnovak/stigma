.class public Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;,
        Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;
    }
.end annotation


# instance fields
.field private final _beanType:Lcom/fasterxml/jackson/databind/JavaType;

.field private final _nameToPropertyIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

.field private final _tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

.field private final _typeIds:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;Ljava/util/Map;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/util/TokenBuffer;)V
    .locals 0
    .param p1, "beanType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "properties"    # [Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    .param p4, "typeIds"    # [Ljava/lang/String;
    .param p5, "tokens"    # [Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Lcom/fasterxml/jackson/databind/util/TokenBuffer;",
            ")V"
        }
    .end annotation

    .line 40
    .local p3, "nameToPropertyIndex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 42
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 43
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/Map;

    .line 44
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 46
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;)V
    .locals 2
    .param p1, "h"    # Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 51
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    .line 52
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/Map;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/Map;

    .line 53
    array-length v0, v0

    .line 54
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    .line 55
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .line 56
    return-void
.end method

.method private final _handleTypePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "propName"    # Ljava/lang/String;
    .param p4, "bean"    # Ljava/lang/Object;
    .param p5, "typeId"    # Ljava/lang/String;
    .param p6, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v0, v0, p6

    .line 110
    .local v0, "prop":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 111
    return v2

    .line 114
    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v3, v3, p6

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 116
    .local v2, "canDeserialize":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 117
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move v7, p6

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    const/4 v4, 0x0

    aput-object v4, v3, p6

    goto :goto_0

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aput-object p5, v3, p6

    .line 123
    :goto_0
    return v1
.end method

.method public static builder(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;
    .locals 1
    .param p0, "beanType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 62
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method


# virtual methods
.method protected final _deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "index"    # I
    .param p4, "typeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 342
    .local v0, "p2":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 344
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 345
    const/4 v2, 0x0

    return-object v2

    .line 347
    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v2

    .line 348
    .local v2, "merged":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V

    .line 349
    invoke-virtual {v2, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 351
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V

    .line 354
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    .line 355
    .local v3, "mp":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 356
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method protected final _deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .param p4, "index"    # I
    .param p5, "typeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    if-nez p5, :cond_0

    .line 365
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Internal error in external Type Id handling: `null` type id passed"

    invoke-virtual {p2, v0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v0, v0, p4

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 371
    .local v0, "p2":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 373
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v2, v2, p4

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 375
    return-void

    .line 377
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v2

    .line 378
    .local v2, "merged":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V

    .line 379
    invoke-virtual {v2, p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 382
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V

    .line 384
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    .line 385
    .local v3, "mp":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 386
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v4, v4, p4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    invoke-virtual {v4, v3, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method public complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;)Ljava/lang/Object;
    .locals 16
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "buffer"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    .param p4, "creator"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v4, v4

    .line 266
    .local v4, "len":I
    new-array v5, v4, [Ljava/lang/Object;

    .line 267
    .local v5, "values":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_9

    .line 268
    iget-object v7, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 269
    .local v7, "typeId":Ljava/lang/String;
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v8, v8, v6

    .line 270
    .local v8, "extProp":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v7, :cond_3

    .line 272
    iget-object v11, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v11, v11, v6

    .line 273
    .local v11, "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    if-eqz v11, :cond_8

    .line 276
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->firstToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v12

    sget-object v13, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v12, v13, :cond_0

    .line 278
    goto/16 :goto_4

    .line 282
    :cond_0
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasDefaultType()Z

    move-result v12

    if-nez v12, :cond_1

    .line 283
    iget-object v12, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v13

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v13

    new-array v10, v10, [Ljava/lang/Object;

    .line 285
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v9

    .line 283
    const-string v9, "Missing external type id property \'%s\'"

    invoke-virtual {v2, v12, v13, v9, v10}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 287
    :cond_1
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getDefaultTypeId()Ljava/lang/String;

    move-result-object v7

    .line 289
    .end local v11    # "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_2
    :goto_1
    goto :goto_2

    :cond_3
    iget-object v11, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v11, v11, v6

    if-nez v11, :cond_2

    .line 290
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v11

    .line 291
    .local v11, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isRequired()Z

    move-result v12

    if-nez v12, :cond_4

    sget-object v12, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 292
    invoke-virtual {v2, v12}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 293
    :cond_4
    iget-object v12, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 295
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    iget-object v9, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v10

    .line 293
    const-string v9, "Missing property \'%s\' for external type id \'%s\'"

    invoke-virtual {v2, v12, v13, v9, v14}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .end local v11    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_5
    :goto_2
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v9, v9, v6

    if-eqz v9, :cond_6

    .line 299
    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v5, v6

    .line 302
    :cond_6
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v9

    .line 304
    .local v9, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v10

    if-ltz v10, :cond_8

    .line 305
    aget-object v10, v5, v6

    invoke-virtual {v3, v9, v10}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypeProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v10

    .line 310
    .local v10, "typeProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v11

    if-ltz v11, :cond_8

    .line 314
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    const-class v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 315
    move-object v11, v7

    .local v11, "v":Ljava/lang/Object;
    goto :goto_3

    .line 317
    .end local v11    # "v":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferForInputBuffering(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v11

    .line 318
    .local v11, "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v11, v7}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v12

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParserOnFirstToken()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v13

    invoke-virtual {v12, v13, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v12

    .line 320
    .local v12, "v":Ljava/lang/Object;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->close()V

    move-object v11, v12

    .line 322
    .end local v12    # "v":Ljava/lang/Object;
    .local v11, "v":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v3, v10, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    .line 267
    .end local v7    # "typeId":Ljava/lang/String;
    .end local v8    # "extProp":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    .end local v9    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v10    # "typeProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v11    # "v":Ljava/lang/Object;
    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 326
    .end local v6    # "i":I
    :cond_9
    move-object/from16 v6, p4

    invoke-virtual {v6, v2, v3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v7

    .line 328
    .local v7, "bean":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v4, :cond_b

    .line 329
    iget-object v9, v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v9

    .line 330
    .restart local v9    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v10

    if-gez v10, :cond_a

    .line 331
    aget-object v10, v5, v8

    invoke-virtual {v9, v7, v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .end local v9    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 334
    .end local v8    # "i":I
    :cond_b
    return-object v7
.end method

.method public complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    array-length v1, v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_7

    .line 205
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 206
    .local v2, "typeId":Ljava/lang/String;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v8, v3, v0

    .line 207
    .local v8, "extProp":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3

    .line 208
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v5, v5, v0

    .line 211
    .local v5, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    if-nez v5, :cond_0

    .line 212
    goto/16 :goto_2

    .line 216
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->firstToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    .line 217
    .local v6, "t":Lcom/fasterxml/jackson/core/JsonToken;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 218
    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v7

    .line 219
    .local v7, "buffered":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 220
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v9

    .line 221
    .local v9, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    invoke-static {v7, p2, v10}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeIfNatural(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v10

    .line 222
    .local v10, "result":Ljava/lang/Object;
    if-eqz v10, :cond_1

    .line 223
    invoke-virtual {v9, p3, v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    goto/16 :goto_2

    .line 228
    .end local v7    # "buffered":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v9    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v10    # "result":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasDefaultType()Z

    move-result v7

    if-nez v7, :cond_2

    .line 229
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    .line 231
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v3

    .line 229
    const-string v3, "Missing external type id property \'%s\' (and no \'defaultImpl\' specified)"

    invoke-virtual {p2, v7, v9, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 233
    :cond_2
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getDefaultTypeId()Ljava/lang/String;

    move-result-object v2

    .line 234
    if-nez v2, :cond_6

    .line 235
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    .line 237
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v3

    .line 235
    const-string v3, "Invalid default type id for property \'%s\': `null` returned by TypeIdResolver"

    invoke-virtual {p2, v7, v9, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 240
    .end local v5    # "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    .end local v6    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v5, v5, v0

    if-nez v5, :cond_6

    .line 241
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getProperty()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v5

    .line 243
    .local v5, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isRequired()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 244
    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 245
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 247
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->getTypePropertyName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v4

    .line 245
    const-string v3, "Missing property \'%s\' for external type id \'%s\'"

    invoke-virtual {p2, v6, v7, v3, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportPropertyInputMismatch(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_5
    return-object p3

    .line 240
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_6
    :goto_1
    move-object v9, v2

    .line 251
    .end local v2    # "typeId":Ljava/lang/String;
    .local v9, "typeId":Ljava/lang/String;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 204
    .end local v8    # "extProp":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    .end local v9    # "typeId":Ljava/lang/String;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 253
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_7
    return-object p3
.end method

.method public handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "propName"    # Ljava/lang/String;
    .param p4, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 139
    .local v10, "ob":Ljava/lang/Object;
    const/4 v0, 0x0

    if-nez v10, :cond_0

    .line 140
    return v0

    .line 143
    :cond_0
    instance-of v1, v10, Ljava/util/List;

    const/4 v11, 0x1

    if-eqz v1, :cond_4

    .line 144
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 147
    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    .line 150
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    invoke-virtual {v2, v9}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "typeId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 153
    iget-object v4, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-object v3, v4, v5

    .line 154
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    iget-object v4, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-object v3, v4, v5

    goto :goto_0

    .line 157
    .end local v3    # "typeId":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 158
    :cond_2
    invoke-virtual {v8, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferAsCopyOfValue(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v3

    .line 159
    .local v3, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    iget-object v4, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-object v3, v4, v5

    .line 160
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    iget-object v4, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput-object v3, v4, v5

    goto :goto_1

    .line 164
    .end local v3    # "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_3
    :goto_2
    return v11

    .line 169
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    :cond_4
    move-object v1, v10

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 170
    .local v12, "index":I
    iget-object v1, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_properties:[Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;

    aget-object v13, v1, v12

    .line 172
    .local v13, "prop":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;
    invoke-virtual {v13, v9}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty;->hasTypePropertyName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 175
    iget-object v1, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 177
    if-eqz p4, :cond_5

    iget-object v1, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aget-object v1, v1, v12

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    move v14, v0

    .local v0, "canDeserialize":Z
    goto :goto_3

    .line 180
    .end local v0    # "canDeserialize":Z
    :cond_6
    invoke-virtual {v8, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->bufferAsCopyOfValue(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v1

    .line 181
    .local v1, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    iget-object v2, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aput-object v1, v2, v12

    .line 182
    if-eqz p4, :cond_7

    iget-object v2, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v2, v2, v12

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    :cond_7
    move v14, v0

    .line 186
    .end local v1    # "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    .local v14, "canDeserialize":Z
    :goto_3
    if-eqz v14, :cond_8

    .line 187
    iget-object v0, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_typeIds:[Ljava/lang/String;

    aget-object v15, v0, v12

    .line 189
    .local v15, "typeId":Ljava/lang/String;
    const/16 v16, 0x0

    aput-object v16, v0, v12

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move v4, v12

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;ILjava/lang/String;)V

    .line 191
    iget-object v0, v6, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_tokens:[Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    aput-object v16, v0, v12

    .line 193
    .end local v15    # "typeId":Ljava/lang/String;
    :cond_8
    return v11
.end method

.method public handleTypePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "propName"    # Ljava/lang/String;
    .param p4, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    move-object v7, p0

    iget-object v0, v7, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_nameToPropertyIndex:Ljava/util/Map;

    move-object/from16 v8, p3

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 86
    .local v9, "ob":Ljava/lang/Object;
    if-nez v9, :cond_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "typeId":Ljava/lang/String;
    instance-of v0, v9, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "result":Z
    move-object v1, v9

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v0

    .end local v0    # "result":Z
    .local v12, "result":Z
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Integer;

    .line 94
    .local v13, "index":Ljava/lang/Integer;
    nop

    .line 95
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_handleTypePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x1

    move v12, v0

    .line 98
    .end local v13    # "index":Ljava/lang/Integer;
    :cond_1
    goto :goto_0

    .line 99
    :cond_2
    return v12

    .line 101
    .end local v12    # "result":Z
    :cond_3
    move-object v0, v9

    check-cast v0, Ljava/lang/Integer;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 101
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->_handleTypePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    .locals 1

    .line 70
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;)V

    return-object v0
.end method
