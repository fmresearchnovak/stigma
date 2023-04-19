.class public Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
.super Ljava/lang/Object;
.source "CreatorCollector.java"


# static fields
.field protected static final C_ARRAY_DELEGATE:I = 0xa

.field protected static final C_BIG_DECIMAL:I = 0x6

.field protected static final C_BIG_INTEGER:I = 0x4

.field protected static final C_BOOLEAN:I = 0x7

.field protected static final C_DEFAULT:I = 0x0

.field protected static final C_DELEGATE:I = 0x8

.field protected static final C_DOUBLE:I = 0x5

.field protected static final C_INT:I = 0x2

.field protected static final C_LONG:I = 0x3

.field protected static final C_PROPS:I = 0x9

.field protected static final C_STRING:I = 0x1

.field protected static final TYPE_DESCS:[Ljava/lang/String;


# instance fields
.field protected _arrayDelegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected final _canFixAccess:Z

.field protected final _creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected _explicitCreators:I

.field protected final _forceAccess:Z

.field protected _hasNonDefaultCreator:Z

.field protected _propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    const-string v0, "default"

    const-string v1, "from-String"

    const-string v2, "from-int"

    const-string v3, "from-long"

    const-string v4, "from-big-integer"

    const-string v5, "from-double"

    const-string v6, "from-big-decimal"

    const-string v7, "from-boolean"

    const-string v8, "delegate"

    const-string v9, "property-based"

    const-string v10, "array-delegate"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->TYPE_DESCS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V
    .locals 1
    .param p1, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;)V"
        }
    .end annotation

    .line 80
    .local p2, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    .line 65
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    .line 81
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 82
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_canFixAccess:Z

    .line 83
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 84
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_forceAccess:Z

    .line 85
    return-void
.end method

.method private _computeDelegateType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p3, "delegateArgs"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 244
    .local v0, "ix":I
    if-eqz p3, :cond_2

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p3

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 246
    aget-object v3, p3, v1

    if-nez v3, :cond_1

    .line 247
    move v0, v1

    .line 248
    goto :goto_1

    .line 245
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 257
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 258
    .local v2, "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 259
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v3, :cond_4

    .line 260
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v4

    .line 263
    .local v4, "delegate":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v5

    .line 264
    .local v5, "deserDef":Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 265
    invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 266
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 267
    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_2

    .line 269
    :cond_3
    invoke-virtual {v3, v1, v4, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 273
    .end local v4    # "delegate":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v5    # "deserDef":Ljava/lang/Object;
    :cond_4
    :goto_2
    return-object v2

    .line 240
    .end local v0    # "ix":I
    .end local v1    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v2    # "baseType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private _fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 277
    .local p1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;, "TT;"
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_canFixAccess:Z

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Member;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_forceAccess:Z

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 281
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected _isEnumValueOf(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Z
    .locals 2
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 378
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isEnumType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "valueOf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0
.end method

.method protected _reportDuplicateCreator(IZLcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 4
    .param p1, "typeIndex"    # I
    .param p2, "explicit"    # Z
    .param p3, "oldOne"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p4, "newOne"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->TYPE_DESCS:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-eqz p2, :cond_0

    const-string v2, "explicitly marked"

    goto :goto_0

    :cond_0
    const-string v2, "implicitly discovered"

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const-string v2, "Conflicting %s creators: already had %s creator %s, encountered another: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addBigDecimalCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .line 154
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    .line 155
    return-void
.end method

.method public addBigIntegerCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .line 146
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    .line 147
    return-void
.end method

.method public addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .line 158
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    .line 159
    return-void
.end method

.method public addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z
    .param p3, "injectables"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p4, "delegateeIndex"    # I

    .line 165
    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_arrayDelegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    goto :goto_0

    .line 170
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 174
    :cond_1
    :goto_0
    return-void
.end method

.method public addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .line 150
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    .line 151
    return-void
.end method

.method public addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .line 138
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    .line 139
    return-void
.end method

.method public addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .line 142
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    .line 143
    return-void
.end method

.method public addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 9
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z
    .param p3, "properties"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 179
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    array-length v0, p3

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v0, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 184
    aget-object v4, p3, v2

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, p3, v2

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 188
    goto :goto_1

    .line 190
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 191
    .local v5, "old":Ljava/lang/Integer;
    if-nez v5, :cond_1

    .line 183
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "old":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "old":Ljava/lang/Integer;
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    aput-object v5, v7, v1

    const/4 v1, 0x2

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x3

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 192
    const-string v1, "Duplicate creator property \"%s\" (index %s vs %d) for type %s "

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 198
    .end local v0    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "old":Ljava/lang/Integer;
    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 200
    :cond_3
    return-void
.end method

.method public addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V
    .locals 1
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "explicit"    # Z

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z

    .line 135
    return-void
.end method

.method public constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 14
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 91
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, p1, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_computeDelegateType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 93
    .local v1, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/16 v11, 0xa

    aget-object v3, v3, v11

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_arrayDelegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, p1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_computeDelegateType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 95
    .local v3, "arrayDelegateType":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 97
    .local v12, "type":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;

    invoke-direct {v4, v0, v12}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)V

    move-object v13, v4

    .line 98
    .local v13, "inst":Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v5, 0x0

    aget-object v5, v4, v5

    aget-object v6, v4, v2

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_delegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/16 v2, 0x9

    aget-object v9, v4, v2

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_propertyBasedArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-object v4, v13

    move-object v7, v1

    invoke-virtual/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromObjectSettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 101
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v2, v2, v11

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_arrayDelegateArgs:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v13, v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromArraySettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 103
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 104
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 105
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 106
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBigIntegerCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 107
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x5

    aget-object v2, v2, v4

    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 108
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x6

    aget-object v2, v2, v4

    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBigDecimalCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 109
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v4, 0x7

    aget-object v2, v2, v4

    invoke-virtual {v13, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->configureFromBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 110
    return-object v13
.end method

.method public hasDefaultCreator()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasDelegatingCreator()Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPropertyBasedCreator()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 3
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 130
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 131
    return-void
.end method

.method protected verifyNonDup(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;IZ)Z
    .locals 9
    .param p1, "newOne"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "typeIndex"    # I
    .param p3, "explicit"    # Z

    .line 289
    const/4 v0, 0x1

    shl-int v1, v0, p2

    .line 290
    .local v1, "mask":I
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_hasNonDefaultCreator:Z

    .line 291
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aget-object v2, v2, p2

    .line 293
    .local v2, "oldOne":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-eqz v2, :cond_8

    .line 295
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    and-int/2addr v3, v1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 297
    if-nez p3, :cond_0

    .line 298
    return v4

    .line 301
    :cond_0
    const/4 v3, 0x1

    .local v3, "verify":Z
    goto :goto_0

    .line 304
    .end local v3    # "verify":Z
    :cond_1
    xor-int/lit8 v3, p3, 0x1

    .line 311
    .restart local v3    # "verify":Z
    :goto_0
    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_8

    .line 313
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v5

    .line 314
    .local v5, "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v6

    .line 316
    .local v6, "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v5, v6, :cond_4

    .line 320
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_isEnumValueOf(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 321
    return v4

    .line 323
    :cond_2
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_isEnumValueOf(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 326
    :cond_3
    invoke-virtual {p0, p2, p3, v2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_reportDuplicateCreator(IZLcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    goto :goto_1

    .line 330
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 332
    return v4

    .line 333
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    .line 341
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eq v7, v8, :cond_7

    .line 343
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 344
    return v4

    .line 350
    :cond_7
    invoke-virtual {p0, p2, p3, v2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_reportDuplicateCreator(IZLcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 354
    .end local v3    # "verify":Z
    .end local v5    # "oldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "newType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    .line 355
    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_explicitCreators:I

    .line 357
    :cond_9
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_creators:[Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->_fixAccess(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    aput-object v4, v3, p2

    .line 358
    return v0
.end method
