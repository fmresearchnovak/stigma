.class public Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
.super Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "MapEntrySerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
        "Ljava/util/Map$Entry<",
        "**>;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# static fields
.field public static final MARKER_FOR_EMPTY:Ljava/lang/Object;


# instance fields
.field protected _dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected final _entryType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected _keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final _suppressNulls:Z

.field protected final _suppressableValue:Ljava/lang/Object;

.field protected _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _valueTypeIsStatic:Z

.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "staticTyping"    # Z
    .param p5, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p6, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 111
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 112
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_entryType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 113
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 114
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 115
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeIsStatic:Z

    .line 116
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 117
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 118
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForProperties()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    .line 121
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 8
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p3, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    .local p4, "keySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p5, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    iget-object v6, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    iget-boolean v7, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;Z)V

    .line 130
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p3, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p6, "suppressableValue"    # Ljava/lang/Object;
    .param p7, "suppressNulls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 138
    .local p4, "keySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p5, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 139
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_entryType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_entryType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 140
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 141
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 142
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeIsStatic:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeIsStatic:Z

    .line 143
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 144
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 145
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 147
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForProperties()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 148
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 149
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    .line 150
    iput-boolean p7, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    .line 151
    return-void
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
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

    .line 436
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 437
    .local v0, "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 438
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 440
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v1
.end method

.method protected final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p1, "map"    # Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
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

    .line 426
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddSecondarySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 427
    .local v0, "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    if-eq p1, v1, :cond_0

    .line 428
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 430
    :cond_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v1
.end method

.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 9
    .param p1, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
            "*>;"
        }
    .end annotation

    .line 155
    new-instance v8, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;Z)V

    return-object v8
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 12
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    const/4 v1, 0x0

    .line 188
    .local v1, "keySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    .line 189
    .local v2, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    const/4 v3, 0x0

    if-nez p2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    .line 192
    .local v4, "propertyAcc":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :goto_0
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 193
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v5

    .line 194
    .local v5, "serDef":Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 195
    invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 197
    :cond_1
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v5

    .line 198
    if-eqz v5, :cond_2

    .line 199
    invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 202
    .end local v5    # "serDef":Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 206
    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->findContextualConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 207
    if-nez v0, :cond_4

    .line 211
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeIsStatic:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v5

    if-nez v5, :cond_4

    .line 212
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v5, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findContentValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 215
    :cond_4
    if-nez v1, :cond_5

    .line 216
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 218
    :cond_5
    if-nez v1, :cond_6

    .line 219
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v5, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    goto :goto_1

    .line 221
    :cond_6
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 224
    :goto_1
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    .line 225
    .local v5, "valueToSuppress":Ljava/lang/Object;
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    .line 226
    .local v6, "suppressNulls":Z
    if-eqz p2, :cond_9

    .line 227
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v7

    invoke-interface {p2, v7, v3}, Lcom/fasterxml/jackson/databind/BeanProperty;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v7

    .line 228
    .local v7, "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-eqz v7, :cond_9

    .line 229
    invoke-virtual {v7}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v8

    .line 230
    .local v8, "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v9, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v8, v9, :cond_9

    .line 231
    sget-object v9, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    invoke-virtual {v8}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 263
    const/4 v5, 0x0

    .line 266
    const/4 v6, 0x0

    move-object v3, v5

    move v11, v6

    goto :goto_2

    .line 258
    :pswitch_0
    const/4 v5, 0x0

    .line 259
    const/4 v6, 0x1

    .line 260
    move-object v3, v5

    move v11, v6

    goto :goto_2

    .line 250
    :pswitch_1
    invoke-virtual {v7}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p1, v3, v9}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 251
    if-nez v5, :cond_7

    .line 252
    const/4 v6, 0x1

    move-object v3, v5

    move v11, v6

    goto :goto_2

    .line 254
    :cond_7
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v6

    .line 256
    move-object v3, v5

    move v11, v6

    goto :goto_2

    .line 246
    :pswitch_2
    const/4 v6, 0x1

    .line 247
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    .line 248
    move-object v3, v5

    move v11, v6

    goto :goto_2

    .line 242
    :pswitch_3
    const/4 v6, 0x1

    .line 243
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    :cond_8
    move-object v5, v3

    .line 244
    move v11, v6

    goto :goto_2

    .line 233
    :pswitch_4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v5

    .line 234
    const/4 v6, 0x1

    .line 235
    if-eqz v5, :cond_9

    .line 236
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 237
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    move v11, v6

    goto :goto_2

    .line 273
    .end local v7    # "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .end local v8    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :cond_9
    move-object v3, v5

    move v11, v6

    .end local v5    # "valueToSuppress":Ljava/lang/Object;
    .end local v6    # "suppressNulls":Z
    .local v3, "valueToSuppress":Ljava/lang/Object;
    .local v11, "suppressNulls":Z
    :goto_2
    move-object v5, p0

    move-object v6, p2

    move-object v7, v1

    move-object v8, v0

    move-object v9, v3

    move v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    move-result-object v5

    .line 276
    .local v5, "mser":Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->hasSingleElement(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public hasSingleElement(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)Z"
        }
    .end annotation

    .line 297
    .local p1, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/Map$Entry;)Z
    .locals 5
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Ljava/util/Map$Entry<",
            "**>;)Z"
        }
    .end annotation

    .line 303
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 305
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    return v1

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 308
    return v2

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 311
    .local v1, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v1, :cond_2

    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 315
    .local v3, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 316
    if-nez v1, :cond_2

    .line 318
    :try_start_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p0, v4, v3, p1}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 321
    goto :goto_0

    .line 319
    :catch_0
    move-exception v4

    .line 320
    .local v4, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    return v2

    .line 324
    .end local v3    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v2, v3, :cond_3

    .line 325
    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 327
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->serialize(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    .local p1, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->serializeDynamic(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 342
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 343
    return-void
.end method

.method protected serializeDynamic(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 8
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    .local p1, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 362
    .local v0, "vts":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 365
    .local v1, "keyElem":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 366
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p3, v2, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .local v2, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_0

    .line 368
    .end local v2    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 371
    .restart local v2    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 374
    .local v3, "valueElem":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 375
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    if-eqz v4, :cond_1

    .line 376
    return-void

    .line 378
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .local v4, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    goto :goto_2

    .line 380
    .end local v4    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 381
    .restart local v4    # "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v4, :cond_4

    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 383
    .local v5, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 384
    if-nez v4, :cond_4

    .line 385
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 386
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 387
    invoke-virtual {p3, v7, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 386
    invoke-virtual {p0, v6, v7, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    goto :goto_1

    .line 389
    :cond_3
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p0, v6, v5, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 394
    .end local v5    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 395
    sget-object v6, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v5, v6, :cond_5

    .line 396
    invoke-virtual {v4, p3, v3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 397
    return-void

    .line 399
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 400
    return-void

    .line 404
    :cond_6
    :goto_2
    invoke-virtual {v2, v1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 406
    if-nez v0, :cond_7

    .line 407
    :try_start_0
    invoke-virtual {v4, v3, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_3

    .line 409
    :cond_7
    invoke-virtual {v4, v3, p2, p3, v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :goto_3
    goto :goto_4

    .line 411
    :catch_0
    move-exception v5

    .line 412
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, "keyDesc":Ljava/lang/String;
    invoke-virtual {p0, p3, v5, p1, v6}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "keyDesc":Ljava/lang/String;
    :goto_4
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->serializeWithType(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 1
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    .local p1, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 351
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 352
    invoke-virtual {p4, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->typeId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object v0

    .line 351
    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object v0

    .line 353
    .local v0, "typeIdDef":Lcom/fasterxml/jackson/core/type/WritableTypeId;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->serializeDynamic(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 354
    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 355
    return-void
.end method

.method public withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
    .locals 9
    .param p1, "suppressableValue"    # Ljava/lang/Object;
    .param p2, "suppressNulls"    # Z

    .line 174
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    if-ne v0, p2, :cond_0

    .line 176
    return-object p0

    .line 178
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
    .locals 9
    .param p1, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p4, "suppressableValue"    # Ljava/lang/Object;
    .param p5, "suppressNulls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;"
        }
    .end annotation

    .line 165
    .local p2, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p3, "valueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    new-instance v8, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;Z)V

    return-object v8
.end method
