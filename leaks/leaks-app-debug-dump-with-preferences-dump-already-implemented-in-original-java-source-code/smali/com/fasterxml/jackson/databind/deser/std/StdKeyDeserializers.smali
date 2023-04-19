.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;
.super Ljava/lang/Object;
.source "StdKeyDeserializers.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _constructCreatorKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 111
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_1

    .line 112
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 113
    .local v0, "rawCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 116
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v1

    .line 118
    .end local v0    # "rawCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 122
    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;-><init>(Ljava/lang/reflect/Method;)V

    return-object v1
.end method

.method private static _findExplicitStringFactoryMethod(Ljava/util/List;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;",
            ">;>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 147
    .local p0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;>;>;"
    const/4 v0, 0x0

    .line 148
    .local v0, "match":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;

    .line 150
    .local v2, "entry":Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;, "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;>;"
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->metadata:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 151
    if-nez v0, :cond_0

    .line 152
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    move-object v0, v3

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    goto :goto_1

    .line 156
    :cond_0
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 157
    .local v1, "rawKeyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple suitable annotated Creator factory methods to be used as the Key deserializer for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    .end local v1    # "rawKeyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "entry":Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;, "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;>;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 163
    :cond_2
    return-object v0
.end method

.method private static _findStringConstructor(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;
    .locals 5
    .param p0, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getConstructorsWithMode()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;

    .line 134
    .local v1, "entry":Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;, "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;>;"
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 135
    .local v2, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 136
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 137
    return-object v1

    .line 139
    .end local v1    # "entry":Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;, "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;>;"
    .end local v2    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;"
        }
    .end annotation

    .line 50
    .local p2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .param p0, "enumResolver"    # Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 39
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 1
    .param p0, "enumResolver"    # Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .param p1, "factory"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 44
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method

.method public static findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 5
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 70
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_findStringConstructor(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;

    move-result-object v1

    .line 72
    .local v1, "ctorInfo":Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;, "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;>;"
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->metadata:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-static {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_constructCreatorKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    return-object v2

    .line 77
    :cond_0
    nop

    .line 78
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethodsWithMode()Ljava/util/List;

    move-result-object v2

    .line 83
    .local v2, "factoryCandidates":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;>;>;"
    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 90
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_findExplicitStringFactoryMethod(Ljava/util/List;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v3

    .line 91
    .local v3, "explicitFactory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v3, :cond_1

    .line 92
    invoke-static {p0, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_constructCreatorKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v4

    return-object v4

    .line 95
    :cond_1
    if-eqz v1, :cond_2

    .line 96
    iget-object v4, v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-static {p0, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_constructCreatorKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v4

    return-object v4

    .line 100
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 103
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;

    iget-object v4, v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-static {p0, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->_constructCreatorKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v4

    return-object v4

    .line 105
    :cond_3
    const/4 v4, 0x0

    return-object v4
.end method

.method static synthetic lambda$findStringBasedKeyDeserializer$0(Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;)Z
    .locals 4
    .param p0, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;

    .line 84
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 85
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->metadata:Ljava/lang/Object;

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 84
    :cond_1
    return v1
.end method


# virtual methods
.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 178
    .local v0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 181
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    move-result-object v1

    return-object v1
.end method
