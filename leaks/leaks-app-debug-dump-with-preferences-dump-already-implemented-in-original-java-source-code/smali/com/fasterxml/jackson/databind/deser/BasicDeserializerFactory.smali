.class public abstract Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
.source "BasicDeserializerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;,
        Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$ContainerDefaultMappings;
    }
.end annotation


# static fields
.field private static final CLASS_CHAR_SEQUENCE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_ITERABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MAP_ENTRY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_SERIALIZABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_STRING:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;


# instance fields
.field protected final _factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_OBJECT:Ljava/lang/Class;

    .line 50
    const-class v0, Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    .line 51
    const-class v0, Ljava/lang/CharSequence;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    .line 52
    const-class v0, Ljava/lang/Iterable;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    .line 53
    const-class v0, Ljava/util/Map$Entry;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_MAP_ENTRY:Ljava/lang/Class;

    .line 54
    const-class v0, Ljava/io/Serializable;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_SERIALIZABLE:Ljava/lang/Class;

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, "@JsonUnwrapped"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .line 80
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .line 82
    return-void
.end method

.method private _checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z
    .locals 4
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p3, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 1007
    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1008
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1009
    :cond_1
    return v0

    .line 1011
    :cond_2
    if-eqz p3, :cond_3

    .line 1014
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "implName":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1016
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->couldSerialize()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1017
    return v0

    .line 1022
    .end local v2    # "implName":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method private _checkImplicitlyNamedConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/List;)V
    .locals 18
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1030
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local p6, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    const/4 v0, 0x0

    .line 1031
    .local v0, "found":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    const/4 v1, 0x0

    .line 1038
    .local v1, "foundProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 1039
    .local v3, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    move-object/from16 v4, p3

    invoke-interface {v4, v3}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1040
    goto :goto_0

    .line 1043
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v5

    .line 1044
    .local v5, "argCount":I
    new-array v6, v5, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 1045
    .local v6, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_3

    .line 1046
    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v15

    .line 1047
    .local v15, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move-object/from16 v14, p0

    move-object/from16 v13, p4

    invoke-direct {v14, v15, v13}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v16

    .line 1050
    .local v16, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1051
    goto :goto_0

    .line 1053
    :cond_2
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v12

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, v16

    move-object v13, v15

    move-object/from16 v14, v17

    invoke-virtual/range {v8 .. v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1045
    .end local v15    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v16    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1056
    .end local v7    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1057
    const/4 v0, 0x0

    .line 1058
    goto :goto_2

    .line 1060
    :cond_4
    move-object v0, v3

    .line 1061
    move-object v1, v6

    .line 1062
    .end local v3    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v5    # "argCount":I
    .end local v6    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    goto :goto_0

    .line 1038
    :cond_5
    move-object/from16 v4, p3

    .line 1064
    :goto_2
    if-eqz v0, :cond_7

    .line 1065
    const/4 v2, 0x0

    move-object/from16 v3, p5

    invoke-virtual {v3, v0, v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 1066
    move-object/from16 v5, p2

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 1068
    .local v5, "bbd":Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    array-length v6, v1

    :goto_3
    if-ge v2, v6, :cond_8

    aget-object v7, v1, v2

    .line 1069
    .local v7, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v8

    .line 1070
    .local v8, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->hasProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1071
    nop

    .line 1072
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v9

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v10

    .line 1071
    invoke-static {v9, v10, v8}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v9

    .line 1073
    .local v9, "newDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v5, v9}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->addProperty(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    .line 1068
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v8    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v9    # "newDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1064
    .end local v5    # "bbd":Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    :cond_7
    move-object/from16 v3, p5

    .line 1077
    :cond_8
    return-void
.end method

.method private _createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1883
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 1884
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1886
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v2

    .line 1888
    .local v2, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v3

    .line 1889
    .local v3, "des":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    if-eqz v3, :cond_0

    .line 1890
    return-object v3

    .line 1893
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v4

    .line 1894
    .local v4, "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v4, :cond_1

    .line 1895
    invoke-static {v0, p2, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v5

    return-object v5

    .line 1897
    :cond_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 1898
    .local v5, "valueDesForKey":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v5, :cond_2

    .line 1899
    invoke-static {v0, p2, v5}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v6

    return-object v6

    .line 1902
    .end local v4    # "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v5    # "valueDesForKey":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    invoke-virtual {p0, v1, v0, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v4

    .line 1905
    .local v4, "enumRes":Lcom/fasterxml/jackson/databind/util/EnumResolver;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 1906
    .local v6, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1907
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v7

    .line 1908
    .local v7, "argCount":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 1909
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 1911
    .local v8, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1913
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    if-eq v9, v10, :cond_3

    .line 1918
    goto :goto_0

    .line 1920
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1921
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v5

    sget-object v9, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1922
    invoke-virtual {p1, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v9

    .line 1921
    invoke-static {v5, v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 1924
    :cond_4
    invoke-static {v4, v6}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v5

    return-object v5

    .line 1927
    .end local v8    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsuitable method ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1928
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1930
    .end local v6    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v7    # "argCount":I
    :cond_6
    goto :goto_0

    .line 1932
    :cond_7
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v5

    return-object v5
.end method

.method private _findParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3
    .param p1, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p2, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 1222
    if-eqz p2, :cond_1

    .line 1223
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 1224
    .local v0, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1228
    return-object v0

    .line 1234
    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1236
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    return-object v2

    .line 1239
    .end local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private _mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 181
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 182
    .local v0, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 184
    .local v2, "resolver":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;->findTypeMapping(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 185
    .local v3, "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    return-object v3

    .line 188
    .end local v2    # "resolver":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    .end local v3    # "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    goto :goto_0

    .line 190
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected _addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V
    .locals 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p4, "candidate"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 898
    nop

    .line 899
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-result-object v6

    .line 898
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    .line 900
    return-void
.end method

.method protected _addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V
    .locals 18
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p4, "candidate"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .param p5, "ctorDetector"    # Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 914
    move-object/from16 v0, p3

    move-object/from16 v8, p4

    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v1

    const/4 v9, 0x1

    if-eq v9, v1, :cond_2

    .line 919
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->singleArgCreatorDefaultsToProperties()Z

    move-result v1

    if-nez v1, :cond_1

    .line 920
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->findOnlyParamWithoutInjection()I

    move-result v1

    .line 921
    .local v1, "oneNotInjected":I
    if-ltz v1, :cond_1

    .line 924
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->singleArgCreatorDefaultsToDelegating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 925
    invoke-virtual {v8, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 926
    :cond_0
    invoke-virtual/range {p0 .. p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 927
    return-void

    .line 931
    .end local v1    # "oneNotInjected":I
    :cond_1
    invoke-virtual/range {p0 .. p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 932
    return-void

    .line 936
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v11

    .line 937
    .local v11, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v12

    .line 938
    .local v12, "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    const/4 v1, 0x0

    .line 941
    .local v1, "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$ConstructorDetector$SingleArgConstructor:[I

    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->singleArgMode()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector$SingleArgConstructor;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 966
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v2

    .line 968
    .local v2, "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->explicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 971
    if-nez v1, :cond_4

    if-eqz v12, :cond_3

    goto :goto_0

    .line 958
    .end local v2    # "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :pswitch_0
    new-array v2, v9, [Ljava/lang/Object;

    .line 961
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v3

    aput-object v3, v2, v10

    .line 958
    const-string v3, "Single-argument constructor (%s) is annotated but no \'mode\' defined; `CreatorDetector`configured with `SingleArgConstructor.REQUIRE_MODE`"

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v13, v14, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    return-void

    .line 946
    :pswitch_1
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    const/4 v15, 0x1

    .line 949
    .local v15, "useProps":Z
    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v16

    .line 951
    .end local v1    # "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v16, "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v16, :cond_7

    .line 952
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v6, v16

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_validateNamedPropertyParameter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;ILcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V

    goto :goto_3

    .line 943
    .end local v15    # "useProps":Z
    .end local v16    # "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    .restart local v1    # "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    :pswitch_2
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    const/4 v15, 0x0

    .line 944
    .restart local v15    # "useProps":Z
    move-object/from16 v16, v1

    goto :goto_3

    .line 971
    .end local v15    # "useProps":Z
    .restart local v2    # "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move v15, v3

    .line 972
    .restart local v15    # "useProps":Z
    if-nez v15, :cond_6

    if-eqz v2, :cond_6

    .line 979
    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 980
    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->couldSerialize()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    move v15, v3

    move-object/from16 v16, v1

    goto :goto_3

    .line 985
    .end local v2    # "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_6
    move-object/from16 v16, v1

    .end local v1    # "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    .restart local v16    # "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_7
    :goto_3
    if-eqz v15, :cond_8

    .line 986
    new-array v7, v9, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 v5, 0x0

    .line 987
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    move-object v6, v11

    move-object/from16 v17, v7

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v1

    aput-object v1, v17, v10

    move-object/from16 v1, v17

    .line 989
    .local v1, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v2

    invoke-virtual {v0, v2, v9, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 990
    return-void

    .line 993
    .end local v1    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1, v9, v9}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    .line 997
    invoke-virtual {v8, v10}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v1

    .line 998
    .local v1, "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    if-eqz v1, :cond_9

    .line 999
    move-object v3, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    .line 1001
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _addExplicitConstructorCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Z)V
    .locals 19
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ccState"    # Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;
    .param p3, "findImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 434
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v9, v8, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 435
    .local v9, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    iget-object v10, v8, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    .line 436
    .local v10, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->annotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v11

    .line 437
    .local v11, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    iget-object v12, v8, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->vchecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 438
    .local v12, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iget-object v13, v8, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creatorParams:Ljava/util/Map;

    .line 443
    .local v13, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v14

    .line 444
    .local v14, "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    if-eqz v14, :cond_1

    .line 445
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDefaultCreator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6, v7, v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 450
    :cond_1
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/BeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 451
    .local v5, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v11, v0, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v4

    .line 452
    .local v4, "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v0, v4, :cond_3

    .line 453
    goto :goto_0

    .line 455
    :cond_3
    if-nez v4, :cond_4

    .line 457
    if-eqz p3, :cond_2

    invoke-interface {v12, v5}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    nop

    .line 459
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 458
    invoke-static {v11, v5, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->addImplicitConstructorCandidate(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    goto :goto_0

    .line 464
    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode:[I

    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 474
    nop

    .line 475
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v11, v5, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v16

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-result-object v17

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v18, v4

    .end local v4    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .local v18, "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .local v16, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    goto :goto_1

    .line 470
    .end local v16    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .end local v18    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .restart local v4    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .restart local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :pswitch_0
    nop

    .line 471
    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v11, v5, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v0

    .line 470
    invoke-virtual {v6, v7, v9, v10, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 472
    move-object/from16 v18, v4

    move-object/from16 v16, v5

    goto :goto_1

    .line 466
    :pswitch_1
    const/4 v0, 0x0

    .line 467
    invoke-static {v11, v5, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v0

    .line 466
    invoke-virtual {v6, v7, v9, v10, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 468
    move-object/from16 v18, v4

    move-object/from16 v16, v5

    .line 479
    .end local v4    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .end local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v16    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v18    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->increaseExplicitConstructorCount()V

    .line 480
    .end local v16    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .end local v18    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    goto/16 :goto_0

    .line 481
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V
    .locals 17
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p4, "candidate"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 815
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v0, -0x1

    .line 816
    .local v0, "ix":I
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v11

    .line 817
    .local v11, "argCount":I
    new-array v12, v11, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 818
    .local v12, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v1, 0x0

    move v13, v0

    move v14, v1

    .end local v0    # "ix":I
    .local v13, "ix":I
    .local v14, "i":I
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge v14, v11, :cond_2

    .line 819
    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v15

    .line 820
    .local v15, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v16

    .line 821
    .local v16, "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    if-eqz v16, :cond_0

    .line 822
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v12, v14

    .line 823
    goto :goto_1

    .line 825
    :cond_0
    if-gez v13, :cond_1

    .line 826
    move v0, v14

    .line 827
    .end local v13    # "ix":I
    .restart local v0    # "ix":I
    move v13, v0

    goto :goto_1

    .line 830
    .end local v0    # "ix":I
    .restart local v13    # "ix":I
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 832
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object v10, v2, v0

    .line 830
    const-string v0, "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed"

    invoke-virtual {v7, v8, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .end local v15    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v16    # "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 835
    .end local v14    # "i":I
    :cond_2
    if-gez v13, :cond_3

    .line 836
    new-array v2, v1, [Ljava/lang/Object;

    aput-object v10, v2, v0

    const-string v3, "No argument left as delegating for Creator %s: exactly one required"

    invoke-virtual {v7, v8, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    :cond_3
    if-ne v11, v1, :cond_5

    .line 842
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v9, v2, v1, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    .line 845
    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v0

    .line 846
    .local v0, "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    if-eqz v0, :cond_4

    .line 847
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    .line 849
    :cond_4
    return-void

    .line 851
    .end local v0    # "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_5
    move-object/from16 v3, p0

    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    invoke-virtual {v9, v0, v1, v12, v13}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 852
    return-void
.end method

.method protected _addExplicitFactoryCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Z)V
    .locals 19
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ccState"    # Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;
    .param p3, "findImplicit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 639
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v9, v8, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 640
    .local v9, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    iget-object v10, v8, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    .line 641
    .local v10, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->annotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v11

    .line 642
    .local v11, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    iget-object v12, v8, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->vchecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 643
    .local v12, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iget-object v13, v8, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creatorParams:Ljava/util/Map;

    .line 646
    .local v13, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 647
    .local v15, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v11, v0, v15}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v5

    .line 648
    .local v5, "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v4

    .line 649
    .local v4, "argCount":I
    const/4 v0, 0x0

    if-nez v5, :cond_1

    .line 651
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    if-ne v4, v1, :cond_0

    invoke-interface {v12, v15}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-static {v11, v15, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->addImplicitFactoryCandidate(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    goto :goto_0

    .line 656
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v5, v1, :cond_2

    .line 657
    goto :goto_0

    .line 661
    :cond_2
    if-nez v4, :cond_3

    .line 662
    invoke-virtual {v10, v15}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 663
    goto :goto_0

    .line 666
    :cond_3
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode:[I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 677
    nop

    .line 678
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v11, v15, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v16

    sget-object v17, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v10

    move/from16 v18, v4

    .end local v4    # "argCount":I
    .local v18, "argCount":I
    move-object/from16 v4, v16

    move-object/from16 v16, v5

    .end local v5    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .local v16, "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    goto :goto_1

    .line 672
    .end local v16    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .end local v18    # "argCount":I
    .restart local v4    # "argCount":I
    .restart local v5    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    :pswitch_0
    nop

    .line 673
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v11, v15, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v0

    .line 672
    invoke-virtual {v6, v7, v9, v10, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 674
    move/from16 v18, v4

    move-object/from16 v16, v5

    goto :goto_1

    .line 668
    :pswitch_1
    nop

    .line 669
    invoke-static {v11, v15, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v0

    .line 668
    invoke-virtual {v6, v7, v9, v10, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 670
    move/from16 v18, v4

    move-object/from16 v16, v5

    .line 684
    .end local v4    # "argCount":I
    .end local v5    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .restart local v16    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .restart local v18    # "argCount":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->increaseExplicitFactoryCount()V

    .line 685
    .end local v15    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v16    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .end local v18    # "argCount":I
    goto/16 :goto_0

    .line 686
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V
    .locals 18
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p4, "candidate"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 865
    move-object/from16 v7, p4

    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v8

    .line 866
    .local v8, "paramCount":I
    new-array v9, v8, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 868
    .local v9, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    if-ge v15, v8, :cond_2

    .line 869
    invoke-virtual {v7, v15}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v17

    .line 870
    .local v17, "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    invoke-virtual {v7, v15}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v14

    .line 871
    .local v14, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v7, v15}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 872
    .local v0, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v0, :cond_1

    .line 875
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v10

    .line 876
    .local v10, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v10, :cond_0

    .line 877
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    invoke-virtual {v13, v12, v11, v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    goto :goto_1

    .line 876
    :cond_0
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    .line 883
    :goto_1
    invoke-virtual {v7, v15}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->findImplicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v16

    .line 884
    .end local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v16, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_validateNamedPropertyParameter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;ILcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V

    move-object/from16 v0, v16

    goto :goto_2

    .line 872
    .end local v10    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .end local v16    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .restart local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_1
    move-object/from16 v13, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    .line 887
    :goto_2
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v0

    move-object v1, v14

    .end local v14    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .local v1, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move v14, v15

    move v2, v15

    .end local v15    # "i":I
    .local v2, "i":I
    move-object v15, v1

    move-object/from16 v16, v17

    invoke-virtual/range {v10 .. v16}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v9, v2

    .line 868
    .end local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v1    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v17    # "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "i":I
    .restart local v15    # "i":I
    goto :goto_0

    .line 889
    .end local v15    # "i":I
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v1, v9}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 890
    return-void
.end method

.method protected _addImplicitConstructorCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Ljava/util/List;)V
    .locals 32
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ccState"    # Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 487
    .local p3, "ctorCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v14

    .line 488
    .local v14, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    iget-object v15, v13, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 489
    .local v15, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    iget-object v10, v13, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    .line 490
    .local v10, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->annotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v9

    .line 491
    .local v9, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    iget-object v8, v13, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->vchecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 492
    .local v8, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    const/4 v0, 0x0

    .line 493
    .local v0, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->singleArgCreatorDefaultsToProperties()Z

    move-result v16

    .line 495
    .local v16, "preferPropsBased":Z
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v18, v0

    .end local v0    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    .local v18, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    .line 496
    .local v7, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v6

    .line 497
    .local v6, "argCount":I
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v5

    .line 499
    .local v5, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne v6, v4, :cond_6

    .line 500
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v2

    .line 501
    .local v2, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    if-nez v16, :cond_1

    invoke-direct {v11, v9, v5, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move/from16 v19, v0

    .line 503
    .local v19, "useProps":Z
    if-eqz v19, :cond_4

    .line 504
    new-array v4, v4, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 505
    .local v4, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v20

    .line 509
    .local v20, "injection":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 510
    .local v0, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v0, :cond_3

    .line 511
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->findImplicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 512
    if-nez v0, :cond_2

    if-nez v20, :cond_2

    .line 513
    move-object/from16 v23, v8

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v25, v14

    goto/16 :goto_8

    .line 516
    :cond_2
    move-object/from16 v21, v0

    goto :goto_3

    .line 510
    :cond_3
    move-object/from16 v21, v0

    .line 516
    .end local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v21, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_3
    const/16 v22, 0x0

    .line 517
    invoke-virtual {v7, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v23

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v24, v2

    .end local v2    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .local v24, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    move-object v2, v15

    const/4 v13, 0x0

    move-object/from16 v3, v21

    move-object/from16 v25, v14

    move-object v14, v4

    .end local v4    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v14, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v25, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    move/from16 v4, v22

    move-object/from16 v26, v5

    .end local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v26, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    move-object/from16 v5, v23

    move/from16 v27, v6

    .end local v6    # "argCount":I
    .local v27, "argCount":I
    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v14, v13

    .line 518
    move-object/from16 v6, v26

    .end local v26    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-virtual {v10, v6, v13, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 519
    .end local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v20    # "injection":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .end local v21    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    move-object/from16 v23, v8

    move-object v2, v9

    move-object v3, v10

    goto/16 :goto_8

    .line 520
    .end local v24    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v25    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v27    # "argCount":I
    .restart local v2    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v6, "argCount":I
    .local v14, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    :cond_4
    move-object/from16 v24, v2

    move/from16 v27, v6

    move-object/from16 v25, v14

    const/4 v13, 0x0

    move-object v6, v5

    .line 522
    .end local v2    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v14    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v24    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v25    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .restart local v27    # "argCount":I
    invoke-interface {v8, v6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    .line 520
    invoke-virtual {v11, v10, v6, v13, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    .line 525
    if-eqz v24, :cond_5

    .line 526
    move-object/from16 v0, v24

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    move-object/from16 v23, v8

    move-object v2, v9

    move-object v3, v10

    goto/16 :goto_8

    .line 525
    :cond_5
    move-object/from16 v23, v8

    move-object v2, v9

    move-object v3, v10

    goto/16 :goto_8

    .line 537
    .end local v19    # "useProps":Z
    .end local v24    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v25    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v27    # "argCount":I
    .restart local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v6, "argCount":I
    .restart local v14    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    :cond_6
    move/from16 v27, v6

    move-object/from16 v25, v14

    const/4 v13, 0x0

    move-object v6, v5

    .end local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v14    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v25    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .restart local v27    # "argCount":I
    const/4 v0, -0x1

    .line 538
    .local v0, "nonAnnotatedParamIndex":I
    move/from16 v14, v27

    .end local v27    # "argCount":I
    .local v14, "argCount":I
    new-array v5, v14, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 539
    .local v5, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v1, 0x0

    .line 540
    .local v1, "explicitNameCount":I
    const/16 v19, 0x0

    .line 541
    .local v19, "implicitWithCreatorCount":I
    const/4 v2, 0x0

    .line 543
    .local v2, "injectCount":I
    const/4 v3, 0x0

    move/from16 v20, v2

    move v2, v0

    move v0, v3

    .local v0, "i":I
    .local v2, "nonAnnotatedParamIndex":I
    .local v20, "injectCount":I
    :goto_4
    if-ge v0, v14, :cond_c

    .line 544
    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v3

    .line 545
    .local v3, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v21

    .line 546
    .local v21, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v9, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v22

    .line 547
    .local v22, "injectable":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    if-nez v21, :cond_7

    const/16 v23, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v23

    :goto_5
    move-object/from16 v24, v3

    .end local v3    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .local v24, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move-object/from16 v3, v23

    .line 549
    .local v3, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 550
    add-int/lit8 v23, v1, 0x1

    .line 551
    .end local v1    # "explicitNameCount":I
    .local v23, "explicitNameCount":I
    move/from16 v26, v0

    .end local v0    # "i":I
    .local v26, "i":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v13, v2

    .end local v2    # "nonAnnotatedParamIndex":I
    .local v13, "nonAnnotatedParamIndex":I
    move-object v2, v15

    const/16 v28, 0x1

    move/from16 v4, v26

    move/from16 v29, v14

    move-object v14, v5

    .end local v5    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v14, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v29, "argCount":I
    move-object/from16 v5, v24

    move-object/from16 v30, v6

    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v30, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v14, v26

    .line 552
    move-object v0, v7

    move-object v2, v9

    move-object v3, v10

    move/from16 v1, v23

    move-object/from16 v23, v8

    goto :goto_6

    .line 549
    .end local v13    # "nonAnnotatedParamIndex":I
    .end local v23    # "explicitNameCount":I
    .end local v26    # "i":I
    .end local v29    # "argCount":I
    .end local v30    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v0    # "i":I
    .restart local v1    # "explicitNameCount":I
    .restart local v2    # "nonAnnotatedParamIndex":I
    .restart local v5    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v14, "argCount":I
    :cond_8
    move/from16 v26, v0

    move v13, v2

    move-object/from16 v30, v6

    move/from16 v29, v14

    const/16 v28, 0x1

    move-object v14, v5

    .line 554
    .end local v0    # "i":I
    .end local v2    # "nonAnnotatedParamIndex":I
    .end local v5    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v13    # "nonAnnotatedParamIndex":I
    .local v14, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v26    # "i":I
    .restart local v29    # "argCount":I
    .restart local v30    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-eqz v22, :cond_9

    .line 555
    add-int/lit8 v20, v20, 0x1

    .line 556
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v15

    move-object v0, v7

    .end local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v0, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    move-object v7, v3

    move-object/from16 v23, v8

    .end local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local v23, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    move/from16 v8, v26

    move-object v2, v9

    .end local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .local v2, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    move-object/from16 v9, v24

    move-object/from16 v31, v3

    move-object v3, v10

    .end local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v3, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v31, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    move-object/from16 v10, v22

    invoke-virtual/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    aput-object v4, v14, v26

    .line 557
    goto :goto_6

    .line 559
    .end local v0    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v31    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v3, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .restart local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    :cond_9
    move-object/from16 v31, v3

    move-object v0, v7

    move-object/from16 v23, v8

    move-object v2, v9

    move-object v3, v10

    .end local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v0    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .local v3, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v31    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    move-object/from16 v4, v24

    .end local v24    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .local v4, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v5

    .line 560
    .local v5, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v5, :cond_a

    .line 561
    invoke-virtual {v11, v12, v15, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 566
    goto :goto_6

    .line 576
    :cond_a
    if-gez v13, :cond_b

    .line 577
    move/from16 v6, v26

    move v13, v6

    .line 543
    .end local v4    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v5    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .end local v21    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v22    # "injectable":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .end local v31    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_b
    :goto_6
    add-int/lit8 v4, v26, 0x1

    move-object v7, v0

    move-object v9, v2

    move-object v10, v3

    move v0, v4

    move v2, v13

    move-object v5, v14

    move-object/from16 v8, v23

    move/from16 v14, v29

    move-object/from16 v6, v30

    const/4 v4, 0x1

    const/4 v13, 0x0

    .end local v26    # "i":I
    .local v4, "i":I
    goto/16 :goto_4

    .end local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v4    # "i":I
    .end local v13    # "nonAnnotatedParamIndex":I
    .end local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v29    # "argCount":I
    .end local v30    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v0, "i":I
    .local v2, "nonAnnotatedParamIndex":I
    .local v5, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v14, "argCount":I
    :cond_c
    move/from16 v26, v0

    move v13, v2

    move-object/from16 v30, v6

    move-object v0, v7

    move-object/from16 v23, v8

    move-object v2, v9

    move-object v3, v10

    move/from16 v29, v14

    const/16 v28, 0x1

    move-object v14, v5

    .line 581
    .end local v5    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v0, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v2, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v13    # "nonAnnotatedParamIndex":I
    .local v14, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v29    # "argCount":I
    .restart local v30    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    add-int v4, v1, v19

    .line 583
    .local v4, "namedCount":I
    if-gtz v1, :cond_e

    if-lez v20, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v6, v29

    move-object/from16 v5, v30

    goto :goto_9

    .line 585
    :cond_e
    :goto_7
    add-int v5, v4, v20

    move/from16 v6, v29

    .end local v29    # "argCount":I
    .local v6, "argCount":I
    if-ne v5, v6, :cond_f

    .line 586
    move-object/from16 v5, v30

    const/4 v7, 0x0

    .end local v30    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v5, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-virtual {v3, v5, v7, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 587
    goto :goto_8

    .line 589
    .end local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v30    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    :cond_f
    move-object/from16 v5, v30

    const/4 v7, 0x0

    .end local v30    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-nez v1, :cond_10

    add-int/lit8 v8, v20, 0x1

    if-ne v8, v6, :cond_10

    .line 591
    invoke-virtual {v3, v5, v7, v14, v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 592
    nop

    .line 495
    .end local v0    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v1    # "explicitNameCount":I
    .end local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v4    # "namedCount":I
    .end local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v6    # "argCount":I
    .end local v13    # "nonAnnotatedParamIndex":I
    .end local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v19    # "implicitWithCreatorCount":I
    .end local v20    # "injectCount":I
    .end local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    :goto_8
    move-object/from16 v13, p2

    move-object v9, v2

    move-object v10, v3

    move-object/from16 v8, v23

    move-object/from16 v14, v25

    .end local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    goto/16 :goto_0

    .line 597
    .restart local v0    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v1    # "explicitNameCount":I
    .restart local v4    # "namedCount":I
    .restart local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v6    # "argCount":I
    .restart local v13    # "nonAnnotatedParamIndex":I
    .restart local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v19    # "implicitWithCreatorCount":I
    .restart local v20    # "injectCount":I
    :cond_10
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->findImplicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v7

    .line 598
    .local v7, "impl":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 607
    :cond_11
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 609
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aput-object v5, v8, v28

    .line 607
    const-string v9, "Argument #%d of constructor %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v12, v15, v9, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .end local v7    # "impl":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_12
    :goto_9
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDefaultCreator()Z

    move-result v7

    if-nez v7, :cond_14

    .line 614
    if-nez v18, :cond_13

    .line 615
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v18, v7

    goto :goto_a

    .line 614
    :cond_13
    move-object/from16 v7, v18

    .line 617
    .end local v18    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    .local v7, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    :goto_a
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v7

    .line 619
    .end local v0    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v1    # "explicitNameCount":I
    .end local v4    # "namedCount":I
    .end local v5    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v6    # "argCount":I
    .end local v7    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    .end local v13    # "nonAnnotatedParamIndex":I
    .end local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v19    # "implicitWithCreatorCount":I
    .end local v20    # "injectCount":I
    .restart local v18    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    :cond_14
    move-object/from16 v13, p2

    move-object v9, v2

    move-object v10, v3

    move-object/from16 v8, v23

    move-object/from16 v14, v25

    goto/16 :goto_0

    .line 622
    .end local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v25    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .restart local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v14, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    :cond_15
    move-object/from16 v23, v8

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v25, v14

    .end local v8    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v9    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v10    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v14    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .restart local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v25    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    if-eqz v18, :cond_17

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDelegatingCreator()Z

    move-result v0

    if-nez v0, :cond_17

    .line 623
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasPropertyBasedCreator()Z

    move-result v0

    if-nez v0, :cond_16

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v2

    .end local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .local v7, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    move-object v2, v15

    move-object v8, v3

    .end local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v8, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    move-object/from16 v3, v23

    move-object v4, v7

    move-object v5, v8

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkImplicitlyNamedConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/List;)V

    goto :goto_b

    .line 623
    .end local v7    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v8    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    :cond_16
    move-object v7, v2

    move-object v8, v3

    .end local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v7    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v8    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    goto :goto_b

    .line 622
    .end local v7    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v8    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    :cond_17
    move-object v7, v2

    move-object v8, v3

    .line 627
    .end local v2    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v3    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v7    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v8    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    :goto_b
    return-void
.end method

.method protected _addImplicitFactoryCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Ljava/util/List;)V
    .locals 32
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ccState"    # Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 692
    .local p3, "factoryCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v14, v13, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 693
    .local v14, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    iget-object v15, v13, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    .line 694
    .local v15, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->annotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v10

    .line 695
    .local v10, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    iget-object v9, v13, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->vchecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 696
    .local v9, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iget-object v8, v13, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creatorParams:Ljava/util/Map;

    .line 699
    .local v8, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    .line 700
    .local v7, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v6

    .line 701
    .local v6, "argCount":I
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v5

    .line 702
    .local v5, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 704
    .local v17, "propDefs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    const/4 v4, 0x1

    if-eq v6, v4, :cond_1

    .line 705
    goto :goto_0

    .line 707
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v1

    .line 708
    .local v1, "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-direct {v11, v10, v5, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    move-result v18

    .line 709
    .local v18, "useProps":Z
    if-nez v18, :cond_2

    .line 710
    nop

    .line 711
    invoke-interface {v9, v5}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    .line 710
    invoke-virtual {v11, v15, v5, v2, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    .line 714
    if-eqz v1, :cond_0

    .line 715
    move-object v0, v1

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    goto :goto_0

    .line 719
    :cond_2
    const/4 v0, 0x0

    .line 720
    .local v0, "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    new-array v3, v6, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 721
    .local v3, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/16 v19, 0x0

    .line 722
    .local v19, "implicitNameCount":I
    const/16 v20, 0x0

    .line 723
    .local v20, "explicitNameCount":I
    const/16 v21, 0x0

    .line 725
    .local v21, "injectCount":I
    const/16 v22, 0x0

    move/from16 v13, v22

    move/from16 v31, v20

    move-object/from16 v20, v0

    move/from16 v0, v31

    .local v0, "explicitNameCount":I
    .local v13, "i":I
    .local v20, "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    :goto_1
    if-ge v13, v6, :cond_9

    .line 726
    move-object/from16 v22, v15

    .end local v15    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v22, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    invoke-virtual {v5, v13}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v15

    .line 727
    .local v15, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    const/16 v23, 0x0

    if-nez v17, :cond_3

    move-object/from16 v24, v23

    goto :goto_2

    :cond_3
    aget-object v24, v17, v13

    .line 728
    .local v24, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :goto_2
    invoke-virtual {v10, v15}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v25

    .line 729
    .local v25, "injectable":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    if-nez v24, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v23

    :goto_3
    move-object v11, v3

    .end local v3    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v11, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    move-object/from16 v3, v23

    .line 731
    .local v3, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v24, :cond_5

    invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 732
    add-int/lit8 v23, v0, 0x1

    .line 733
    .end local v0    # "explicitNameCount":I
    .local v23, "explicitNameCount":I
    move-object/from16 v0, p0

    move-object/from16 v26, v1

    .end local v1    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .local v26, "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    move-object/from16 v1, p1

    move-object v2, v14

    const/16 v27, 0x1

    move v4, v13

    move-object/from16 v28, v5

    .end local v5    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v28, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    move-object v5, v15

    move/from16 v29, v6

    .end local v6    # "argCount":I
    .local v29, "argCount":I
    move-object/from16 v6, v25

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v11, v13

    .line 734
    move-object/from16 v5, p0

    move-object/from16 v30, v7

    move-object v2, v8

    move-object v1, v10

    move-object v6, v11

    move/from16 v0, v23

    move-object/from16 v23, v9

    goto :goto_4

    .line 731
    .end local v23    # "explicitNameCount":I
    .end local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v29    # "argCount":I
    .restart local v0    # "explicitNameCount":I
    .restart local v1    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v5    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v6    # "argCount":I
    :cond_5
    move-object/from16 v26, v1

    move-object/from16 v28, v5

    move/from16 v29, v6

    const/16 v27, 0x1

    .line 736
    .end local v1    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v5    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v6    # "argCount":I
    .restart local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v29    # "argCount":I
    if-eqz v25, :cond_6

    .line 737
    add-int/lit8 v21, v21, 0x1

    .line 738
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v14

    move-object v1, v7

    .end local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v1, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    move-object v7, v3

    move-object v2, v8

    .end local v8    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local v2, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    move v8, v13

    move-object/from16 v23, v9

    .end local v9    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local v23, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    move-object v9, v15

    move-object/from16 v30, v1

    move-object v1, v10

    .end local v10    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .local v1, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .local v30, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    move-object/from16 v10, v25

    invoke-virtual/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    aput-object v4, v11, v13

    .line 739
    move-object/from16 v5, p0

    move-object v6, v11

    goto :goto_4

    .line 741
    .end local v1    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v2    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .end local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v8    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v9    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v10    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    :cond_6
    move-object/from16 v30, v7

    move-object v2, v8

    move-object/from16 v23, v9

    move-object v1, v10

    .end local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v8    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .end local v9    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v10    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v1    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v2    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    invoke-virtual {v1, v15}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v4

    .line 742
    .local v4, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v4, :cond_7

    .line 743
    move-object/from16 v5, p0

    move-object v6, v11

    .end local v11    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v6, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v5, v12, v14, v15}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 748
    goto :goto_4

    .line 772
    .end local v6    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v11    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_7
    move-object/from16 v5, p0

    move-object v6, v11

    .end local v11    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v6    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v20, :cond_8

    .line 773
    move-object v7, v15

    move-object/from16 v20, v7

    .line 725
    .end local v3    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v4    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .end local v15    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v24    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v25    # "injectable":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    :cond_8
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object v10, v1

    move-object v8, v2

    move-object v11, v5

    move-object v3, v6

    move-object/from16 v15, v22

    move-object/from16 v9, v23

    move-object/from16 v1, v26

    move-object/from16 v5, v28

    move/from16 v6, v29

    move-object/from16 v7, v30

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v2    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .end local v22    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v29    # "argCount":I
    .end local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v1, "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .local v3, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v5    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v6, "argCount":I
    .restart local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v8    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v9    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v10    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .local v15, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    :cond_9
    move-object/from16 v26, v1

    move-object/from16 v28, v5

    move/from16 v29, v6

    move-object/from16 v30, v7

    move-object v2, v8

    move-object/from16 v23, v9

    move-object v1, v10

    move-object v5, v11

    move-object/from16 v22, v15

    const/16 v27, 0x1

    move-object v6, v3

    .line 776
    .end local v3    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v5    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v7    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v8    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .end local v9    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v10    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v13    # "i":I
    .end local v15    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v1, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v2    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local v6, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v22    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v29    # "argCount":I
    .restart local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    add-int v3, v0, v19

    .line 779
    .local v3, "namedCount":I
    if-gtz v0, :cond_b

    if-lez v21, :cond_a

    goto :goto_5

    :cond_a
    move-object/from16 v4, v22

    goto :goto_7

    .line 781
    :cond_b
    :goto_5
    add-int v4, v3, v21

    move/from16 v7, v29

    .end local v29    # "argCount":I
    .local v7, "argCount":I
    if-ne v4, v7, :cond_c

    .line 782
    move-object/from16 v4, v22

    move-object/from16 v8, v28

    const/4 v9, 0x0

    .end local v22    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v4, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .local v8, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-virtual {v4, v8, v9, v6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_7

    .line 783
    .end local v4    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v8    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v22    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    :cond_c
    move-object/from16 v4, v22

    move-object/from16 v8, v28

    const/4 v9, 0x0

    .end local v22    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v4    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .restart local v8    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-nez v0, :cond_d

    add-int/lit8 v10, v21, 0x1

    if-ne v10, v7, :cond_d

    .line 785
    invoke-virtual {v4, v8, v9, v6, v9}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    goto :goto_7

    .line 787
    :cond_d
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    if-nez v20, :cond_e

    const/4 v11, -0x1

    goto :goto_6

    .line 789
    :cond_e
    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v11

    :goto_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    aput-object v8, v10, v27

    .line 787
    const-string v9, "Argument #%d of factory method %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v12, v14, v9, v10}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    .end local v0    # "explicitNameCount":I
    .end local v3    # "namedCount":I
    .end local v6    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v7    # "argCount":I
    .end local v8    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v17    # "propDefs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v18    # "useProps":Z
    .end local v19    # "implicitNameCount":I
    .end local v20    # "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v21    # "injectCount":I
    .end local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    :goto_7
    move-object/from16 v13, p2

    move-object v10, v1

    move-object v8, v2

    move-object v15, v4

    move-object v11, v5

    move-object/from16 v9, v23

    goto/16 :goto_0

    .line 794
    .end local v1    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v2    # "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .end local v4    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v23    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local v8, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v9    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .restart local v10    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v15    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    :cond_f
    return-void
.end method

.method protected _addRecordConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;)V
    .locals 17
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ccState"    # Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;
    .param p3, "canonical"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 408
    .local p4, "implicitNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v2

    .line 409
    .local v2, "argCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 410
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    new-array v4, v2, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 412
    .local v4, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 413
    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v13

    .line 414
    .local v13, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v3, v13}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v14

    .line 415
    .local v14, "injectable":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    invoke-virtual {v3, v13}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    .line 416
    .local v6, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v15, p4

    move-object/from16 v16, v6

    goto :goto_2

    .line 417
    :cond_1
    :goto_1
    move-object/from16 v15, p4

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    move-object/from16 v16, v6

    .line 419
    .end local v6    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v16, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_2
    iget-object v8, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, v16

    move v10, v5

    move-object v11, v13

    move-object v12, v14

    invoke-virtual/range {v6 .. v12}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    aput-object v6, v4, v5

    .line 412
    .end local v13    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v14    # "injectable":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .end local v16    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v15, p4

    .line 421
    .end local v5    # "i":I
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 422
    return-void
.end method

.method protected _constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 260
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    .line 261
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultVisibilityChecker(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v1

    .line 262
    .local v1, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    move-result-object v2

    .line 271
    .local v2, "ctorDetector":Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    new-instance v7, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    invoke-direct {v7, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 272
    .local v7, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCreatorsFromProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/util/Map;

    move-result-object v9

    .line 274
    .local v9, "creatorDefs":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    new-instance v10, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;

    move-object v3, v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V

    move-object v0, v10

    .line 279
    .end local v1    # "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .end local v7    # "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .end local v9    # "creatorDefs":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local v0, "ccState":Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->requireCtorAnnotation()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitFactoryCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Z)V

    .line 282
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->isConcrete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->isRecordType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util;->findRecordConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v3

    .line 288
    .local v3, "canonical":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    if-eqz v3, :cond_0

    .line 289
    invoke-virtual {p0, p1, v0, v3, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addRecordConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;)V

    .line 290
    iget-object v4, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v4

    return-object v4

    .line 296
    .end local v1    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "canonical":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->isNonStaticInnerClass()Z

    move-result v1

    .line 297
    .local v1, "isNonStaticInnerClass":Z
    if-eqz v1, :cond_1

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->shouldIntrospectorImplicitConstructors(Ljava/lang/Class;)Z

    move-result v3

    .line 304
    .local v3, "findImplicit":Z
    invoke-virtual {p0, p1, v0, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitConstructorCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Z)V

    .line 305
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->hasImplicitConstructorCandidates()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->hasExplicitConstructors()Z

    move-result v4

    if-nez v4, :cond_2

    .line 312
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->implicitConstructorCandidates()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, p1, v0, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addImplicitConstructorCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Ljava/util/List;)V

    .line 317
    .end local v1    # "isNonStaticInnerClass":Z
    .end local v3    # "findImplicit":Z
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->hasImplicitFactoryCandidates()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->hasExplicitFactories()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->hasExplicitConstructors()Z

    move-result v1

    if-nez v1, :cond_3

    .line 319
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->implicitFactoryCandidates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addImplicitFactoryCreators(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;Ljava/util/List;)V

    .line 321
    :cond_3
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$CreatorCollectionState;->creators:Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    return-object v1
.end method

.method protected _findCreatorsFromProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/util/Map;
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 328
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 329
    .local v2, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getConstructorParameters()Ljava/util/Iterator;

    move-result-object v3

    .line 330
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 332
    .local v4, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v5

    .line 333
    .local v5, "owner":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 334
    .local v6, "defs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v7

    .line 336
    .local v7, "index":I
    if-nez v6, :cond_1

    .line 337
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 338
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v0, v8

    .line 340
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v8

    new-array v6, v8, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 341
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 343
    :cond_1
    aget-object v8, v6, v7

    if-eqz v8, :cond_2

    .line 344
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 346
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aget-object v10, v6, v7

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    .line 344
    const-string v9, "Conflict: parameter #%d of %s bound to more than one property; %s vs %s"

    invoke-virtual {p1, p2, v9, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_2
    :goto_2
    aput-object v2, v6, v7

    .line 350
    .end local v4    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v5    # "owner":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v6    # "defs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v7    # "index":I
    goto :goto_1

    .line 351
    .end local v2    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    :cond_3
    goto :goto_0

    .line 352
    :cond_4
    return-object v0
.end method

.method protected _findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2189
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2190
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2192
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2193
    return-object v2

    .line 2195
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2196
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
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

    .line 2175
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2176
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2177
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2178
    return-object v2

    .line 2180
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2181
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2204
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2205
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2207
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2208
    return-object v2

    .line 2210
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2211
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2219
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2220
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2222
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2223
    return-object v2

    .line 2225
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2226
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
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

    .line 2233
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2234
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2235
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2236
    return-object v2

    .line 2238
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2239
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 9
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "keyDeserializer"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p5, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2248
    .local p6, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2249
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2251
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2252
    return-object v2

    .line 2254
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2255
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 9
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "keyDeserializer"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p5, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2264
    .local p6, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2265
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2267
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2268
    return-object v2

    .line 2270
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2271
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "contentTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2160
    .local p5, "contentDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2161
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2163
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2164
    return-object v2

    .line 2166
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2167
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
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

    .line 2146
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 2147
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2148
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 2149
    return-object v2

    .line 2151
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 2152
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findJsonValueFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "enumType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2467
    if-nez p2, :cond_0

    .line 2468
    const/4 v0, 0x0

    return-object v0

    .line 2470
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 2471
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v1

    return-object v1
.end method

.method protected _findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2132
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 2133
    .local v0, "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method protected _getSetterInfo(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 8
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p3, "metadata"    # Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 1251
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1252
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 1254
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    const/4 v2, 0x1

    .line 1255
    .local v2, "needMerge":Z
    const/4 v3, 0x0

    .line 1256
    .local v3, "valueNulls":Lcom/fasterxml/jackson/annotation/Nulls;
    const/4 v4, 0x0

    .line 1260
    .local v4, "contentNulls":Lcom/fasterxml/jackson/annotation/Nulls;
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v5

    .line 1262
    .local v5, "prim":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v5, :cond_3

    .line 1264
    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSetterInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v6

    .line 1266
    .local v6, "setterInfo":Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    if-eqz v6, :cond_0

    .line 1267
    invoke-virtual {v6}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v3

    .line 1268
    invoke-virtual {v6}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v4

    .line 1273
    .end local v6    # "setterInfo":Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_3

    .line 1274
    :cond_1
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    move-result-object v6

    .line 1275
    .local v6, "co":Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v7

    .line 1276
    .local v7, "setterInfo":Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    if-eqz v7, :cond_3

    .line 1277
    if-nez v3, :cond_2

    .line 1278
    invoke-virtual {v7}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v3

    .line 1280
    :cond_2
    if-nez v4, :cond_3

    .line 1281
    invoke-virtual {v7}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v4

    .line 1286
    .end local v6    # "co":Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    .end local v7    # "setterInfo":Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    if-nez v4, :cond_6

    .line 1287
    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v6

    .line 1288
    .local v6, "setterInfo":Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    if-nez v3, :cond_5

    .line 1289
    invoke-virtual {v6}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultValueNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v3

    .line 1291
    :cond_5
    if-nez v4, :cond_6

    .line 1292
    invoke-virtual {v6}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->nonDefaultContentNulls()Lcom/fasterxml/jackson/annotation/Nulls;

    move-result-object v4

    .line 1295
    .end local v6    # "setterInfo":Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    .line 1296
    :cond_7
    invoke-virtual {p3, v3, v4}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withNulls(Lcom/fasterxml/jackson/annotation/Nulls;Lcom/fasterxml/jackson/annotation/Nulls;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object p3

    .line 1298
    :cond_8
    return-object p3
.end method

.method protected _handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z
    .locals 4
    .param p1, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p2, "ctor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p3, "isCreator"    # Z
    .param p4, "isVisible"    # Z

    .line 1083
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 1084
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_16

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    .line 1090
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_13

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    goto :goto_3

    .line 1096
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_10

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 1102
    :cond_2
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_d

    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 1108
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_a

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_4

    goto :goto_0

    .line 1114
    :cond_4
    const-class v2, Ljava/math/BigInteger;

    if-ne v1, v2, :cond_6

    .line 1115
    if-nez p3, :cond_5

    if-eqz p4, :cond_6

    .line 1116
    :cond_5
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBigIntegerCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 1119
    :cond_6
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_8

    .line 1120
    if-nez p3, :cond_7

    if-eqz p4, :cond_8

    .line 1121
    :cond_7
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBigDecimalCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 1125
    :cond_8
    if-eqz p3, :cond_9

    .line 1126
    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 1127
    return v3

    .line 1129
    :cond_9
    return v0

    .line 1109
    :cond_a
    :goto_0
    if-nez p3, :cond_b

    if-eqz p4, :cond_c

    .line 1110
    :cond_b
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 1112
    :cond_c
    return v3

    .line 1103
    :cond_d
    :goto_1
    if-nez p3, :cond_e

    if-eqz p4, :cond_f

    .line 1104
    :cond_e
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 1106
    :cond_f
    return v3

    .line 1097
    :cond_10
    :goto_2
    if-nez p3, :cond_11

    if-eqz p4, :cond_12

    .line 1098
    :cond_11
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 1100
    :cond_12
    return v3

    .line 1091
    :cond_13
    :goto_3
    if-nez p3, :cond_14

    if-eqz p4, :cond_15

    .line 1092
    :cond_14
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 1094
    :cond_15
    return v3

    .line 1085
    :cond_16
    :goto_4
    if-nez p3, :cond_17

    if-eqz p4, :cond_18

    .line 1086
    :cond_17
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 1088
    :cond_18
    return v3
.end method

.method protected _hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 2418
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2419
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2420
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v2

    .line 2421
    .local v2, "mode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2423
    .end local v2    # "mode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    :cond_1
    return v1
.end method

.method protected _mapAbstractCollectionType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1439
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$ContainerDefaultMappings;->findCollectionFallback(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1440
    .local v0, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 1442
    invoke-virtual {v1, p1, v0, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 1441
    return-object v1

    .line 1444
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _mapAbstractMapType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1592
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$ContainerDefaultMappings;->findMapFallback(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1593
    .local v0, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 1595
    invoke-virtual {v1, p1, v0, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 1594
    return-object v1

    .line 1597
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1156
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1158
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1156
    const-string v1, "Cannot define Creator parameter %d as `@JsonUnwrapped`: combination not yet supported"

    invoke-virtual {p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    return-void
.end method

.method protected _validateNamedPropertyParameter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;ILcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "candidate"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .param p4, "paramIndex"    # I
    .param p5, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p6, "injectId"    # Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1143
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 1144
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1146
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 1144
    const-string v1, "Argument #%d of constructor %s has no property name (and is not Injectable): can not use as property-based Creator"

    invoke-virtual {p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    :cond_0
    return-void
.end method

.method public _valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "instDef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 360
    return-object v0

    .line 365
    :cond_0
    instance-of v1, p3, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    if-eqz v1, :cond_1

    .line 366
    move-object v0, p3

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-object v0

    .line 368
    :cond_1
    instance-of v1, p3, Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 373
    move-object v1, p3

    check-cast v1, Ljava/lang/Class;

    .line 374
    .local v1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    return-object v0

    .line 377
    :cond_2
    const-class v0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 382
    .local v0, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-eqz v0, :cond_3

    .line 383
    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v2

    .line 384
    .local v2, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    if-eqz v2, :cond_3

    .line 385
    return-object v2

    .line 388
    .end local v2    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_3
    nop

    .line 389
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    .line 388
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-object v2

    .line 378
    .end local v0    # "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnnotationIntrospector returned Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; expected Class<ValueInstantiator>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    .end local v1    # "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 19
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "index"    # I
    .param p5, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p6, "injectable"    # Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p5

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v12

    .line 1173
    .local v12, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v13

    .line 1177
    .local v13, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v13, :cond_0

    .line 1178
    sget-object v2, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 1179
    .local v2, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    const/4 v3, 0x0

    move-object v8, v2

    move-object v14, v3

    .local v3, "wrapperName":Lcom/fasterxml/jackson/databind/PropertyName;
    goto :goto_0

    .line 1181
    .end local v2    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .end local v3    # "wrapperName":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_0
    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v2

    .line 1182
    .local v2, "b":Ljava/lang/Boolean;
    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v3

    .line 1183
    .local v3, "desc":Ljava/lang/String;
    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;

    move-result-object v4

    .line 1184
    .local v4, "idx":Ljava/lang/Integer;
    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v5

    .line 1185
    .local v5, "def":Ljava/lang/String;
    invoke-static {v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v6

    .line 1186
    .local v6, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    invoke-virtual {v13, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v7

    move-object v8, v6

    move-object v14, v7

    .line 1189
    .end local v2    # "b":Ljava/lang/Boolean;
    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "idx":Ljava/lang/Integer;
    .end local v5    # "def":Ljava/lang/String;
    .end local v6    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .local v8, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .local v14, "wrapperName":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v0, v1, v11, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    .line 1190
    .local v15, "type":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v9, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    move-object v2, v9

    move-object/from16 v3, p3

    move-object v4, v15

    move-object v5, v14

    move-object/from16 v6, p5

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    move-object v10, v9

    .line 1193
    .local v10, "property":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1195
    .local v2, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v2, :cond_1

    .line 1196
    invoke-virtual {v0, v12, v15}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_1

    .line 1195
    :cond_1
    move-object/from16 v16, v2

    .line 1201
    .end local v2    # "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v16, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_1
    invoke-virtual {v0, v1, v10, v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_getSetterInfo(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v17

    .line 1205
    .end local v8    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .local v17, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 1206
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v6

    .line 1205
    move-object/from16 v2, p3

    move-object v3, v15

    move-object/from16 v5, v16

    move-object/from16 v7, p5

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v18, v10

    .end local v10    # "property":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    .local v18, "property":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    move-object/from16 v10, v17

    invoke-static/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->construct(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v2

    .line 1208
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v0, v1, v11}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 1209
    .local v3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v3, :cond_2

    .line 1210
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1212
    :cond_2
    if-eqz v3, :cond_3

    .line 1214
    invoke-virtual {v1, v3, v2, v15}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 1215
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    .line 1217
    :cond_3
    return-object v2
.end method

.method protected constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "jsonValueAccessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .line 2401
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_1

    .line 2402
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2403
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2404
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 2403
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 2406
    :cond_0
    invoke-static {p2, p1, p3}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingMethod(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0

    .line 2410
    :cond_1
    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public createArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
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

    .line 1312
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    .line 1313
    .local v6, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 1316
    .local v7, "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1318
    .local v8, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1320
    .local v0, "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v0, :cond_0

    .line 1321
    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 1320
    :cond_0
    move-object v9, v0

    .line 1324
    .end local v0    # "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v9, "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, v6

    move-object v3, p3

    move-object v4, v9

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1326
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v0, :cond_3

    .line 1327
    if-nez v8, :cond_2

    .line 1328
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1329
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1330
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2

    .line 1332
    :cond_1
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    .line 1333
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;

    return-object v2

    .line 1336
    .end local v1    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;

    invoke-direct {v1, p2, v8, v9}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    move-object v0, v1

    .line 1339
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1340
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1341
    .local v2, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v2, v6, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1342
    .end local v2    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_1

    .line 1344
    :cond_4
    return-object v0
.end method

.method public createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
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

    .line 1358
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1360
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1361
    .local v1, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v8

    .line 1364
    .local v8, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1366
    .local v2, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v2, :cond_0

    .line 1367
    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 1366
    :cond_0
    move-object v9, v2

    .line 1370
    .end local v2    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v9, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, v8

    move-object v5, p3

    move-object v6, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1372
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v2, :cond_1

    .line 1373
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 1374
    .local v3, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 1376
    const-class v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1377
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    move-object v2, v4

    .line 1391
    .end local v3    # "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    if-nez v2, :cond_9

    .line 1392
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->isInterface()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->isAbstract()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1393
    :cond_2
    invoke-virtual {p0, p2, v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractCollectionType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v3

    .line 1394
    .local v3, "implType":Lcom/fasterxml/jackson/databind/type/CollectionType;
    if-nez v3, :cond_4

    .line 1396
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1399
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v2

    goto :goto_1

    .line 1397
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find a deserializer for non-concrete Collection type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1401
    :cond_4
    move-object p2, v3

    .line 1403
    invoke-virtual {v8, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object p3

    .line 1406
    .end local v3    # "implType":Lcom/fasterxml/jackson/databind/type/CollectionType;
    :cond_5
    :goto_1
    if-nez v2, :cond_9

    .line 1407
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v3

    .line 1408
    .local v3, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1410
    const-class v4, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/type/CollectionType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1411
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;

    invoke-direct {v4, p2, v1, v9, v3}, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    return-object v4

    .line 1414
    :cond_6
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->findForCollection(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1415
    if-eqz v2, :cond_7

    .line 1416
    return-object v2

    .line 1420
    :cond_7
    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1422
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;

    invoke-direct {v4, p2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    move-object v2, v4

    goto :goto_2

    .line 1424
    :cond_8
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    invoke-direct {v4, p2, v1, v9, v3}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    move-object v2, v4

    .line 1429
    .end local v3    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1430
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1431
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v8, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1432
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_3

    .line 1434
    :cond_a
    return-object v2
.end method

.method public createCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
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

    .line 1453
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1455
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1456
    .local v1, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v8

    .line 1459
    .local v8, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1461
    .local v2, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v2, :cond_0

    .line 1462
    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 1461
    :cond_0
    move-object v9, v2

    .line 1464
    .end local v2    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v9, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, v8

    move-object v5, p3

    move-object v6, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1466
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_1

    .line 1468
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1469
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1470
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v8, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1471
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_1

    .line 1474
    :cond_1
    return-object v2
.end method

.method public createEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
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

    .line 1654
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 1655
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1657
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1659
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v2, :cond_6

    .line 1665
    const-class v3, Ljava/lang/Enum;

    if-ne v1, v3, :cond_0

    .line 1666
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v3

    return-object v3

    .line 1669
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v3

    .line 1670
    .local v3, "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 1671
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    :goto_0
    nop

    .line 1673
    .local v4, "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 1674
    .local v6, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1675
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 1676
    invoke-static {v0, v1, v6}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForNoArgsCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1677
    goto :goto_2

    .line 1679
    :cond_2
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 1681
    .local v5, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1682
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1684
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1682
    const-string v8, "Invalid `@JsonCreator` annotated Enum factory method [%s]: needs to return compatible type"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 1686
    :cond_3
    invoke-static {v0, v1, v6, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1687
    goto :goto_2

    .line 1689
    .end local v5    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_4
    goto :goto_1

    .line 1692
    :cond_5
    :goto_2
    if-nez v2, :cond_6

    .line 1693
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;

    .line 1694
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v6

    .line 1693
    invoke-virtual {p0, v1, v0, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1695
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Ljava/lang/Boolean;)V

    move-object v2, v5

    .line 1700
    .end local v3    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .end local v4    # "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1701
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1702
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v0, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1703
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_3

    .line 1705
    :cond_7
    return-object v2
.end method

.method public createKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 5
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1840
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 1841
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    const/4 v1, 0x0

    .line 1842
    .local v1, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    const/4 v2, 0x0

    .line 1843
    .local v2, "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasKeyDeserializers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1844
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 1845
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->keyDeserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .line 1846
    .local v4, "d":Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    invoke-interface {v4, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    .line 1847
    if-eqz v2, :cond_0

    .line 1848
    goto :goto_1

    .line 1850
    .end local v4    # "d":Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    :cond_0
    goto :goto_0

    .line 1854
    :cond_1
    :goto_1
    if-nez v2, :cond_4

    .line 1856
    if-nez v1, :cond_2

    .line 1857
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 1859
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    .line 1860
    if-nez v2, :cond_4

    .line 1861
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1862
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    goto :goto_2

    .line 1864
    :cond_3
    invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    .line 1869
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 1870
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1871
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1872
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v0, p2, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    .line 1873
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_3

    .line 1876
    :cond_5
    return-object v2
.end method

.method public createMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 21
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
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

    .line 1488
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v10

    .line 1489
    .local v10, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 1490
    .local v11, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 1494
    .local v12, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1497
    .local v13, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 1499
    .local v14, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1501
    .local v0, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v0, :cond_0

    .line 1502
    invoke-virtual {v7, v10, v12}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    .line 1501
    :cond_0
    move-object v15, v0

    .line 1506
    .end local v0    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v15, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v14

    move-object v5, v15

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v16

    .line 1509
    .local v16, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v16, :cond_c

    .line 1511
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    .line 1512
    .local v6, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1517
    const-class v0, Ljava/util/EnumMap;

    if-ne v6, v0, :cond_1

    .line 1518
    const/4 v0, 0x0

    move-object/from16 v5, p3

    move-object/from16 v17, v0

    .local v0, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    goto :goto_1

    .line 1520
    .end local v0    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_1
    move-object/from16 v5, p3

    invoke-virtual {v7, v8, v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1522
    .local v17, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :goto_1
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumImplType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1525
    new-instance v18, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;

    const/4 v3, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v20, v6

    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v20, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)V

    move-object/from16 v16, v18

    goto :goto_2

    .line 1523
    .end local v20    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct EnumMap; generic (key) type not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1512
    .end local v17    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_3
    move-object/from16 v20, v6

    .line 1540
    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-nez v16, :cond_b

    .line 1541
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 1557
    :cond_4
    invoke-static/range {p1 .. p2}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->findForMap(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1558
    .end local v16    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_5

    .line 1559
    return-object v0

    .line 1558
    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v0, p3

    goto :goto_5

    .line 1542
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .restart local v16    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_6
    :goto_3
    invoke-virtual {v7, v9, v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractMapType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    .line 1543
    .local v0, "fallback":Lcom/fasterxml/jackson/databind/type/MapType;
    if-eqz v0, :cond_7

    .line 1544
    move-object v1, v0

    .line 1545
    .end local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .local v1, "type":Lcom/fasterxml/jackson/databind/type/MapType;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/MapType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    .line 1547
    .end local v20    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v2

    .end local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .local v2, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    goto :goto_4

    .line 1550
    .end local v1    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local v2    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v20    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1553
    invoke-static/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v16

    move-object/from16 v2, p3

    move-object v1, v9

    move-object/from16 v6, v20

    .line 1555
    .end local v0    # "fallback":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local v20    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .restart local v1    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local v2    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .restart local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    move-object v9, v1

    move-object v0, v2

    move-object/from16 v20, v6

    .line 1562
    .end local v1    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local v2    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .local v9, "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local v20    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    if-nez v16, :cond_d

    .line 1563
    invoke-virtual {v7, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v17

    .line 1568
    .restart local v17    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    new-instance v18, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-object/from16 v1, v18

    move-object v2, v9

    move-object/from16 v3, v17

    move-object v4, v14

    move-object v5, v13

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    .line 1569
    .local v1, "md":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    const-class v2, Ljava/util/Map;

    .line 1570
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    .line 1569
    invoke-virtual {v10, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v2

    .line 1571
    .local v2, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    const/4 v3, 0x0

    if-nez v2, :cond_8

    move-object v4, v3

    goto :goto_6

    .line 1572
    :cond_8
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v4

    :goto_6
    nop

    .line 1573
    .local v4, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->setIgnorableProperties(Ljava/util/Set;)V

    .line 1574
    const-class v5, Ljava/util/Map;

    .line 1575
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v6

    .line 1574
    invoke-virtual {v10, v5, v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v5

    .line 1576
    .local v5, "inclusions":Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    if-nez v5, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v3

    .line 1577
    .local v3, "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_7
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->setIncludableProperties(Ljava/util/Set;)V

    .line 1578
    move-object/from16 v16, v1

    goto :goto_8

    .line 1551
    .end local v1    # "md":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .end local v2    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v3    # "included":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "inclusions":Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .end local v9    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local v17    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .local v0, "fallback":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find a deserializer for non-concrete Map type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1540
    .end local v0    # "fallback":Lcom/fasterxml/jackson/databind/type/MapType;
    :cond_b
    move-object/from16 v0, p3

    goto :goto_8

    .line 1509
    .end local v20    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    move-object/from16 v0, p3

    .line 1582
    .end local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .restart local v9    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    :cond_d
    :goto_8
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1583
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v2, v16

    .end local v16    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1584
    .local v3, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v3, v10, v9, v0, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1585
    .end local v3    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_9

    .line 1583
    :cond_e
    move-object/from16 v16, v2

    .line 1587
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .restart local v16    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_f
    return-object v16
.end method

.method public createMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 14
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
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

    .line 1606
    move-object v7, p0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    .line 1607
    .local v8, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 1608
    .local v9, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v10

    .line 1612
    .local v10, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1615
    .local v11, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 1622
    .local v12, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1624
    .local v0, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v0, :cond_0

    .line 1625
    invoke-virtual {p0, v10, v9}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 1624
    :cond_0
    move-object v13, v0

    .line 1627
    .end local v0    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v13, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v12

    move-object v5, v13

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1629
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_3

    .line 1631
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1632
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1633
    .local v2, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v2, v10, v3, v4, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1634
    .end local v2    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_1

    .line 1632
    :cond_1
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_2

    .line 1631
    :cond_2
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_2

    .line 1629
    :cond_3
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1637
    :goto_2
    return-object v0
.end method

.method public createReferenceDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
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

    .line 1729
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1731
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1732
    .local v1, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v8

    .line 1734
    .local v8, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1735
    .local v2, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v2, :cond_0

    .line 1736
    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 1735
    :cond_0
    move-object v9, v2

    .line 1738
    .end local v2    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v9, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, v8

    move-object v5, p3

    move-object v6, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1741
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v2, :cond_2

    .line 1743
    const-class v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1744
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 1746
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v3, v4, :cond_1

    .line 1747
    const/4 v4, 0x0

    .local v4, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    goto :goto_1

    .line 1753
    .end local v4    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v4

    .line 1755
    .restart local v4    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :goto_1
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;

    invoke-direct {v5, p2, v4, v9, v1}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v5

    .line 1758
    .end local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_2
    if-eqz v2, :cond_3

    .line 1760
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1761
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1762
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v8, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyReferenceDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1763
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_2

    .line 1766
    :cond_3
    return-object v2
.end method

.method public createTreeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "nodeType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
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

    .line 1714
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 1716
    .local v0, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 1718
    .local v1, "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 1719
    return-object v1

    .line 1721
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2
.end method

.method protected findContentDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
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

    .line 2328
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2329
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    .line 2330
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 2331
    .local v1, "deserDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2332
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2

    .line 2335
    .end local v1    # "deserDef":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findDefaultDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 7
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

    .line 2069
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 2071
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_OBJECT:Ljava/lang/Class;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_SERIALIZABLE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 2085
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 2088
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 2090
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v4

    .line 2091
    .local v4, "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    invoke-virtual {v4, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 2092
    .local v1, "tps":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-eq v5, v2, :cond_2

    goto :goto_0

    :cond_2
    aget-object v2, v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 2093
    .local v2, "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v4, v3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v3

    .line 2095
    .local v3, "ct":Lcom/fasterxml/jackson/databind/type/CollectionType;
    invoke-virtual {p0, p1, v3, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    return-object v5

    .line 2097
    .end local v1    # "tps":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v2    # "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "ct":Lcom/fasterxml/jackson/databind/type/CollectionType;
    .end local v4    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_MAP_ENTRY:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 2099
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 2100
    .local v1, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 2101
    .local v2, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 2102
    .local v3, "vts":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v3, :cond_5

    .line 2103
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3

    .line 2105
    :cond_5
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 2106
    .local v4, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 2107
    .local v5, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/MapEntryDeserializer;

    invoke-direct {v6, p2, v5, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/MapEntryDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    return-object v6

    .line 2109
    .end local v1    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v2    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "vts":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .end local v4    # "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v5    # "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2110
    .local v1, "clsName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2112
    :cond_7
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2113
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v2, :cond_8

    .line 2114
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2116
    :cond_8
    if-eqz v2, :cond_9

    .line 2117
    return-object v2

    .line 2121
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_9
    const-class v2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-ne v0, v2, :cond_a

    .line 2122
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;-><init>()V

    return-object v2

    .line 2124
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findOptionalStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2125
    .restart local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_b

    .line 2126
    return-object v2

    .line 2128
    :cond_b
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    return-object v3

    .line 2086
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_c
    :goto_2
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;

    return-object v1

    .line 2073
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 2076
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2077
    const-class v2, Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 2078
    .local v2, "lt":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v3, Ljava/util/Map;

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .local v3, "mt":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_4

    .line 2080
    .end local v2    # "lt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "mt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_e
    const/4 v2, 0x0

    move-object v3, v2

    .line 2082
    .restart local v2    # "lt":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v3    # "mt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_4
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    invoke-direct {v4, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v4
.end method

.method protected findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
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

    .line 2292
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2293
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    .line 2294
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 2295
    .local v1, "deserDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2296
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2

    .line 2299
    .end local v1    # "deserDef":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2311
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2312
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    .line 2313
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 2314
    .local v1, "deserDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2315
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    return-object v2

    .line 2318
    .end local v1    # "deserDef":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected findOptionalStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
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

    .line 1826
    sget-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->findDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "containerType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "propertyEntity"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2045
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2046
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 2047
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 2049
    .local v2, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v1, :cond_0

    .line 2050
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3

    return-object v3

    .line 2053
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p1, p3, v2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v3

    .line 2055
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    return-object v4
.end method

.method public findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2012
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2013
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 2015
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 2016
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    return-object v2

    .line 2019
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p1, p3, p2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v2

    .line 2022
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    :try_start_0
    invoke-interface {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2023
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 2024
    .local v3, "e0":Ljava/lang/RuntimeException;
    :goto_0
    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Lcom/fasterxml/jackson/core/JsonParser;

    .line 2025
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 2024
    invoke-static {v4, v5, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object v4

    .line 2026
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v4

    throw v4
.end method

.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 8
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1780
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 1781
    .local v0, "bean":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    .line 1782
    .local v1, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    .line 1783
    .local v2, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v2, p1, v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1787
    .local v3, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    const/4 v4, 0x0

    .line 1788
    .local v4, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 1789
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1790
    if-nez v3, :cond_1

    .line 1791
    return-object v5

    .line 1794
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;

    move-result-object v4

    .line 1798
    :cond_1
    invoke-interface {v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1799
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 1802
    .local v6, "defaultType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1803
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->withDefaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1809
    .end local v6    # "defaultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    :try_start_0
    invoke-interface {v3, p1, p2, v4}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1810
    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    .line 1811
    .local v6, "e0":Ljava/lang/RuntimeException;
    :goto_0
    move-object v7, v5

    check-cast v7, Lcom/fasterxml/jackson/core/JsonParser;

    .line 1812
    invoke-static {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 1811
    invoke-static {v5, v7, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object v5

    .line 1813
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v5

    throw v5
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 211
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    const/4 v1, 0x0

    .line 213
    .local v1, "instantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 214
    .local v2, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v3

    .line 215
    .local v3, "instDef":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 218
    :cond_0
    if-nez v1, :cond_1

    .line 221
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators;->findStdValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 222
    if-nez v1, :cond_1

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 228
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasValueInstantiators()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->valueInstantiators()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 230
    .local v5, "insts":Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
    invoke-interface {v5, v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 232
    if-nez v1, :cond_2

    .line 233
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 235
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 233
    const-string v7, "Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator"

    invoke-virtual {p1, p2, v7, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v5    # "insts":Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
    :cond_2
    goto :goto_0

    .line 239
    :cond_3
    if-eqz v1, :cond_4

    .line 240
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 243
    :cond_4
    return-object v1
.end method

.method public getFactoryConfig()Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    return-object v0
.end method

.method public hasExplicitDeserializerFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1949
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    .line 1954
    :cond_0
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1955
    return v1

    .line 1958
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1959
    .local v0, "clsName":Ljava/lang/String;
    const-string v2, "java."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 1960
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1961
    return v1

    .line 1963
    :cond_2
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1964
    return v1

    .line 1966
    :cond_3
    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1967
    invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1969
    :cond_5
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->hasDeserializerFor(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    if-eq p2, v2, :cond_8

    const-class v2, Ljava/lang/Boolean;

    if-eq p2, v2, :cond_8

    const-class v2, Ljava/util/EnumMap;

    if-eq p2, v2, :cond_8

    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne p2, v2, :cond_6

    goto :goto_2

    .line 1977
    :cond_6
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->hasDeserializerFor(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1978
    return v1

    .line 1986
    :cond_7
    return v3

    .line 1975
    :cond_8
    :goto_2
    return v1

    .line 1980
    :cond_9
    const-string v2, "com.fasterxml."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1981
    const-class v2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_b

    const-class v2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-ne p2, v2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_3
    return v1

    .line 1984
    :cond_c
    sget-object v1, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->hasDeserializerFor(Ljava/lang/Class;)Z

    move-result v1

    return v1
.end method

.method public mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 159
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 160
    .local v0, "next":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_0

    .line 161
    return-object p2

    .line 165
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 166
    .local v1, "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 167
    .local v2, "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    move-object p2, v0

    .line 171
    .end local v0    # "next":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v1    # "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 168
    .restart local v0    # "next":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v1    # "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid abstract type resolution from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": latter is not a subtype of former"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2443
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2444
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v0, :cond_0

    .line 2445
    return-object p3

    .line 2447
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    return-object v1
.end method

.method protected resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2351
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2352
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v0, :cond_0

    .line 2353
    return-object p3

    .line 2359
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2360
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 2361
    .local v1, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v1, :cond_1

    .line 2362
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 2363
    .local v2, "kdDef":Ljava/lang/Object;
    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v3

    .line 2364
    .local v3, "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    if-eqz v3, :cond_1

    .line 2365
    .end local v1    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v1, p3

    check-cast v1, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p3

    .line 2366
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 2371
    .end local v2    # "kdDef":Ljava/lang/Object;
    .end local v3    # "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2372
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 2373
    .local v1, "cdDef":Ljava/lang/Object;
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2374
    .local v2, "cd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_2

    .line 2375
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/JavaType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 2377
    :cond_2
    nop

    .line 2378
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    .line 2377
    invoke-virtual {p0, v3, p3, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3

    .line 2379
    .local v3, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v3, :cond_3

    .line 2380
    invoke-virtual {p3, v3}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 2383
    .end local v1    # "cdDef":Ljava/lang/Object;
    .end local v2    # "cd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v3    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v1

    .line 2385
    .local v1, "valueTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v1, :cond_4

    .line 2386
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 2394
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 2395
    return-object p3
.end method

.method protected resolveType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2458
    invoke-virtual {p0, p1, p4, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "resolver"    # Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 136
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 109
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .line 118
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method protected abstract withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
.end method

.method public final withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 127
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "instantiators"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 145
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method
