.class public Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.source "BeanSerializerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    .line 85
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected _constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 18
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p3, "pb"    # Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
    .param p4, "staticTyping"    # Z
    .param p5, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 856
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v12

    .line 857
    .local v12, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    .line 858
    .local v13, "type":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v7, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 859
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v6

    move-object v1, v7

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    move-object v14, v7

    .line 862
    .local v14, "property":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    invoke-virtual {v0, v10, v11}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    .line 866
    .local v1, "annotatedSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    instance-of v2, v1, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    if-eqz v2, :cond_0

    .line 867
    move-object v2, v1

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    invoke-interface {v2, v10}, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 870
    :cond_0
    invoke-virtual {v10, v1, v14}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v15

    .line 872
    .end local v1    # "annotatedSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local v15, "annotatedSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    const/4 v1, 0x0

    .line 874
    .local v1, "contentTypeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v16, v1

    goto :goto_1

    .line 875
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v2

    invoke-virtual {v0, v13, v2, v11}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v1

    move-object/from16 v16, v1

    .line 878
    .end local v1    # "contentTypeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .local v16, "contentTypeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {v0, v13, v1, v11}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v17

    .line 879
    .local v17, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    move-object/from16 v8, p5

    move/from16 v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->buildWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    return-object v1
.end method

.method protected _createSerializer2(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    .line 199
    .local v1, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    if-nez p4, :cond_0

    .line 201
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p3, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Z

    move-result p4

    .line 204
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->buildContainerSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_5

    .line 207
    return-object v0

    .line 210
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    move-object v2, p2

    check-cast v2, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findReferenceSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 215
    .local v3, "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    invoke-interface {v3, v1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_3

    .line 217
    goto :goto_1

    .line 219
    .end local v3    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_3
    goto :goto_0

    .line 223
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 224
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 228
    :cond_5
    if-nez v0, :cond_6

    .line 232
    invoke-virtual {p0, p2, v1, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerByLookup(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 233
    if-nez v0, :cond_6

    .line 234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerByPrimaryType(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 235
    if-nez v0, :cond_6

    .line 239
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 243
    if-nez v0, :cond_6

    .line 244
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 249
    :cond_6
    if-eqz v0, :cond_7

    .line 251
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 252
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 253
    .local v3, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    invoke-virtual {v3, v1, p3, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 254
    .end local v3    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    goto :goto_2

    .line 257
    :cond_7
    return-object v0
.end method

.method protected _findUnsupportedTypeSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 889
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->checkUnsupportedType(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "errorMsg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 894
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;

    invoke-direct {v1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/UnsupportedTypeSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V

    return-object v1

    .line 897
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _isUnserializableJacksonType(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 908
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 909
    .local v0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 910
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 911
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/fasterxml/jackson/databind/DatabindContext;

    .line 912
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/fasterxml/jackson/core/TokenStreamFactory;

    .line 913
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/fasterxml/jackson/core/JsonParser;

    .line 914
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 915
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 909
    :goto_1
    return v1
.end method

.method protected constructBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 21
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
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

    .line 383
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Ljava/lang/Object;

    if-ne v0, v5, :cond_0

    .line 384
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_findUnsupportedTypeSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 388
    .local v5, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz v5, :cond_1

    .line 389
    return-object v5

    .line 393
    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_isUnserializableJacksonType(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;

    invoke-direct {v0, v3}, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0

    .line 396
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v6

    .line 397
    .local v6, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructBeanSerializerBuilder(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    move-result-object v0

    .line 398
    .local v0, "builder":Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setConfig(Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    .line 401
    invoke-virtual {v1, v2, v4, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanProperties(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)Ljava/util/List;

    move-result-object v7

    .line 402
    .local v7, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    if-nez v7, :cond_3

    .line 403
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    goto :goto_0

    .line 405
    :cond_3
    invoke-virtual {v1, v2, v4, v0, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeOverlappingTypeIds(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 409
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v9

    invoke-virtual {v8, v6, v9, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 412
    iget-object v8, v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 413
    iget-object v8, v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 414
    .local v9, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    invoke-virtual {v9, v6, v4, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->changeProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 415
    .end local v9    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    goto :goto_1

    .line 422
    :cond_4
    invoke-virtual {v1, v6, v4, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->filterUnwantedJDKProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 423
    invoke-virtual {v1, v6, v4, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->filterBeanProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 426
    iget-object v8, v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 427
    iget-object v8, v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 428
    .restart local v9    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    invoke-virtual {v9, v6, v4, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->orderProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 429
    .end local v9    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    goto :goto_2

    .line 435
    :cond_5
    invoke-virtual {v1, v2, v4, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructObjectIdHandler(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 437
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setProperties(Ljava/util/List;)V

    .line 438
    invoke-virtual {v1, v6, v4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findFilterId(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setFilterId(Ljava/lang/Object;)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findAnyGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v8

    .line 441
    .local v8, "anyGetter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v8, :cond_7

    .line 442
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v16

    .line 444
    .local v16, "anyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    .line 445
    .local v15, "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v1, v6, v15}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v17

    .line 448
    .local v17, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    invoke-virtual {v1, v2, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v18

    .line 449
    .local v18, "anySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-nez v18, :cond_6

    .line 451
    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, Ljava/util/Set;

    sget-object v10, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 452
    invoke-virtual {v6, v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    .line 451
    move-object/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v20, v15

    .end local v15    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v20, "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v15, v19

    invoke-static/range {v9 .. v15}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v18

    move-object/from16 v15, v18

    goto :goto_3

    .line 449
    .end local v20    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v15    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_6
    move-object/from16 v20, v15

    .end local v15    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v20    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v15, v18

    .line 456
    .end local v18    # "anySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local v15, "anySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :goto_3
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v18

    .line 457
    .local v18, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    new-instance v19, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    const/4 v12, 0x0

    sget-object v14, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object/from16 v9, v19

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 459
    .local v9, "anyProp":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    new-instance v10, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    invoke-direct {v10, v9, v8, v15}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    invoke-virtual {v0, v10}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setAnyGetter(Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;)V

    .line 462
    .end local v9    # "anyProp":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    .end local v15    # "anySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .end local v16    # "anyType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v17    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .end local v18    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v20    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_7
    invoke-virtual {v1, v6, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->processViews(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)V

    .line 465
    iget-object v9, v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 466
    iget-object v9, v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 467
    .local v10, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    invoke-virtual {v10, v6, v4, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->updateBuilder(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    move-result-object v0

    .line 468
    .end local v10    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    goto :goto_4

    .line 466
    :cond_8
    move-object v9, v0

    goto :goto_5

    .line 465
    :cond_9
    move-object v9, v0

    .line 472
    .end local v0    # "builder":Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .local v9, "builder":Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    :goto_5
    :try_start_0
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->build()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v5    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    nop

    .line 477
    if-nez v0, :cond_b

    .line 479
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isRecordType()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 480
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->createDummy()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v5

    return-object v5

    .line 485
    :cond_a
    move/from16 v10, p4

    invoke-virtual {v1, v6, v3, v4, v10}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerByAddonType(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 486
    if-nez v0, :cond_c

    .line 490
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->hasKnownClassAnnotations()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 491
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->createDummy()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v5

    return-object v5

    .line 477
    :cond_b
    move/from16 v10, p4

    .line 495
    :cond_c
    return-object v0

    .line 473
    .end local v0    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .restart local v5    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :catch_0
    move-exception v0

    move/from16 v10, p4

    move-object v11, v0

    move-object v0, v11

    .line 474
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 475
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 474
    const-string v12, "Failed to construct BeanSerializer for %s: (%s) %s"

    invoke-virtual {v2, v4, v12, v11}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v11
.end method

.method protected constructBeanSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method protected constructBeanSerializerBuilder(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .locals 1
    .param p1, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 565
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;)V

    return-object v0
.end method

.method protected constructFilteredBeanWriter(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 1
    .param p1, "writer"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 555
    .local p2, "inViews":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter;->constructViewBased(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v0

    return-object v0
.end method

.method protected constructObjectIdHandler(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 10
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 502
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    .line 503
    .local v0, "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 504
    return-object v1

    .line 507
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v2

    .line 510
    .local v2, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    .line 511
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "propName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 514
    .local v5, "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 515
    .local v7, "len":I
    :goto_0
    if-eq v6, v7, :cond_3

    .line 520
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 521
    .local v8, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 522
    move-object v5, v8

    .line 525
    if-lez v6, :cond_1

    .line 526
    invoke-interface {p3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 527
    invoke-interface {p3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 532
    .end local v6    # "i":I
    .end local v7    # "len":I
    .end local v8    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 533
    .local v4, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    invoke-direct {v6, v0, v5}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 535
    .local v6, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    move-object v7, v1

    check-cast v7, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v7

    invoke-static {v4, v1, v6, v7}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v1

    return-object v1

    .line 514
    .end local v4    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v6, "i":I
    .restart local v7    # "len":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 516
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 518
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    invoke-static {v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    .line 516
    const-string v4, "Invalid Object Id definition for %s: cannot find property with name %s"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    .end local v3    # "propName":Ljava/lang/String;
    .end local v5    # "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v6    # "i":I
    .end local v7    # "len":I
    :cond_4
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 541
    .local v1, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v3

    const-class v5, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v3, v1, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    aget-object v3, v3, v4

    .line 542
    .local v3, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v4

    .line 543
    .local v4, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    .line 544
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v6

    .line 543
    invoke-static {v3, v5, v4, v6}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v5

    return-object v5
.end method

.method protected constructPropertyBuilder(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 561
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)V

    return-object v0
.end method

.method public createSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 9
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "origType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
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

    .line 142
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 143
    .local v0, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 144
    .local v1, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 145
    .local v2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz v2, :cond_0

    .line 146
    return-object v2

    .line 150
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 153
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v3, :cond_1

    .line 154
    move-object v4, p2

    .local v4, "type":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 157
    .end local v4    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v4

    invoke-virtual {v3, v0, v4, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .restart local v4    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    nop

    .line 162
    :goto_0
    if-ne v4, p2, :cond_2

    .line 163
    const/4 v5, 0x0

    .local v5, "staticTyping":Z
    goto :goto_1

    .line 165
    .end local v5    # "staticTyping":Z
    :cond_2
    const/4 v5, 0x1

    .line 166
    .restart local v5    # "staticTyping":Z
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 167
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 171
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findSerializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v6

    .line 172
    .local v6, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v6, :cond_4

    .line 173
    invoke-virtual {p0, p1, v4, v1, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_createSerializer2(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v7

    return-object v7

    .line 175
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 178
    .local v7, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 179
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 184
    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v8

    if-nez v8, :cond_6

    .line 185
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v7, v1, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_createSerializer2(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 187
    :cond_6
    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v8, v6, v7, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v8

    .line 158
    .end local v4    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v5    # "staticTyping":Z
    .end local v6    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v7    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    :catch_0
    move-exception v4

    .line 159
    .local v4, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v5, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v5
.end method

.method protected customSerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/Serializers;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected filterBeanProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .line 655
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    .line 656
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    .line 655
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 657
    .local v0, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    const/4 v1, 0x0

    .line 658
    .local v1, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v1

    .line 661
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v2

    .line 662
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    .line 661
    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v2

    .line 663
    .local v2, "inclusions":Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    const/4 v3, 0x0

    .line 664
    .local v3, "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 665
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v3

    .line 667
    :cond_1
    if-nez v3, :cond_2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 668
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 669
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 670
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v3}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->shouldIgnore(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 671
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 676
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    :cond_4
    return-object p3
.end method

.method protected filterUnwantedJDKProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .line 692
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const-class v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 695
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 699
    .local v1, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    .line 700
    .local v2, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v3, :cond_0

    .line 701
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isEmpty"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/CharSequence;

    if-ne v3, v4, :cond_0

    .line 703
    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 707
    .end local v1    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v2    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_0
    return-object p3
.end method

.method public findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
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

    .line 287
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isEnumType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method protected findBeanProperties(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)Ljava/util/List;
    .locals 18
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 595
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findProperties()Ljava/util/List;

    move-result-object v8

    .line 596
    .local v8, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v9

    .line 599
    .local v9, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {v6, v9, v7, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeIgnorableTypes(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)V

    .line 602
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v9, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v6, v9, v7, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeSetterlessGetters(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)V

    .line 607
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 608
    return-object v1

    .line 611
    :cond_1
    invoke-virtual {v6, v9, v7, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Z

    move-result v10

    .line 612
    .local v10, "staticTyping":Z
    invoke-virtual {v6, v9, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructPropertyBuilder(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    move-result-object v11

    .line 614
    .local v11, "pb":Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 615
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 616
    .local v14, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v15

    .line 618
    .local v15, "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isTypeId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    if-eqz v15, :cond_2

    .line 620
    move-object/from16 v5, p3

    invoke-virtual {v5, v15}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    goto :goto_0

    .line 619
    :cond_2
    move-object/from16 v5, p3

    goto :goto_0

    .line 625
    :cond_3
    move-object/from16 v5, p3

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findReferenceType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v16

    .line 626
    .local v16, "refType":Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 627
    goto :goto_0

    .line 629
    :cond_4
    instance-of v0, v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v0, :cond_5

    .line 630
    move-object/from16 v17, v15

    check-cast v17, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v11

    move v4, v10

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 632
    :cond_5
    move-object v5, v15

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v11

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    .end local v14    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v15    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v16    # "refType":Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    :goto_1
    goto :goto_0

    .line 635
    :cond_6
    return-object v12
.end method

.method public findBeanSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanOrAddOnSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyContentTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 5
    .param p1, "containerType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 340
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 341
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 342
    .local v1, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v1, p2, p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 346
    .local v2, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    if-nez v2, :cond_0

    .line 347
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v3

    .local v3, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    goto :goto_0

    .line 349
    .end local v3    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p2, p3, v0}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v3

    .line 351
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {v2, p2, v0, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v4

    move-object v3, v4

    .line 353
    .local v3, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :goto_0
    return-object v3
.end method

.method public findPropertyTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 4
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 311
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 312
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 316
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 317
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v2

    .local v2, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    goto :goto_0

    .line 319
    .end local v2    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v2

    .line 321
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {v1, p2, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v3

    move-object v2, v3

    .line 323
    .local v2, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :goto_0
    return-object v2
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 584
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected processViews(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)V
    .locals 9
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "builder"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    .line 722
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getProperties()Ljava/util/List;

    move-result-object v0

    .line 723
    .local v0, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 724
    .local v1, "includeByDefault":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 725
    .local v2, "propCount":I
    const/4 v3, 0x0

    .line 726
    .local v3, "viewsFound":I
    new-array v4, v2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 728
    .local v4, "filtered":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 729
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 730
    .local v6, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v7

    .line 731
    .local v7, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v7, :cond_1

    array-length v8, v7

    if-nez v8, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 739
    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructFilteredBeanWriter(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v8

    aput-object v8, v4, v5

    goto :goto_2

    .line 734
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 735
    aput-object v6, v4, v5

    .line 728
    .end local v6    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v7    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 743
    .end local v5    # "i":I
    :cond_3
    if-eqz v1, :cond_4

    if-nez v3, :cond_4

    .line 744
    return-void

    .line 746
    :cond_4
    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setFilteredProperties([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 747
    return-void
.end method

.method protected removeIgnorableTypes(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)V
    .locals 9
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .line 758
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 759
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 760
    .local v1, "ignores":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 761
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 762
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 763
    .local v3, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    .line 768
    .local v4, "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-nez v4, :cond_0

    .line 769
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 770
    goto :goto_0

    .line 772
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getRawPrimaryType()Ljava/lang/Class;

    move-result-object v5

    .line 773
    .local v5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 774
    .local v6, "result":Ljava/lang/Boolean;
    if-nez v6, :cond_2

    .line 776
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getIsIgnoredType()Ljava/lang/Boolean;

    move-result-object v6

    .line 777
    if-nez v6, :cond_1

    .line 778
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v7

    .line 779
    .local v7, "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v8

    .line 780
    .local v8, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v6

    .line 782
    if-nez v6, :cond_1

    .line 783
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 786
    .end local v7    # "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .end local v8    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    :cond_1
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 790
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 792
    .end local v3    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v4    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v5    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "result":Ljava/lang/Boolean;
    :cond_3
    goto :goto_0

    .line 793
    :cond_4
    return-void
.end method

.method protected removeOverlappingTypeIds(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .line 822
    .local p4, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 823
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 824
    .local v2, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v3

    .line 825
    .local v3, "td":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-eq v4, v5, :cond_0

    .line 826
    goto :goto_2

    .line 828
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    .line 829
    .local v4, "n":Ljava/lang/String;
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    .line 831
    .local v5, "typePropName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 832
    .local v7, "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eq v7, v2, :cond_1

    invoke-virtual {v7, v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->wouldConflictWithName(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 833
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 834
    goto :goto_2

    .line 836
    .end local v7    # "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    goto :goto_1

    .line 822
    .end local v2    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v3    # "td":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .end local v4    # "n":Ljava/lang/String;
    .end local v5    # "typePropName":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    .end local v0    # "i":I
    .end local v1    # "end":I
    :cond_3
    return-object p4
.end method

.method protected removeSetterlessGetters(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)V
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .line 801
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 802
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 803
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 806
    .local v1, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->couldDeserialize()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyIncluded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 807
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 809
    .end local v1    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_0
    goto :goto_0

    .line 810
    :cond_1
    return-void
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    .line 97
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    if-ne v0, p1, :cond_0

    .line 98
    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    if-ne v0, v1, :cond_1

    .line 111
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    return-object v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalSerializers\': cannot instantiate subtype with additional serializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
