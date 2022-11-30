.class public abstract Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ReferenceTypeSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "TT;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# static fields
.field public static final MARKER_FOR_EMPTY:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final _referredType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _suppressNulls:Z

.field protected final _suppressableValue:Ljava/lang/Object;

.field protected final _unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

.field protected final _valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;Ljava/lang/Object;Z)V
    .locals 1
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p3, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p5, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .param p6, "suppressableValue"    # Ljava/lang/Object;
    .param p7, "suppressNulls"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/util/NameTransformer;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    .local p1, "base":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<*>;"
    .local p4, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;)V

    .line 118
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 120
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForProperties()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 121
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 122
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 123
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 124
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 125
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 126
    iput-boolean p7, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressNulls:Z

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/ReferenceType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 1
    .param p1, "fullType"    # Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    .local p4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 101
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 103
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 104
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 105
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 106
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressNulls:Z

    .line 108
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForProperties()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 109
    return-void
.end method

.method private final _findCachedSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
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

    .line 453
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 454
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 458
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 465
    .local v1, "fullType":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 466
    .end local v1    # "fullType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findPrimaryPropertySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-eqz v1, :cond_1

    .line 470
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 474
    :cond_2
    return-object v0
.end method

.method private final _findSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
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

    .line 485
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract _getReferenced(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected abstract _getReferencedIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected abstract _isValuePresent(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected _useStatic(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 6
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p3, "referredType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 287
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 288
    return v1

    .line 291
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 292
    return v2

    .line 295
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->useStaticType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    return v2

    .line 299
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 300
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 301
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    .line 302
    .local v3, "ann":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    if-eqz v3, :cond_4

    .line 303
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v4

    .line 304
    .local v4, "t":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    sget-object v5, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne v4, v5, :cond_3

    .line 305
    return v2

    .line 307
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DYNAMIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne v4, v2, :cond_4

    .line 308
    return v1

    .line 313
    .end local v3    # "ann":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .end local v4    # "t":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    return v1
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 4
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 431
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-nez v0, :cond_0

    .line 432
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    invoke-direct {p0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 438
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 9
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

    .line 201
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 202
    .local v0, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v0

    .line 206
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->findAnnotatedContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 207
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 210
    if-nez v1, :cond_1

    .line 212
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_useStatic(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, p1, v2, p2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 221
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-ne v2, v1, :cond_3

    .line 223
    move-object v2, p0

    .local v2, "refSer":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<*>;"
    goto :goto_1

    .line 225
    .end local v2    # "refSer":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<*>;"
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;

    move-result-object v2

    .line 229
    .restart local v2    # "refSer":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<*>;"
    :goto_1
    if-eqz p2, :cond_8

    .line 230
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->handledType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/fasterxml/jackson/databind/BeanProperty;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v3

    .line 231
    .local v3, "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-eqz v3, :cond_8

    .line 232
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v4

    .line 234
    .local v4, "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v4, v5, :cond_8

    .line 237
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 269
    const/4 v5, 0x0

    .line 270
    .local v5, "valueToSuppress":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "suppressNulls":Z
    goto :goto_2

    .line 264
    .end local v5    # "valueToSuppress":Ljava/lang/Object;
    .end local v6    # "suppressNulls":Z
    :pswitch_0
    const/4 v5, 0x0

    .line 265
    .restart local v5    # "valueToSuppress":Ljava/lang/Object;
    const/4 v6, 0x1

    .line 266
    .restart local v6    # "suppressNulls":Z
    goto :goto_2

    .line 256
    .end local v5    # "valueToSuppress":Ljava/lang/Object;
    .end local v6    # "suppressNulls":Z
    :pswitch_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 257
    .restart local v5    # "valueToSuppress":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 258
    const/4 v6, 0x1

    .restart local v6    # "suppressNulls":Z
    goto :goto_2

    .line 260
    .end local v6    # "suppressNulls":Z
    :cond_4
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v6

    .line 262
    .restart local v6    # "suppressNulls":Z
    goto :goto_2

    .line 252
    .end local v5    # "valueToSuppress":Ljava/lang/Object;
    .end local v6    # "suppressNulls":Z
    :pswitch_2
    const/4 v6, 0x1

    .line 253
    .restart local v6    # "suppressNulls":Z
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    .line 254
    .restart local v5    # "valueToSuppress":Ljava/lang/Object;
    goto :goto_2

    .line 248
    .end local v5    # "valueToSuppress":Ljava/lang/Object;
    .end local v6    # "suppressNulls":Z
    :pswitch_3
    const/4 v5, 0x1

    .line 249
    .local v5, "suppressNulls":Z
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v6, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    .line 250
    .local v6, "valueToSuppress":Ljava/lang/Object;
    :cond_5
    move-object v8, v6

    move v6, v5

    move-object v5, v8

    goto :goto_2

    .line 239
    .end local v5    # "suppressNulls":Z
    .end local v6    # "valueToSuppress":Ljava/lang/Object;
    :pswitch_4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v5

    .line 240
    .local v5, "valueToSuppress":Ljava/lang/Object;
    const/4 v6, 0x1

    .line 241
    .local v6, "suppressNulls":Z
    if-eqz v5, :cond_6

    .line 242
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 243
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 273
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    if-ne v7, v5, :cond_7

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressNulls:Z

    if-eq v7, v6, :cond_8

    .line 275
    :cond_7
    invoke-virtual {v2, v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;

    move-result-object v2

    .line 280
    .end local v3    # "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .end local v4    # "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end local v5    # "valueToSuppress":Ljava/lang/Object;
    .end local v6    # "suppressNulls":Z
    :cond_8
    return-object v2

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

.method public getReferredType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 359
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "TT;)Z"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_isValuePresent(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    return v0

    .line 329
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_getReferenced(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "contents":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 331
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressNulls:Z

    return v1

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 334
    const/4 v1, 0x0

    return v1

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 337
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v1, :cond_3

    .line 339
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 342
    goto :goto_0

    .line 340
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    new-instance v3, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw v3

    .line 344
    .end local v2    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    .line 345
    invoke-virtual {v1, p1, v0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 347
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isUnwrappingSerializer()Z
    .locals 1

    .line 352
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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

    .line 372
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    .local p1, "ref":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_getReferencedIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 374
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-nez v1, :cond_0

    .line 375
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 377
    :cond_0
    return-void

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 380
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v1, :cond_2

    .line 381
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 383
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-eqz v2, :cond_3

    .line 384
    invoke-virtual {v1, v0, p2, p3, v2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    goto :goto_0

    .line 386
    :cond_3
    invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 388
    :goto_0
    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 3
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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

    .line 395
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    .local p1, "ref":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_getReferencedIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 397
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 400
    :cond_0
    return-void

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 414
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v1, :cond_2

    .line 415
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 417
    :cond_2
    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 418
    return-void
.end method

.method public unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .param p1, "transformer"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/NameTransformer;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "TT;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;, "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 132
    .local v0, "valueSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-ne v0, v1, :cond_0

    .line 137
    return-object p0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->chainedTransformer(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v1

    :goto_0
    nop

    .line 142
    .local v1, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-ne v2, v1, :cond_2

    .line 143
    return-object p0

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;

    move-result-object v2

    return-object v2
.end method

.method public abstract withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract withResolved(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/util/NameTransformer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<",
            "TT;>;"
        }
    .end annotation
.end method
