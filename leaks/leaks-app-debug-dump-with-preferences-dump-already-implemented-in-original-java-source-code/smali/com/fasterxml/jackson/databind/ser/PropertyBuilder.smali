.class public Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyBuilder.java"


# static fields
.field private static final NO_DEFAULT_MARKER:Ljava/lang/Object;


# instance fields
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _defaultBean:Ljava/lang/Object;

.field protected final _defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected final _useRealPropertyDefaults:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->NO_DEFAULT_MARKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)V
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 55
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 66
    nop

    .line 67
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 68
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v2

    .line 68
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->merge(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 70
    .local v0, "inclPerType":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->merge(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 72
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 74
    return-void
.end method


# virtual methods
.method protected _constructPropertyWriter(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 12
    .param p1, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p2, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p4, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p6, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p7, "serType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p8, "suppressNulls"    # Z
    .param p9, "suppressableValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/util/Annotations;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 261
    .local p5, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local p10, "includeInViews":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v11, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;[Ljava/lang/Class;)V

    return-object v11
.end method

.method protected _throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "defaultBean"    # Ljava/lang/Object;

    .line 397
    move-object v0, p1

    .line 398
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 402
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfRTE(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 403
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected buildWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 24
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p3, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p6, "contentTypeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p7, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p8, "defaultUseStaticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .local p4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v11, p6

    move-object/from16 v10, p7

    .line 100
    const/4 v1, 0x0

    move/from16 v9, p8

    :try_start_0
    invoke-virtual {v12, v10, v9, v15}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .local v0, "serializationType":Lcom/fasterxml/jackson/databind/JavaType;
    nop

    .line 109
    if-eqz v11, :cond_2

    .line 113
    if-nez v0, :cond_0

    .line 115
    move-object/from16 v0, p3

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 119
    .local v2, "ct":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v2, :cond_1

    .line 120
    .end local v2    # "ct":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v2, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serialization type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has no content"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v13, v2, v14, v3, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    invoke-virtual {v0, v11}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v16, v0

    goto :goto_0

    .line 109
    :cond_2
    move-object/from16 v16, v0

    .line 127
    .end local v0    # "serializationType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v16, "serializationType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    const/4 v2, 0x0

    .line 128
    .local v2, "valueToSuppress":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 131
    .local v3, "suppressNulls":Z
    if-nez v16, :cond_3

    move-object v0, v15

    goto :goto_1

    :cond_3
    move-object/from16 v0, v16

    :goto_1
    move-object/from16 v17, v0

    .line 134
    .local v17, "actualType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v18

    .line 135
    .local v18, "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-nez v18, :cond_4

    .line 137
    iget-object v0, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "could not determine property type"

    invoke-virtual {v13, v0, v14, v4, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-object v0

    .line 140
    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v8

    .line 145
    .local v8, "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v4, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-virtual {v0, v1, v8, v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultInclusion(Ljava/lang/Class;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    .line 150
    .local v0, "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v19

    .line 152
    .end local v0    # "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .local v19, "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 153
    .local v0, "inclusion":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v1, :cond_5

    .line 154
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-object/from16 v20, v0

    goto :goto_2

    .line 153
    :cond_5
    move-object/from16 v20, v0

    .line 156
    .end local v0    # "inclusion":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .local v20, "inclusion":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :goto_2
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 214
    :pswitch_0
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 206
    :pswitch_1
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueFilter()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    if-nez v2, :cond_6

    .line 208
    const/4 v0, 0x1

    move-object/from16 v21, v2

    .end local v3    # "suppressNulls":Z
    .local v0, "suppressNulls":Z
    goto/16 :goto_5

    .line 210
    .end local v0    # "suppressNulls":Z
    .restart local v3    # "suppressNulls":Z
    :cond_6
    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v0

    .line 212
    .end local v3    # "suppressNulls":Z
    .restart local v0    # "suppressNulls":Z
    move-object/from16 v21, v2

    goto/16 :goto_5

    .line 201
    .end local v0    # "suppressNulls":Z
    .restart local v3    # "suppressNulls":Z
    :pswitch_2
    const/4 v0, 0x1

    .line 203
    .end local v3    # "suppressNulls":Z
    .restart local v0    # "suppressNulls":Z
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    .line 204
    move-object/from16 v21, v2

    goto/16 :goto_5

    .line 193
    .end local v0    # "suppressNulls":Z
    .restart local v3    # "suppressNulls":Z
    :pswitch_3
    const/4 v0, 0x1

    .line 195
    .end local v3    # "suppressNulls":Z
    .restart local v0    # "suppressNulls":Z
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    move-object/from16 v21, v2

    goto/16 :goto_5

    .line 195
    :cond_7
    move-object/from16 v21, v2

    goto/16 :goto_5

    .line 169
    .end local v0    # "suppressNulls":Z
    .restart local v3    # "suppressNulls":Z
    :pswitch_4
    iget-boolean v0, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_useRealPropertyDefaults:Z

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "defaultBean":Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 171
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v13, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    iget-object v0, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 175
    :cond_8
    :try_start_1
    invoke-virtual {v10, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    .end local v2    # "valueToSuppress":Ljava/lang/Object;
    .local v0, "valueToSuppress":Ljava/lang/Object;
    move-object v2, v0

    goto :goto_3

    .line 176
    .end local v0    # "valueToSuppress":Ljava/lang/Object;
    .restart local v2    # "valueToSuppress":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v4, v1}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 180
    .end local v1    # "defaultBean":Ljava/lang/Object;
    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    .end local v2    # "valueToSuppress":Ljava/lang/Object;
    .local v0, "valueToSuppress":Ljava/lang/Object;
    const/4 v3, 0x1

    move-object v2, v0

    .line 183
    .end local v0    # "valueToSuppress":Ljava/lang/Object;
    .restart local v2    # "valueToSuppress":Ljava/lang/Object;
    :goto_3
    if-nez v2, :cond_a

    .line 184
    const/4 v0, 0x1

    move-object/from16 v21, v2

    .end local v3    # "suppressNulls":Z
    .local v0, "suppressNulls":Z
    goto :goto_5

    .line 186
    .end local v0    # "suppressNulls":Z
    .restart local v3    # "suppressNulls":Z
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    move v0, v3

    goto :goto_5

    .line 186
    :cond_b
    move-object/from16 v21, v2

    move v0, v3

    goto :goto_5

    .line 220
    :goto_4
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 221
    .local v0, "emptyJsonArrays":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 222
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    move-object/from16 v21, v2

    move v0, v3

    goto :goto_5

    .line 226
    .end local v0    # "emptyJsonArrays":Lcom/fasterxml/jackson/databind/SerializationFeature;
    :cond_c
    move-object/from16 v21, v2

    move v0, v3

    .end local v2    # "valueToSuppress":Ljava/lang/Object;
    .end local v3    # "suppressNulls":Z
    .local v0, "suppressNulls":Z
    .local v21, "valueToSuppress":Ljava/lang/Object;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findViews()[Ljava/lang/Class;

    move-result-object v1

    .line 227
    .local v1, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v1, :cond_d

    .line 228
    iget-object v2, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDefaultViews()[Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_6

    .line 227
    :cond_d
    move-object/from16 v22, v1

    .line 230
    .end local v1    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v22, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_6
    iget-object v1, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 231
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v4

    .line 230
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v23, v8

    .end local v8    # "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v23, "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v8, v16

    move v9, v0

    move-object v15, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    invoke-virtual/range {v1 .. v11}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_constructPropertyWriter(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    .line 235
    .local v1, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    iget-object v2, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v2, v15}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 236
    .local v2, "serDef":Ljava/lang/Object;
    if-eqz v2, :cond_e

    .line 237
    invoke-virtual {v13, v15, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 240
    :cond_e
    iget-object v3, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v15}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v3

    .line 241
    .local v3, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v3, :cond_f

    .line 242
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->unwrappingWriter(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    .line 244
    :cond_f
    return-object v1

    .line 101
    .end local v0    # "suppressNulls":Z
    .end local v1    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v2    # "serDef":Ljava/lang/Object;
    .end local v3    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .end local v16    # "serializationType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v17    # "actualType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v18    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v19    # "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .end local v20    # "inclusion":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end local v21    # "valueToSuppress":Ljava/lang/Object;
    .end local v22    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v23    # "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    move-object v15, v10

    move-object v2, v0

    move-object v0, v2

    .line 102
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    if-nez v14, :cond_10

    .line 103
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v13, v2, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-object v1

    .line 105
    :cond_10
    move-object/from16 v2, p3

    iget-object v3, v12, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v13, v3, v14, v4, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "useStaticTyping"    # Z
    .param p3, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, v1, p1, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 285
    .local v0, "secondary":Lcom/fasterxml/jackson/databind/JavaType;
    if-eq v0, p3, :cond_2

    .line 286
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 288
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 289
    .local v2, "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 306
    :goto_0
    const/4 p2, 0x1

    .line 307
    move-object p3, v0

    goto :goto_1

    .line 299
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal concrete-type annotation for method \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not a super-type of (declared) class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v1

    .line 311
    .local v1, "typing":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    if-eqz v1, :cond_4

    sget-object v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-eq v1, v2, :cond_4

    .line 312
    sget-object v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne v1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    move p2, v2

    .line 314
    :cond_4
    if-eqz p2, :cond_5

    .line 316
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    return-object v2

    .line 319
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultBean()Ljava/lang/Object;
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 331
    .local v0, "def":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 335
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->instantiateBean(Z)Ljava/lang/Object;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 344
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->NO_DEFAULT_MARKER:Ljava/lang/Object;

    .line 346
    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 348
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->NO_DEFAULT_MARKER:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method protected getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getPropertyDefaultValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, "defaultBean":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 375
    :cond_0
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
