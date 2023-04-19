.class public Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
.super Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.source "JacksonAnnotationIntrospector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ANNOTATIONS_TO_INFER_DESER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANNOTATIONS_TO_INFER_SER:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final _java7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected _cfgConstructorPropertiesImpliesCreator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 37
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonFormat;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-class v2, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    check-cast v1, [Ljava/lang/Class;

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->ANNOTATIONS_TO_INFER_SER:[Ljava/lang/Class;

    .line 50
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    aput-object v1, v0, v3

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonView;

    aput-object v1, v0, v4

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonFormat;

    aput-object v1, v0, v5

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    aput-object v1, v0, v6

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    aput-object v1, v0, v7

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    aput-object v1, v0, v8

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    aput-object v1, v0, v9

    const-class v1, Lcom/fasterxml/jackson/annotation/JsonMerge;

    aput-object v1, v0, v10

    check-cast v0, [Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->ANNOTATIONS_TO_INFER_DESER:[Ljava/lang/Class;

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "x":Lcom/fasterxml/jackson/databind/ext/Java7Support;
    :try_start_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->instance()Lcom/fasterxml/jackson/databind/ext/Java7Support;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 69
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 70
    :goto_1
    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_java7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    .line 71
    .end local v0    # "x":Lcom/fasterxml/jackson/databind/ext/Java7Support;
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    .line 82
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_cfgConstructorPropertiesImpliesCreator:Z

    .line 106
    return-void
.end method

.method private _databindException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1582
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method private _databindException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "msg"    # Ljava/lang/String;

    .line 1587
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final _findSortAlpha(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 959
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    .line 962
    .local v0, "order":Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;->alphabetic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 963
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 965
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private _primitiveAndWrapper(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1571
    .local p2, "refinement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->primitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 1574
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1575
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->primitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1577
    :cond_2
    return v1
.end method

.method private _primitiveAndWrapper(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1560
    .local p1, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "refinement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1561
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->primitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1563
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1564
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->primitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1566
    :cond_3
    return v2
.end method

.method private _refinePropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "value"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 764
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 765
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 766
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$1;->$SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion:[I

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->include()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 774
    :pswitch_0
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    return-object v1

    .line 772
    :pswitch_1
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    return-object v1

    .line 770
    :pswitch_2
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    return-object v1

    .line 768
    :pswitch_3
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withValueInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    return-object v1

    .line 779
    :cond_0
    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected _classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1443
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1446
    :cond_0
    return-object p1

    .line 1444
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1450
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "implicit":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 1451
    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method protected _constructNoTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .line 1555
    invoke-static {}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->noTypeInfoBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected _constructStdTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
    .locals 1

    .line 1547
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    return-object v0
.end method

.method protected _constructVirtualProperty(Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 6
    .param p1, "attr"    # Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;
    .param p3, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p4, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 1009
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->required()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 1012
    .local v0, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :goto_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->value()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "attrName":Ljava/lang/String;
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->propName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->propNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_propertyName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 1016
    .local v2, "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1017
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 1020
    :cond_1
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p3, v4, v1, p4}, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 1023
    .local v3, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    nop

    .line 1024
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;->include()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v4

    .line 1023
    invoke-static {p2, v3, v2, v0, v4}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v4

    .line 1026
    .local v4, "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    nop

    .line 1027
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v5

    .line 1026
    invoke-static {v1, v4, v5, p4}, Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;->construct(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/impl/AttributePropertyWriter;

    move-result-object v5

    return-object v5
.end method

.method protected _constructVirtualProperty(Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 9
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;
    .param p3, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 1033
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->required()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 1035
    .local v0, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :goto_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->namespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_propertyName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 1036
    .local v1, "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->type()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1038
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v4

    .line 1039
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p3, v4, v5, v2}, Lcom/fasterxml/jackson/databind/introspect/VirtualAnnotatedMember;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 1041
    .local v3, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    nop

    .line 1042
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->include()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v4

    .line 1041
    invoke-static {p2, v3, v1, v0, v4}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/PropertyMetadata;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v4

    .line 1044
    .local v4, "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;->value()Ljava/lang/Class;

    move-result-object v5

    .line 1046
    .local v5, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v6

    .line 1047
    .local v6, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-nez v6, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    .line 1048
    :cond_1
    invoke-virtual {v6, p2, v5}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->virtualPropertyWriterInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    move-result-object v7

    :goto_1
    nop

    .line 1049
    .local v7, "bpw":Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;
    if-nez v7, :cond_2

    .line 1050
    nop

    .line 1051
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v8

    .line 1050
    invoke-static {v5, v8}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    .line 1055
    :cond_2
    invoke-virtual {v7, p2, p3, v4, v2}, Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;->withConfig(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/VirtualBeanPropertyWriter;

    move-result-object v8

    return-object v8
.end method

.method protected _findConstructorName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1466
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-eqz v0, :cond_0

    .line 1467
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 1468
    .local v0, "p":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v1

    .line 1470
    .local v1, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-eqz v1, :cond_0

    .line 1471
    sget-object v2, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_java7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    if-eqz v2, :cond_0

    .line 1472
    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->findConstructorName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 1473
    .local v2, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v2, :cond_0

    .line 1474
    return-object v2

    .line 1479
    .end local v0    # "p":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v1    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v2    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 8
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 1492
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    .line 1493
    .local v0, "info":Lcom/fasterxml/jackson/annotation/JsonTypeInfo;
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;

    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;

    .line 1495
    .local v1, "resAnn":Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1496
    if-nez v0, :cond_0

    .line 1497
    return-object v2

    .line 1501
    :cond_0
    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;->value()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeResolverBuilderInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .local v3, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    goto :goto_0

    .line 1503
    .end local v3    # "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    :cond_1
    if-nez v0, :cond_2

    .line 1504
    return-object v2

    .line 1507
    :cond_2
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v3, v4, :cond_3

    .line 1508
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructNoTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v2

    return-object v2

    .line 1510
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructStdTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v3

    .line 1513
    .restart local v3    # "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    :goto_0
    const-class v4, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;

    invoke-virtual {p0, p2, v4}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;

    .line 1514
    .local v4, "idResInfo":Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;
    if-nez v4, :cond_4

    goto :goto_1

    .line 1515
    :cond_4
    invoke-interface {v4}, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    move-result-object v2

    :goto_1
    nop

    .line 1516
    .local v2, "idRes":Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    if-eqz v2, :cond_5

    .line 1517
    invoke-interface {v2, p3}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->init(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 1519
    :cond_5
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1523
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->include()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v5

    .line 1524
    .local v5, "inclusion":Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-ne v5, v6, :cond_6

    instance-of v6, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    if-eqz v6, :cond_6

    .line 1525
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .line 1527
    :cond_6
    invoke-interface {v3, v5}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1528
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->property()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1529
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->defaultImpl()Ljava/lang/Class;

    move-result-object v6

    .line 1535
    .local v6, "defaultImpl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$None;

    if-eq v6, v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/Class;->isAnnotation()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1536
    invoke-interface {v3, v6}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1538
    :cond_7
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->visible()Z

    move-result v7

    invoke-interface {v3, v7}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1539
    return-object v3
.end method

.method protected _isIgnorable(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1429
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnore;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnore;

    .line 1430
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonIgnore;
    if-eqz v0, :cond_0

    .line 1431
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnore;->value()Z

    move-result v1

    return v1

    .line 1433
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_java7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    if-eqz v1, :cond_1

    .line 1434
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->findTransient(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1435
    .local v1, "b":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 1436
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 1439
    .end local v1    # "b":Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected _propertyName(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 1455
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0

    .line 1458
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1461
    :cond_1
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    return-object v0

    .line 1459
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    return-object v0
.end method

.method public findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V
    .locals 8
    .param p2, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .line 971
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;

    .line 972
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonAppend;
    if-nez v0, :cond_0

    .line 973
    return-void

    .line 975
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;->prepend()Z

    move-result v1

    .line 976
    .local v1, "prepend":Z
    const/4 v2, 0x0

    .line 979
    .local v2, "propType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;->attrs()[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;

    move-result-object v3

    .line 980
    .local v3, "attrs":[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v3

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 981
    if-nez v2, :cond_1

    .line 982
    const-class v6, Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 984
    :cond_1
    aget-object v6, v3, v4

    invoke-virtual {p0, v6, p1, p2, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructVirtualProperty(Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v6

    .line 986
    .local v6, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v1, :cond_2

    .line 987
    invoke-interface {p3, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 989
    :cond_2
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    .end local v6    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 994
    .end local v4    # "i":I
    .end local v5    # "len":I
    :cond_3
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonAppend;->props()[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;

    move-result-object v4

    .line 995
    .local v4, "props":[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v4

    .local v6, "len":I
    :goto_2
    if-ge v5, v6, :cond_5

    .line 996
    aget-object v7, v4, v5

    invoke-virtual {p0, v7, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructVirtualProperty(Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v7

    .line 998
    .local v7, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v1, :cond_4

    .line 999
    invoke-interface {p3, v5, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 1001
    :cond_4
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v7    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1004
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_5
    return-void
.end method

.method public findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 364
    .local p2, "checker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    .line 365
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonAutoDetect;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findClassDescription(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 350
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonClassDescription;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonClassDescription;

    .line 351
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonClassDescription;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonClassDescription;->value()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1170
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 1171
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 1173
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentUsing()Ljava/lang/Class;

    move-result-object v1

    .line 1174
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonDeserializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 1175
    return-object v1

    .line 1178
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonDeserializer;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 724
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 725
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 727
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentUsing()Ljava/lang/Class;

    move-result-object v1

    .line 728
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 729
    return-object v1

    .line 732
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 3
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;"
        }
    .end annotation

    .line 1400
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    .line 1401
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonCreator;
    if-eqz v0, :cond_0

    .line 1402
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonCreator;->mode()Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v1

    return-object v1

    .line 1404
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_cfgConstructorPropertiesImpliesCreator:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1405
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1407
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v1, :cond_1

    .line 1408
    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_java7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    if-eqz v1, :cond_1

    .line 1409
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1410
    .local v1, "b":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1413
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    return-object v2

    .line 1418
    .end local v1    # "b":Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public findCreatorBinding(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1394
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    .line 1395
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonCreator;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonCreator;->mode()Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 272
    .local p1, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonEnumDefaultValue;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findFirstAnnotatedEnumValue(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 1191
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 1192
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentConverter()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter$None;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseContentType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1262
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1184
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 1185
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->converter()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter$None;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseKeyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1274
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1268
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1143
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 1144
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 1146
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->using()Ljava/lang/Class;

    move-result-object v1

    .line 1147
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonDeserializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 1148
    return-object v1

    .line 1151
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonDeserializer;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findEnumAliases(Ljava/lang/Class;[Ljava/lang/Enum;[[Ljava/lang/String;)V
    .locals 10
    .param p3, "aliasList"    # [[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum<",
            "*>;[[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 242
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 243
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    const-class v4, Lcom/fasterxml/jackson/annotation/JsonAlias;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/annotation/JsonAlias;

    .line 245
    .local v4, "aliasAnnotation":Lcom/fasterxml/jackson/annotation/JsonAlias;
    if-eqz v4, :cond_1

    .line 246
    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/JsonAlias;->value()[Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "aliases":[Ljava/lang/String;
    array-length v6, v5

    if-eqz v6, :cond_1

    .line 248
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v8, p2

    .local v8, "end":I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 251
    aget-object v9, p2, v7

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 252
    aput-object v5, p3, v7

    .line 250
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 242
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "aliasAnnotation":Lcom/fasterxml/jackson/annotation/JsonAlias;
    .end local v5    # "aliases":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "end":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_2
    return-void
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 187
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 188
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 189
    .local v1, "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "n":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 192
    return-object v2

    .line 198
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end local v2    # "n":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 200
    :cond_0
    nop

    .line 201
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p3, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Enum<",
            "*>;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 206
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    const/4 v0, 0x0

    .line 207
    .local v0, "expl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 208
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    goto :goto_1

    .line 211
    :cond_0
    const-class v5, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 212
    .local v5, "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-nez v5, :cond_1

    .line 213
    goto :goto_1

    .line 215
    :cond_1
    invoke-interface {v5}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "n":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 217
    goto :goto_1

    .line 219
    :cond_2
    if-nez v0, :cond_3

    .line 220
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v0, v7

    .line 222
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end local v6    # "n":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_4
    if-eqz v0, :cond_6

    .line 226
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p2

    .local v2, "end":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 227
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "defName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    .local v4, "explValue":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 230
    aput-object v4, p3, v1

    .line 226
    .end local v3    # "defName":Ljava/lang/String;
    .end local v4    # "explValue":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 234
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_6
    return-object p3
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 330
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFilter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonFilter;

    .line 331
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonFilter;
    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonFilter;->value()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    return-object v1

    .line 338
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 453
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    .line 456
    .local v0, "f":Lcom/fasterxml/jackson/annotation/JsonFormat;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->from(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;
    .locals 2
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 376
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findConstructorName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 377
    .local v0, "n":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 4
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 489
    const-class v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    .line 490
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JacksonInject;
    if-nez v0, :cond_0

    .line 491
    const/4 v1, 0x0

    return-object v1

    .line 494
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->from(Lcom/fasterxml/jackson/annotation/JacksonInject;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v1

    .line 495
    .local v1, "v":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->hasId()Z

    move-result v2

    if-nez v2, :cond_3

    .line 498
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez v2, :cond_1

    .line 499
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "id":Ljava/lang/Object;
    goto :goto_0

    .line 501
    .end local v2    # "id":Ljava/lang/Object;
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 502
    .local v2, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 503
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .local v3, "id":Ljava/lang/Object;
    goto :goto_0

    .line 505
    .end local v3    # "id":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 508
    .local v2, "id":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->withId(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v1

    .line 510
    .end local v2    # "id":Ljava/lang/Object;
    :cond_3
    return-object v1
.end method

.method public findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 2
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 516
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v0

    .line 517
    .local v0, "v":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->getId()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1157
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 1158
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-eqz v0, :cond_0

    .line 1159
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->keyUsing()Ljava/lang/Class;

    move-result-object v1

    .line 1160
    .local v1, "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/KeyDeserializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    if-eq v1, v2, :cond_0

    .line 1161
    return-object v1

    .line 1164
    .end local v1    # "deserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/KeyDeserializer;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 710
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 711
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 713
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyUsing()Ljava/lang/Class;

    move-result-object v1

    .line 714
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 715
    return-object v1

    .line 718
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findMergeInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1355
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonMerge;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonMerge;

    .line 1356
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonMerge;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonMerge;->value()Lcom/fasterxml/jackson/annotation/OptBoolean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/OptBoolean;->asBoolean()Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 5
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1316
    const/4 v0, 0x0

    .line 1317
    .local v0, "useDefault":Z
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonSetter;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonSetter;

    .line 1318
    .local v1, "js":Lcom/fasterxml/jackson/annotation/JsonSetter;
    if-eqz v1, :cond_1

    .line 1319
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonSetter;->value()Ljava/lang/String;

    move-result-object v2

    .line 1321
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1322
    const/4 v0, 0x1

    goto :goto_0

    .line 1324
    :cond_0
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    return-object v3

    .line 1327
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    :goto_0
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 1328
    .local v2, "pann":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v2, :cond_3

    .line 1330
    invoke-interface {v2}, Lcom/fasterxml/jackson/annotation/JsonProperty;->namespace()Ljava/lang/String;

    move-result-object v3

    .line 1331
    .local v3, "ns":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1332
    const/4 v3, 0x0

    .line 1334
    :cond_2
    invoke-interface {v2}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    return-object v4

    .line 1336
    .end local v3    # "ns":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_5

    sget-object v3, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->ANNOTATIONS_TO_INFER_DESER:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasOneOf(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 1339
    :cond_4
    const/4 v3, 0x0

    return-object v3

    .line 1337
    :cond_5
    :goto_1
    sget-object v3, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v3
.end method

.method public findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 5
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1067
    const/4 v0, 0x0

    .line 1068
    .local v0, "useDefault":Z
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonGetter;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonGetter;

    .line 1069
    .local v1, "jg":Lcom/fasterxml/jackson/annotation/JsonGetter;
    if-eqz v1, :cond_1

    .line 1070
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonGetter;->value()Ljava/lang/String;

    move-result-object v2

    .line 1072
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1073
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    return-object v3

    .line 1075
    :cond_0
    const/4 v0, 0x1

    .line 1077
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const-class v2, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 1078
    .local v2, "pann":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v2, :cond_3

    .line 1080
    invoke-interface {v2}, Lcom/fasterxml/jackson/annotation/JsonProperty;->namespace()Ljava/lang/String;

    move-result-object v3

    .line 1081
    .local v3, "ns":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1082
    const/4 v3, 0x0

    .line 1084
    :cond_2
    invoke-interface {v2}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    return-object v4

    .line 1086
    .end local v3    # "ns":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_5

    sget-object v3, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->ANNOTATIONS_TO_INFER_SER:[Ljava/lang/Class;

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasOneOf(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1089
    :cond_4
    const/4 v3, 0x0

    return-object v3

    .line 1087
    :cond_5
    :goto_0
    sget-object v3, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v3
.end method

.method public findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 344
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;

    .line 345
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonNaming;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;->value()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 738
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 739
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 741
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->nullsUsing()Ljava/lang/Class;

    move-result-object v1

    .line 742
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 743
    return-object v1

    .line 746
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 6
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 655
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;

    .line 656
    .local v0, "info":Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->generator()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$None;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->property()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 661
    .local v1, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->scope()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->generator()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->resolver()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v2

    .line 657
    .end local v1    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "objectIdInfo"    # Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .line 666
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;

    .line 667
    .local v0, "ref":Lcom/fasterxml/jackson/annotation/JsonIdentityReference;
    if-nez v0, :cond_0

    .line 668
    return-object p2

    .line 670
    :cond_0
    if-nez p2, :cond_1

    .line 671
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->empty()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object p2

    .line 673
    :cond_1
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;->alwaysAsId()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v1

    return-object v1
.end method

.method public findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1294
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 1295
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->builder()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 1301
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    .line 1302
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;-><init>(Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;)V

    :goto_0
    return-object v1
.end method

.method public findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 2
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 415
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 416
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->access()Lcom/fasterxml/jackson/annotation/JsonProperty$Access;

    move-result-object v1

    return-object v1

    .line 419
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findPropertyAliases(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .locals 6
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation

    .line 382
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAlias;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonAlias;

    .line 383
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonAlias;
    if-nez v0, :cond_0

    .line 384
    const/4 v1, 0x0

    return-object v1

    .line 386
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonAlias;->value()[Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "strs":[Ljava/lang/String;
    array-length v2, v1

    .line 388
    .local v2, "len":I
    if-nez v2, :cond_1

    .line 389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 391
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 393
    aget-object v5, v1, v4

    invoke-static {v5}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    .end local v4    # "i":I
    :cond_2
    return-object v3
.end method

.method public findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 3
    .param p2, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "containerType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 612
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0

    .line 613
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must call method with a container or reference type (got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 4
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 442
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 443
    .local v0, "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 444
    return-object v1

    .line 446
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->defaultValue()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method public findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 2
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 424
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;

    .line 425
    .local v0, "desc":Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonPropertyDescription;->value()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 2
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation

    .line 304
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 305
    .local v0, "v":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v1

    return-object v1

    .line 308
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->from(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v1

    return-object v1
.end method

.method public findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 4
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 752
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    .line 753
    .local v0, "inc":Lcom/fasterxml/jackson/annotation/JsonInclude;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->from(Lcom/fasterxml/jackson/annotation/JsonInclude;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    .line 756
    .local v1, "value":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :goto_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v2, v3, :cond_1

    .line 757
    invoke-direct {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_refinePropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    .line 759
    :cond_1
    return-object v1
.end method

.method public findPropertyInclusionByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .locals 2
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;"
        }
    .end annotation

    .line 321
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;

    .line 322
    .local v0, "v":Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;
    if-nez v0, :cond_0

    .line 323
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->all()Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v1

    return-object v1

    .line 325
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->from(Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v1

    return-object v1
.end method

.method public findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;
    .locals 3
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 430
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 431
    .local v0, "prop":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->index()I

    move-result v1

    .line 433
    .local v1, "ix":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 437
    .end local v1    # "ix":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 599
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0

    .line 600
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 3
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 462
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    .line 463
    .local v0, "ref1":Lcom/fasterxml/jackson/annotation/JsonManagedReference;
    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonManagedReference;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->managed(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v1

    return-object v1

    .line 466
    :cond_0
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    .line 467
    .local v1, "ref2":Lcom/fasterxml/jackson/annotation/JsonBackReference;
    if-eqz v1, :cond_1

    .line 468
    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonBackReference;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->back(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v2

    return-object v2

    .line 470
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findRenameByField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p2, "f"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .param p3, "implName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ")",
            "Lcom/fasterxml/jackson/databind/PropertyName;"
        }
    .end annotation

    .line 575
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 284
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonRootName;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonRootName;

    .line 285
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonRootName;
    if-nez v0, :cond_0

    .line 286
    const/4 v1, 0x0

    return-object v1

    .line 288
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonRootName;->namespace()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "ns":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    const/4 v1, 0x0

    .line 292
    :cond_1
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonRootName;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    return-object v2
.end method

.method public findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 797
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 798
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentConverter()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter$None;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 938
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 791
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 792
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->converter()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/util/Converter$None;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 932
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 949
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    .line 950
    .local v0, "order":Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;->value()[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 955
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findSortAlpha(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 926
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 785
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 786
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->typing()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 4
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 685
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 686
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    if-eqz v0, :cond_0

    .line 688
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->using()Ljava/lang/Class;

    move-result-object v1

    .line 689
    .local v1, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    const-class v2, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v1, v2, :cond_0

    .line 690
    return-object v1

    .line 698
    .end local v1    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer;>;"
    :cond_0
    const-class v1, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    .line 699
    .local v1, "annRaw":Lcom/fasterxml/jackson/annotation/JsonRawValue;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/fasterxml/jackson/annotation/JsonRawValue;->value()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 702
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(Ljava/lang/Class;)V

    return-object v3

    .line 704
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public findSetterInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1350
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->from(Lcom/fasterxml/jackson/annotation/JsonSetter;)Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v0

    return-object v0
.end method

.method public findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .locals 13
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 621
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonSubTypes;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonSubTypes;

    .line 622
    .local v0, "t":Lcom/fasterxml/jackson/annotation/JsonSubTypes;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 623
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonSubTypes;->value()[Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;

    move-result-object v1

    .line 624
    .local v1, "types":[Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .line 626
    .local v6, "type":Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
    new-instance v7, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {v6}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->value()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v6}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->name()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-interface {v6}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->names()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 629
    .local v10, "name":Ljava/lang/String;
    new-instance v11, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {v6}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->value()Ljava/lang/Class;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    .end local v10    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 625
    .end local v6    # "type":Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 632
    :cond_2
    return-object v2
.end method

.method public findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 638
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeName;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeName;

    .line 639
    .local v0, "tn":Lcom/fasterxml/jackson/annotation/JsonTypeName;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeName;->value()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 588
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 4
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 476
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    .line 479
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonUnwrapped;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->enabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->prefix()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "prefix":Ljava/lang/String;
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->suffix()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "suffix":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v3

    return-object v3

    .line 480
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "suffix":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 1286
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;

    .line 1288
    .local v0, "ann":Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;->value()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 523
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonView;

    .line 524
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonView;->value()[Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public hasAnyGetter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1112
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnyGetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonAnyGetter;

    .line 1113
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonAnyGetter;
    if-nez v0, :cond_0

    .line 1114
    const/4 v1, 0x0

    return-object v1

    .line 1116
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonAnyGetter;->enabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1123
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnyGetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAnySetter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1344
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnySetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonAnySetter;

    .line 1345
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonAnySetter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonAnySetter;->enabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1362
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnySetter;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAsKey(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1094
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonKey;

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonKey;

    .line 1095
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonKey;
    if-nez v0, :cond_0

    .line 1096
    const/4 v1, 0x0

    return-object v1

    .line 1098
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonKey;->value()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public hasAsValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 1103
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonValue;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonValue;

    .line 1104
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonValue;
    if-nez v0, :cond_0

    .line 1105
    const/4 v1, 0x0

    return-object v1

    .line 1107
    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonValue;->value()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1129
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonValue;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonValue;

    .line 1131
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonValue;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonValue;->value()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 4
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1372
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    .line 1373
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonCreator;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1374
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonCreator;->mode()Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1378
    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_cfgConstructorPropertiesImpliesCreator:Z

    if-eqz v2, :cond_2

    .line 1379
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v2, :cond_2

    .line 1380
    sget-object v2, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_java7Helper:Lcom/fasterxml/jackson/databind/ext/Java7Support;

    if-eqz v2, :cond_2

    .line 1381
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/ext/Java7Support;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;

    move-result-object v2

    .line 1382
    .local v2, "b":Ljava/lang/Boolean;
    if-eqz v2, :cond_2

    .line 1383
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1388
    .end local v2    # "b":Ljava/lang/Boolean;
    :cond_2
    return v1
.end method

.method public hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 400
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 406
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    .line 407
    .local v0, "ann":Lcom/fasterxml/jackson/annotation/JsonProperty;
    if-eqz v0, :cond_0

    .line 408
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->required()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 410
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 3
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .line 158
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 159
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 160
    .local v1, "b":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 161
    const-class v2, Lcom/fasterxml/jackson/annotation/JacksonAnnotationsInside;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v2, v0, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 297
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;

    .line 298
    .local v0, "ignore":Lcom/fasterxml/jackson/annotation/JsonIgnoreType;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;->value()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 644
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeId;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_annotationsInside:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 117
    :cond_0
    return-object p0
.end method

.method public refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 15
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1205
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    move-object v1, p0

    move-object/from16 v2, p3

    .line 1206
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v3

    .line 1208
    .local v3, "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    move-object/from16 v4, p2

    invoke-virtual {p0, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    .line 1211
    .local v5, "jsonDeser":Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
    const/4 v0, 0x0

    if-nez v5, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->as()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 1212
    .local v6, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-eqz v6, :cond_1

    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1213
    invoke-direct {p0, v2, v6}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_primitiveAndWrapper(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1215
    :try_start_0
    invoke-virtual {v3, v2, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v12

    .line 1220
    goto :goto_1

    .line 1216
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1217
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v10

    .line 1219
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    .line 1218
    const-string v7, "Failed to narrow type %s with annotation (value %s), from \'%s\': %s"

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1217
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 1225
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1226
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 1227
    .local v12, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v5, :cond_2

    move-object v13, v0

    goto :goto_2

    :cond_2
    invoke-interface {v5}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->keyAs()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v13

    .line 1228
    .local v13, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v13, :cond_3

    .line 1229
    invoke-direct {p0, v12, v13}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_primitiveAndWrapper(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 1231
    :try_start_1
    invoke-virtual {v3, v12, v13}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v14

    move-object v12, v14

    .line 1232
    move-object v14, v2

    check-cast v14, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v14

    .line 1237
    goto :goto_3

    .line 1233
    :catch_1
    move-exception v0

    .line 1234
    .restart local v0    # "iae":Ljava/lang/IllegalArgumentException;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v10

    .line 1236
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    .line 1235
    const-string v7, "Failed to narrow key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1234
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 1240
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v12    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v13    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 1241
    .local v12, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v12, :cond_5

    .line 1243
    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v5}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentAs()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_4
    move-object v13, v0

    .line 1244
    .local v13, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_5

    .line 1245
    invoke-direct {p0, v12, v13}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_primitiveAndWrapper(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1247
    :try_start_2
    invoke-virtual {v3, v12, v13}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    move-object v12, v0

    .line 1248
    invoke-virtual {v2, v12}, Lcom/fasterxml/jackson/databind/JavaType;->withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    .line 1253
    goto :goto_5

    .line 1249
    :catch_2
    move-exception v0

    .line 1250
    .restart local v0    # "iae":Ljava/lang/IllegalArgumentException;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v10

    .line 1252
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    .line 1251
    const-string v7, "Failed to narrow value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1250
    invoke-direct {p0, v0, v7}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 1256
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v13    # "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_5
    return-object v2
.end method

.method public refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 17
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 812
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 813
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v3

    .line 815
    .local v3, "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    .line 819
    .local v5, "jsonSer":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    const/4 v0, 0x0

    if-nez v5, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->as()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    .line 820
    .local v6, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_5

    .line 821
    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 824
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_2

    .line 826
    :cond_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    .line 830
    .local v12, "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v6, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 831
    invoke-virtual {v3, v2, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    move-object v2, v13

    goto :goto_1

    .line 832
    :cond_2
    invoke-virtual {v12, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 833
    invoke-virtual {v3, v2, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    move-object v2, v13

    goto :goto_1

    .line 834
    :cond_3
    invoke-direct {v1, v12, v6}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_primitiveAndWrapper(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 836
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    move-object v2, v13

    .line 846
    :goto_1
    goto :goto_2

    .line 838
    :cond_4
    const-string v0, "Cannot refine serialization type %s into %s; types not related"

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v2, v13, v11

    .line 840
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    .line 839
    invoke-static {v0, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .end local v5    # "jsonSer":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .end local v6    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .end local p2    # "a":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .end local p3    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .restart local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v3    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .restart local v5    # "jsonSer":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .restart local v6    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .restart local p2    # "a":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .restart local p3    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :catch_0
    move-exception v0

    .line 843
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v11

    .line 845
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 844
    const-string v7, "Failed to widen type %s with annotation (value %s), from \'%s\': %s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 843
    invoke-direct {v1, v0, v7}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 852
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v12    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 853
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 854
    .local v12, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v5, :cond_6

    move-object v13, v0

    goto :goto_3

    :cond_6
    invoke-interface {v5}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyAs()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v13

    .line 855
    .local v13, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v13, :cond_b

    .line 856
    invoke-virtual {v12, v13}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 857
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    goto :goto_5

    .line 859
    :cond_7
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v14

    .line 864
    .local v14, "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 865
    invoke-virtual {v3, v12, v13}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    move-object v12, v15

    goto :goto_4

    .line 866
    :cond_8
    invoke-virtual {v14, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 867
    invoke-virtual {v3, v12, v13}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    move-object v12, v15

    goto :goto_4

    .line 868
    :cond_9
    invoke-direct {v1, v14, v13}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_primitiveAndWrapper(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 870
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v15

    .line 880
    :goto_4
    nop

    .line 882
    .end local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    move-object v14, v2

    check-cast v14, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object v2

    goto :goto_6

    .line 872
    .restart local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    :try_start_2
    const-string v0, "Cannot refine serialization key type %s into %s; types not related"

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v12, v15, v11

    .line 874
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 873
    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .end local v5    # "jsonSer":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .end local v6    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v13    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .end local p2    # "a":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .end local p3    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 876
    .restart local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v3    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .restart local v5    # "jsonSer":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .restart local v6    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v13    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .restart local p2    # "a":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .restart local p3    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :catch_1
    move-exception v0

    .line 877
    .restart local v0    # "iae":Ljava/lang/IllegalArgumentException;
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v11

    .line 879
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 878
    const-string v7, "Failed to widen key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 877
    invoke-direct {v1, v0, v7}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 886
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v12    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v13    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    :goto_6
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 887
    .local v12, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v12, :cond_11

    .line 889
    if-nez v5, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {v5}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentAs()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_classIfExplicit(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :goto_7
    move-object v13, v0

    .line 890
    .local v13, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_11

    .line 891
    invoke-virtual {v12, v13}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 892
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    move-object v12, v0

    .end local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_9

    .line 897
    .end local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_d
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v14

    .line 899
    .restart local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 900
    invoke-virtual {v3, v12, v13}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .end local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_8

    .line 901
    .end local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_e
    invoke-virtual {v14, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 902
    invoke-virtual {v3, v12, v13}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .end local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_8

    .line 903
    .end local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_f
    invoke-direct {v1, v14, v13}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_primitiveAndWrapper(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 905
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 915
    .end local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_8
    move-object v12, v0

    .line 917
    .end local v0    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_9
    invoke-virtual {v2, v12}, Lcom/fasterxml/jackson/databind/JavaType;->withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_a

    .line 907
    .restart local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    :try_start_4
    const-string v0, "Cannot refine serialization content type %s into %s; types not related"

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v12, v15, v11

    .line 909
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    .line 908
    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .end local v5    # "jsonSer":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .end local v6    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v13    # "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .end local p2    # "a":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .end local p3    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 911
    .restart local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v3    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .restart local v5    # "jsonSer":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
    .restart local v6    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v13    # "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .restart local p2    # "a":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .restart local p3    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    :catch_2
    move-exception v0

    .line 912
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v11

    .line 914
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 913
    const-string v7, "Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 912
    invoke-direct {v1, v0, v7}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_databindException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 920
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v13    # "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    :goto_a
    return-object v2
.end method

.method public resolveSetterConflict(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4
    .param p2, "setter1"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "setter2"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .line 545
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 546
    .local v1, "cls1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    .line 550
    .local v0, "cls2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 551
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    return-object p2

    .line 555
    :cond_0
    return-object v3

    .line 556
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 557
    return-object p3

    .line 560
    :cond_2
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_3

    .line 561
    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_4

    .line 562
    return-object p2

    .line 564
    :cond_3
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_4

    .line 565
    return-object p3

    .line 568
    :cond_4
    return-object v3
.end method

.method public setConstructorPropertiesImpliesCreator(Z)Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
    .locals 0
    .param p1, "b"    # Z

    .line 138
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_cfgConstructorPropertiesImpliesCreator:Z

    .line 139
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .line 110
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
