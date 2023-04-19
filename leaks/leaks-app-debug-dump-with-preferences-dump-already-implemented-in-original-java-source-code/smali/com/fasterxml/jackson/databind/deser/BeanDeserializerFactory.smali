.class public Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.source "BeanDeserializerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final INIT_CAUSE_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    .line 52
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>()V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .line 56
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    .line 57
    return-void
.end method

.method private _isSetterlessType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 661
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/util/Map;

    .line 662
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 661
    :goto_1
    return v0
.end method


# virtual methods
.method protected _findUnsupportedTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 209
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->checkUnsupportedType(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "errorMsg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/UnsupportedTypeDeserializer;

    invoke-direct {v1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/UnsupportedTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)V

    return-object v1

    .line 217
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _validateSubType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 999
    invoke-static {}, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;->instance()Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/impl/SubTypeValidator;->validateSubType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)V

    .line 1000
    return-void
.end method

.method protected addBackReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 5
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 733
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findBackReferences()Ljava/util/List;

    move-result-object v0

    .line 734
    .local v0, "refProps":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    if-eqz v0, :cond_0

    .line 735
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 752
    .local v2, "refProp":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findReferenceName()Ljava/lang/String;

    move-result-object v3

    .line 753
    .local v3, "refName":Ljava/lang/String;
    nop

    .line 754
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getPrimaryType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 753
    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 755
    .end local v2    # "refProp":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v3    # "refName":Ljava/lang/String;
    goto :goto_0

    .line 757
    :cond_0
    return-void
.end method

.method protected addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 24
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 500
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v0

    const/4 v11, 0x1

    xor-int/2addr v0, v11

    move v12, v0

    .line 501
    .local v12, "isConcrete":Z
    if-eqz v12, :cond_0

    .line 502
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v13, v0

    .line 504
    .local v13, "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v14, 0x0

    if-eqz v13, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v15, v0

    .line 510
    .local v15, "hasCreatorProps":Z
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 511
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    .line 512
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 511
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v16

    .line 514
    .local v16, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-eqz v16, :cond_3

    .line 515
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->getIgnoreUnknown()Z

    move-result v0

    .line 516
    .local v0, "ignoreAny":Z
    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setIgnoreUnknownProperties(Z)V

    .line 518
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v1

    .line 519
    .local v1, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 520
    .local v3, "propName":Ljava/lang/String;
    invoke-virtual {v10, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 521
    .end local v3    # "propName":Ljava/lang/String;
    goto :goto_2

    .line 522
    .end local v0    # "ignoreAny":Z
    :cond_2
    move-object/from16 v17, v1

    goto :goto_3

    .line 523
    .end local v1    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object/from16 v17, v1

    .line 525
    .local v17, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 526
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    .line 527
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 526
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v18

    .line 528
    .local v18, "inclusions":Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    const/4 v0, 0x0

    .line 529
    .local v0, "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v18, :cond_5

    .line 530
    invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_4

    .line 532
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 533
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIncludable(Ljava/lang/String;)V

    .line 534
    .end local v2    # "propName":Ljava/lang/String;
    goto :goto_4

    .line 539
    :cond_4
    move-object/from16 v19, v0

    goto :goto_5

    .line 529
    :cond_5
    move-object/from16 v19, v0

    .line 539
    .end local v0    # "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findAnySetterAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v6

    .line 540
    .local v6, "anySetter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v6, :cond_6

    .line 541
    invoke-virtual {v7, v8, v9, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructAnySetter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setAnySetter(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;)V

    goto :goto_7

    .line 545
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getIgnoredPropertyNames()Ljava/util/Set;

    move-result-object v0

    .line 546
    .local v0, "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v0, :cond_7

    .line 547
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    .restart local v2    # "propName":Ljava/lang/String;
    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 551
    .end local v2    # "propName":Ljava/lang/String;
    goto :goto_6

    .line 554
    .end local v0    # "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_7
    :goto_7
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 555
    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    move/from16 v20, v0

    .line 558
    .local v20, "useGettersAsSetters":Z
    nop

    .line 559
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findProperties()Ljava/util/List;

    move-result-object v4

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, v17

    move-object/from16 v21, v6

    .end local v6    # "anySetter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .local v21, "anySetter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 561
    .local v0, "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 562
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 563
    .local v2, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v2, v3, v9, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->updateProperties(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 564
    .end local v2    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_9

    .line 568
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 569
    .local v2, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    const/4 v3, 0x0

    .line 574
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasSetter()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 575
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v4

    .line 576
    .local v4, "setter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v4, v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 577
    .local v5, "propertyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v7, v8, v9, v2, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 578
    .end local v4    # "setter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v5    # "propertyType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_b

    :cond_a
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasField()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 579
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v4

    .line 580
    .local v4, "field":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 581
    .restart local v5    # "propertyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v7, v8, v9, v2, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 582
    .end local v4    # "field":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .end local v5    # "propertyType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_b

    .line 584
    :cond_b
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v4

    .line 585
    .local v4, "getter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v4, :cond_e

    .line 586
    if-eqz v20, :cond_d

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_isSetterlessType(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 589
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->hasIgnorable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_b

    .line 592
    :cond_c
    invoke-virtual {v7, v8, v9, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSetterlessProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    goto :goto_b

    .line 594
    :cond_d
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasConstructorParameter()Z

    move-result v5

    if-nez v5, :cond_e

    .line 595
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v5

    .line 600
    .local v5, "md":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->getMergeInfo()Lcom/fasterxml/jackson/databind/PropertyMetadata$MergeInfo;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 601
    invoke-virtual {v7, v8, v9, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSetterlessProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 609
    .end local v4    # "getter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v5    # "md":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :cond_e
    :goto_b
    if-eqz v15, :cond_15

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasConstructorParameter()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 615
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 618
    .local v5, "cprop":Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    array-length v6, v13

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v6, :cond_10

    aget-object v14, v13, v11

    .line 619
    .local v14, "cp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    move-object/from16 v22, v0

    .end local v0    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local v22, "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    instance-of v0, v14, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    if-eqz v0, :cond_f

    .line 620
    move-object v5, v14

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    .line 621
    goto :goto_d

    .line 618
    .end local v14    # "cp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v22

    const/4 v14, 0x0

    goto :goto_c

    .end local v22    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v0    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :cond_10
    move-object/from16 v22, v0

    .line 624
    .end local v0    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v22    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :goto_d
    if-nez v5, :cond_12

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v0, "n":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, v13

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v6, :cond_11

    aget-object v14, v13, v11

    .line 627
    .restart local v14    # "cp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    move-object/from16 v23, v1

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v14    # "cp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v23

    goto :goto_e

    .line 629
    :cond_11
    move-object/from16 v23, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 631
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v1, v11

    const/4 v6, 0x1

    aput-object v0, v1, v6

    .line 629
    const-string v14, "Could not find creator property with name %s (known Creator properties: %s)"

    invoke-virtual {v8, v9, v2, v14, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_a

    .line 634
    .end local v0    # "n":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v23, v1

    const/4 v6, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_13

    .line 635
    invoke-virtual {v5, v3}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->setFallbackSetter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 637
    :cond_13
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findViews()[Ljava/lang/Class;

    move-result-object v0

    .line 638
    .local v0, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_14

    .line 639
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDefaultViews()[Ljava/lang/Class;

    move-result-object v0

    .line 641
    :cond_14
    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->setViews([Ljava/lang/Class;)V

    .line 642
    invoke-virtual {v10, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addCreatorProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 643
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_a

    .line 609
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "cprop":Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .end local v22    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local v0, "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :cond_15
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 645
    .end local v0    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v22    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    if-eqz v3, :cond_17

    .line 647
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findViews()[Ljava/lang/Class;

    move-result-object v0

    .line 648
    .local v0, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v0, :cond_16

    .line 649
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDefaultViews()[Ljava/lang/Class;

    move-result-object v0

    .line 651
    :cond_16
    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setViews([Ljava/lang/Class;)V

    .line 652
    invoke-virtual {v10, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 654
    .end local v0    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_17
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_a

    .line 655
    .end local v22    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local v0, "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :cond_18
    return-void
.end method

.method protected addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 775
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findInjectables()Ljava/util/Map;

    move-result-object v0

    .line 776
    .local v0, "raw":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    if-eqz v0, :cond_0

    .line 777
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 778
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 779
    .local v3, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    .line 780
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 781
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 779
    move-object v4, p3

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addInjectable(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V

    .line 782
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    .end local v3    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    goto :goto_0

    .line 784
    :cond_0
    return-void
.end method

.method protected addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 15
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 377
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v2

    .line 378
    .local v2, "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    if-nez v2, :cond_0

    .line 379
    return-void

    .line 381
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v3

    .line 386
    .local v3, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->objectIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    move-result-object v4

    .line 389
    .local v4, "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    const-class v5, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    const/4 v6, 0x0

    if-ne v3, v5, :cond_2

    .line 390
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    .line 391
    .local v5, "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->findProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    .line 392
    .local v7, "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v7, :cond_1

    .line 398
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 399
    .local v6, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v8, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getScope()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;)V

    move-object v5, v8

    .line 400
    .local v5, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    goto :goto_0

    .line 393
    .end local v6    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v5, "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 395
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    invoke-static {v10}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x1

    .line 396
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Lcom/fasterxml/jackson/databind/PropertyName;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 393
    const-string v6, "Invalid Object Id definition for %s: cannot find property with name %s"

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 401
    .end local v5    # "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v7    # "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 402
    .local v5, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v7

    const-class v8, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v7, v5, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    aget-object v6, v7, v6

    .line 403
    .restart local v6    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v7, 0x0

    .line 404
    .restart local v7    # "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v8

    invoke-virtual {v0, v8, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v8

    move-object v12, v6

    move-object v13, v7

    move-object v11, v8

    .line 407
    .end local v5    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v6    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v7    # "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v11, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .local v12, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v13, "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_0
    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v14

    .line 408
    .local v14, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    nop

    .line 409
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    .line 408
    move-object v5, v12

    move-object v7, v11

    move-object v8, v14

    move-object v9, v13

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V

    .line 410
    return-void
.end method

.method protected addReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 0
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 764
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBackReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 765
    return-void
.end method

.method public buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 6
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 261
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .local v0, "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    nop

    .line 273
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 274
    .local v1, "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 276
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 277
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 280
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBackReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 281
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 283
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    .line 284
    .local v2, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 286
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v2, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->updateBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 287
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canInstantiate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->buildAbstract()Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v3

    .local v3, "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    goto :goto_1

    .line 294
    .end local v3    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->build()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 298
    .restart local v3    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 300
    .local v5, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v5, v2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 301
    .end local v5    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_2

    .line 303
    :cond_2
    return-object v3

    .line 264
    .end local v0    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .end local v1    # "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .end local v2    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v3    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e0":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 269
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 268
    invoke-static {v1, v2, p3, v3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1

    .line 262
    .end local v0    # "e0":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "error":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/ErrorThrowingDeserializer;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ErrorThrowingDeserializer;-><init>(Ljava/lang/NoClassDefFoundError;)V

    return-object v1
.end method

.method protected buildBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "builderDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 321
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .local v1, "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    nop

    .line 332
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    .line 333
    .local v2, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v3

    .line 334
    .local v3, "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 336
    invoke-virtual {p0, p1, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 337
    invoke-virtual {p0, p1, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 340
    invoke-virtual {p0, p1, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBackReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 341
    invoke-virtual {p0, p1, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 343
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findPOJOBuilderConfig()Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    move-result-object v4

    .line 344
    .local v4, "builderConfig":Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    if-nez v4, :cond_0

    const-string v5, "build"

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;->buildMethodName:Ljava/lang/String;

    .line 348
    .local v5, "buildMethodName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p3, v5, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 349
    .local v0, "buildMethod":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 354
    :cond_1
    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;)V

    .line 356
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 357
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 358
    .local v7, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v7, v2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->updateBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v3

    .line 359
    .end local v7    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_1

    .line 361
    :cond_2
    invoke-virtual {v3, p2, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->buildBuilderBased(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 365
    .local v6, "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 366
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 367
    .local v8, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v8, v2, p3, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 368
    .end local v8    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_2

    .line 370
    :cond_3
    return-object v6

    .line 324
    .end local v0    # "buildMethod":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v1    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .end local v2    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v3    # "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .end local v4    # "builderConfig":Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .end local v5    # "buildMethodName":Ljava/lang/String;
    .end local v6    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    .line 329
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-static {v2, v3, p3, v0}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object v0

    throw v0

    .line 322
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "error":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/ErrorThrowingDeserializer;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ErrorThrowingDeserializer;-><init>(Ljava/lang/NoClassDefFoundError;)V

    return-object v1
.end method

.method public buildThrowableDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 6
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 417
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 419
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 420
    .local v1, "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 422
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 427
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    const-string v3, "initCause"

    invoke-virtual {p3, v3, v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v2

    .line 428
    .local v2, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v2, :cond_0

    .line 429
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    new-instance v4, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v5, "cause"

    invoke-direct {v4, v5}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2, v4}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v3

    .line 431
    .local v3, "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    const/4 v4, 0x0

    .line 432
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 431
    invoke-virtual {p0, p1, p3, v3, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    .line 433
    .local v4, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v4, :cond_0

    .line 436
    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addOrReplaceProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)V

    .line 441
    .end local v3    # "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    const-string v3, "localizedMessage"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 443
    const-string v3, "suppressed"

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 450
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 451
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 452
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v0, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->updateBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 453
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->build()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 460
    .local v3, "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    instance-of v4, v3, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    if-eqz v4, :cond_2

    .line 461
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;

    move-object v5, v3

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    invoke-direct {v4, v5}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;)V

    move-object v3, v4

    .line 465
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 466
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 467
    .local v5, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v5, v0, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 468
    .end local v5    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_1

    .line 470
    :cond_3
    return-object v3
.end method

.method protected constructAnySetter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .locals 17
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "mutator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    instance-of v2, v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 806
    move-object v8, v9

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 807
    .local v8, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v8, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 808
    .local v10, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v8, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 809
    .local v2, "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0, v1, v9, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 810
    .end local v2    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v11, "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v12, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v7, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v2, v12

    move-object v4, v11

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 814
    .end local v8    # "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .local v2, "prop":Lcom/fasterxml/jackson/databind/BeanProperty;
    move-object v12, v11

    move-object v11, v10

    move-object v10, v2

    goto :goto_0

    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/BeanProperty;
    .end local v10    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v11    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    instance-of v2, v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v2, :cond_6

    .line 815
    move-object v8, v9

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 817
    .local v8, "af":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 818
    .local v2, "mapType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0, v1, v9, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 819
    .end local v2    # "mapType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v10, "mapType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 820
    .local v11, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 821
    .local v12, "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v13, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    const/4 v5, 0x0

    sget-object v7, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v2, v13

    move-object v4, v10

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 823
    .end local v8    # "af":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .end local v10    # "mapType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v2, "prop":Lcom/fasterxml/jackson/databind/BeanProperty;
    move-object v10, v2

    .line 829
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/BeanProperty;
    .local v10, "prop":Lcom/fasterxml/jackson/databind/BeanProperty;
    :goto_0
    invoke-virtual {v0, v1, v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    .line 830
    .local v2, "keyDeser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    if-nez v2, :cond_1

    .line 831
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 833
    :cond_1
    if-nez v2, :cond_2

    .line 834
    invoke-virtual {v1, v11, v10}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    .line 836
    :cond_2
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;

    if-eqz v3, :cond_3

    .line 837
    move-object v3, v2

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;

    .line 838
    invoke-interface {v3, v1, v10}, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    .line 836
    :cond_3
    move-object v13, v2

    .line 841
    .end local v2    # "keyDeser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .local v13, "keyDeser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :goto_1
    invoke-virtual {v0, v1, v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findContentDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 842
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v2, :cond_4

    .line 843
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 845
    :cond_4
    if-eqz v2, :cond_5

    .line 847
    invoke-virtual {v1, v2, v10, v12}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    move-object v14, v2

    goto :goto_2

    .line 845
    :cond_5
    move-object v14, v2

    .line 849
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .local v14, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_2
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 850
    .local v15, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    new-instance v16, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-object/from16 v2, v16

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    return-object v16

    .line 824
    .end local v10    # "prop":Lcom/fasterxml/jackson/databind/BeanProperty;
    .end local v11    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v12    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v13    # "keyDeser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .end local v14    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v15    # "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 825
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 824
    const-string v4, "Unrecognized mutator type for any setter: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    return-object v2
.end method

.method protected constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 486
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    return-object v0
.end method

.method protected constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p4, "propType0"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 867
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getNonConstructorMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    .line 871
    .local v0, "mutator":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-nez v0, :cond_0

    .line 872
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No non-constructor mutator available"

    invoke-virtual {p1, p2, p3, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 876
    .local v1, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 878
    .local v2, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    instance-of v3, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v3, :cond_1

    .line 879
    new-instance v9, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    .line 880
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-object v3, v9

    move-object v4, p3

    move-object v5, v1

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    goto :goto_0

    .line 883
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    new-instance v9, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    .line 884
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-object v3, v9

    move-object v4, p3

    move-object v5, v1

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)V

    .line 886
    .restart local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v4

    .line 887
    .local v4, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v4, :cond_2

    .line 888
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 890
    :cond_2
    if-eqz v4, :cond_3

    .line 891
    invoke-virtual {p1, v4, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v4

    .line 892
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 895
    :cond_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findReferenceType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v5

    .line 896
    .local v5, "ref":Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 897
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 899
    :cond_4
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v6

    .line 900
    .local v6, "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    if-eqz v6, :cond_5

    .line 901
    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)V

    .line 903
    :cond_5
    return-object v3
.end method

.method protected constructSetterlessProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 914
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v6

    .line 915
    .local v6, "getter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 916
    .local v7, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 917
    .local v8, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    new-instance v9, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;

    .line 918
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v4

    move-object v0, v9

    move-object v1, p3

    move-object v2, v7

    move-object v3, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .line 919
    .local v0, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 920
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v1, :cond_0

    .line 921
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 923
    :cond_0
    if-eqz v1, :cond_1

    .line 924
    invoke-virtual {p1, v1, v0, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 925
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 927
    :cond_1
    return-object v0
.end method

.method public createBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 5
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 99
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, p2, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_findCustomBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 100
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v1, :cond_1

    .line 102
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 104
    .local v3, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {v3, v4, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 105
    .end local v3    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_0

    .line 107
    :cond_0
    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isThrowable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildThrowableDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2

    .line 119
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v2

    if-nez v2, :cond_3

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->materializeAbstractType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 122
    .local v2, "concreteType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object p3

    .line 126
    invoke-virtual {p0, p1, v2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    return-object v3

    .line 130
    .end local v2    # "concreteType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    return-object v1

    .line 136
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 137
    const/4 v2, 0x0

    return-object v2

    .line 140
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_validateSubType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)V

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_findUnsupportedTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_6

    .line 146
    return-object v1

    .line 150
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2
.end method

.method public createBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueBeanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 161
    .local p4, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_BUILDER_TYPE_BINDINGS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .local v0, "builderType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 164
    .end local v0    # "builderType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 166
    .restart local v0    # "builderType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 169
    .local v1, "builderDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2
.end method

.method protected filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
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

    .line 680
    .local p4, "propDefsIn":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local p5, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .line 697
    .local p4, "propDefsIn":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local p5, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 698
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 699
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v1, "ignoredTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 702
    .local v3, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4, p5, p6}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->shouldIgnore(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 705
    goto :goto_0

    .line 707
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasConstructorParameter()Z

    move-result v5

    if-nez v5, :cond_1

    .line 708
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getRawPrimaryType()Ljava/lang/Class;

    move-result-object v5

    .line 710
    .local v5, "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_1

    .line 711
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    invoke-virtual {p0, v6, v3, v5, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->isIgnorableType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 713
    invoke-virtual {p3, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 714
    goto :goto_0

    .line 717
    .end local v5    # "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    .end local v3    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 719
    :cond_2
    return-object v0
.end method

.method protected findStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findDefaultDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 184
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 187
    .local v2, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v2, v3, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 188
    .end local v2    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_0

    .line 191
    :cond_0
    return-object v0
.end method

.method protected isIgnorableType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 969
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "ignoredTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 970
    .local v0, "status":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 974
    :cond_0
    const-class v1, Ljava/lang/String;

    if-eq p3, v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 978
    :cond_1
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getIsIgnoredType()Ljava/lang/Boolean;

    move-result-object v0

    .line 979
    if-nez v0, :cond_3

    .line 980
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 981
    .local v1, "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 983
    if-nez v0, :cond_3

    .line 984
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 975
    .end local v1    # "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_2
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 988
    :cond_3
    :goto_1
    invoke-interface {p4, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 946
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "typeStr":Ljava/lang/String;
    const-string v1, ") as a Bean"

    const-string v2, " (of type "

    const-string v3, "Cannot deserialize Class "

    if-nez v0, :cond_2

    .line 950
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 955
    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isLocalType(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    .line 956
    if-nez v0, :cond_0

    .line 959
    return v4

    .line 957
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 951
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot deserialize Proxy class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 948
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected materializeAbstractType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 226
    .local v1, "r":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;->resolveAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 227
    .local v2, "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v2, :cond_0

    .line 228
    return-object v2

    .line 230
    .end local v1    # "r":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    .end local v2    # "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    if-ne v0, p1, :cond_0

    .line 68
    return-object p0

    .line 76
    :cond_0
    const-class v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    const-string v1, "withConfig"

    invoke-static {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->verifyMustOverride(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    return-object v0
.end method
