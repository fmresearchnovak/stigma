.class public Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "AnnotatedMethodCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    }
.end annotation


# instance fields
.field private final _collectAnnotations:Z

.field private final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V
    .locals 1
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .param p3, "collectAnnotations"    # Z

    .line 27
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 28
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 29
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_collectAnnotations:Z

    .line 30
    return-void
.end method

.method private _addMemberMethods(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V
    .locals 8
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/MemberKey;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 110
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "methods":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    .local p4, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p4, :cond_0

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMethodMixIns(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 113
    :cond_0
    if-nez p2, :cond_1

    .line 114
    return-void

    .line 117
    :cond_1
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 118
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 119
    goto :goto_2

    .line 121
    :cond_2
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v4, v3}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 122
    .local v4, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    .line 123
    .local v5, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    if-nez v5, :cond_4

    .line 124
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v6, :cond_3

    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyCollector()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v6

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v6

    :goto_1
    nop

    .line 126
    .local v6, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    invoke-direct {v7, p1, v3, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;)V

    invoke-interface {p3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v6    # "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    goto :goto_2

    .line 128
    :cond_4
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_collectAnnotations:Z

    if-eqz v6, :cond_5

    .line 129
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v6

    iput-object v6, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 131
    :cond_5
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;

    .line 132
    .local v6, "old":Ljava/lang/reflect/Method;
    if-nez v6, :cond_6

    .line 133
    iput-object v3, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;

    goto :goto_2

    .line 135
    :cond_6
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 136
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 143
    iput-object v3, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;

    .line 146
    iput-object p1, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 117
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v5    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    .end local v6    # "old":Ljava/lang/reflect/Method;
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_8
    return-void
.end method

.method private static _isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 179
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 182
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 183
    :cond_2
    :goto_0
    return v1
.end method

.method public static collectMethods(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .locals 6
    .param p0, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .param p3, "types"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p4, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p7, "collectAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;"
        }
    .end annotation

    .line 39
    .local p5, "superTypes":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    .local p6, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;

    invoke-direct {v0, p0, p2, p7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V

    .line 40
    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collect(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    move-result-object v0

    .line 39
    return-object v0
.end method


# virtual methods
.method protected _addMethodMixIns(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V
    .locals 17
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/MemberKey;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 155
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "methods":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    .local p4, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v2, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-static {v4, v3, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findRawSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 159
    .local v5, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 160
    .local v9, "m":Ljava/lang/reflect/Method;
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 161
    move-object/from16 v16, v2

    move-object/from16 v2, p1

    goto :goto_2

    .line 163
    :cond_1
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v10, v9}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 164
    .local v10, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    .line 165
    .local v11, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v12

    .line 166
    .local v12, "anns":[Ljava/lang/annotation/Annotation;
    if-nez v11, :cond_2

    .line 169
    new-instance v13, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    const/4 v14, 0x0

    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v15

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    invoke-direct {v13, v2, v14, v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;)V

    invoke-interface {v1, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 171
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v2, p1

    iget-object v13, v11, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v0, v13, v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v13

    iput-object v13, v11, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 159
    .end local v9    # "m":Ljava/lang/reflect/Method;
    .end local v10    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v11    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    .end local v12    # "anns":[Ljava/lang/annotation/Annotation;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v2, p1

    .line 174
    .end local v5    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v2, v16

    goto :goto_0

    .line 175
    :cond_4
    move-object/from16 v2, p1

    return-void
.end method

.method collect(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .locals 9
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p2, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p3, "mainType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;"
        }
    .end annotation

    .line 46
    .local p4, "superTypes":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    .local p5, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 49
    .local v0, "methods":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0, p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMemberMethods(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 52
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JavaType;

    .line 53
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 54
    .local v3, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;

    .line 55
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;)V

    .line 56
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    .line 54
    invoke-direct {p0, v4, v5, v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMemberMethods(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 57
    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    .local v1, "checkJavaLangObject":Z
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v2, :cond_2

    .line 61
    const-class v3, Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 62
    .local v2, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMethodMixIns(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 64
    const/4 v1, 0x1

    .line 72
    .end local v2    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 74
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 76
    .local v4, "k":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hashCode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->argCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 77
    goto :goto_2

    .line 81
    :cond_4
    :try_start_0
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 82
    .local v5, "m":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_5

    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    .line 84
    .local v6, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 85
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 84
    invoke-virtual {p0, v7, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v7

    iput-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 86
    iput-object v5, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 88
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    :catch_0
    move-exception v5

    :cond_5
    :goto_3
    nop

    .line 89
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    .end local v4    # "k":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    goto :goto_2

    .line 93
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 94
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>()V

    return-object v2

    .line 96
    :cond_7
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 97
    .local v2, "actual":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 98
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->build()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    .line 99
    .local v5, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v5, :cond_8

    .line 100
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    .end local v5    # "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_8
    goto :goto_4

    .line 103
    :cond_9
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>(Ljava/util/Map;)V

    return-object v3
.end method
