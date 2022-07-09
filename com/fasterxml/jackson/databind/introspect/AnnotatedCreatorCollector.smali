.class final Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "AnnotatedCreatorCollector.java"


# instance fields
.field private final _collectAnnotations:Z

.field private _defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

.field private final _typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Z)V
    .locals 0
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p3, "collectAnnotations"    # Z

    .line 43
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 44
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 45
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    .line 46
    return-void
.end method

.method private _findPotentialConstructors(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 13
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .line 106
    .local p2, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 107
    .local v0, "defaultCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    const/4 v1, 0x0

    .line 114
    .local v1, "ctors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object v2

    .line 116
    .local v2, "declaredCtors":[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 117
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->isIncludableConstructor(Ljava/lang/reflect/Constructor;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 118
    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 121
    move-object v0, v6

    goto :goto_1

    .line 123
    :cond_1
    if-nez v1, :cond_2

    .line 124
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 126
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "declaredCtors":[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    :cond_3
    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 135
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    if-nez v0, :cond_4

    .line 136
    return-object v4

    .line 138
    :cond_4
    const/4 v5, 0x0

    .local v5, "ctorCount":I
    goto :goto_3

    .line 140
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    .end local v5    # "ctorCount":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 141
    .restart local v5    # "ctorCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_6

    .line 143
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 148
    .end local v6    # "i":I
    :cond_6
    :goto_3
    if-eqz p2, :cond_b

    .line 149
    const/4 v6, 0x0

    .line 150
    .local v6, "ctorKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object v7

    array-length v8, v7

    :goto_4
    if-ge v3, v8, :cond_b

    aget-object v9, v7, v3

    .line 151
    .local v9, "mixinCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v10

    if-nez v10, :cond_7

    .line 152
    if-eqz v0, :cond_a

    .line 153
    invoke-virtual {p0, v0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v10

    iput-object v10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 154
    const/4 v0, 0x0

    goto :goto_7

    .line 158
    :cond_7
    if-eqz v1, :cond_a

    .line 159
    if-nez v6, :cond_8

    .line 160
    new-array v6, v5, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 161
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v5, :cond_8

    .line 162
    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v11, v6, v10

    .line 161
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 165
    .end local v10    # "i":I
    :cond_8
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 167
    .local v10, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v5, :cond_a

    .line 168
    aget-object v12, v6, v11

    invoke-virtual {v10, v12}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 169
    nop

    .line 170
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {p0, v12, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v12

    .line 169
    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    goto :goto_7

    .line 167
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 150
    .end local v9    # "mixinCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .end local v10    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v11    # "i":I
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 178
    .end local v6    # "ctorKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    :cond_b
    if-eqz v0, :cond_c

    .line 179
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 181
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v5, :cond_e

    .line 182
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 183
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    if-nez v6, :cond_d

    .line 184
    nop

    .line 185
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {p0, v7, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v7

    .line 184
    invoke-interface {v4, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 188
    .end local v3    # "i":I
    :cond_e
    return-object v4
.end method

.method private _findPotentialFactories(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 14
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 194
    .local p3, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    const/4 v1, 0x0

    .line 197
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 198
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-static {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_isIncludableFactoryMethod(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 199
    goto :goto_1

    .line 203
    :cond_0
    if-nez v1, :cond_1

    .line 204
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 206
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 209
    :cond_2
    if-nez v1, :cond_3

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 229
    :cond_3
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 231
    .local v2, "initialTypeResCtxt":Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 232
    .local v3, "factoryCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    const/4 v7, 0x0

    if-ge v6, v3, :cond_4

    .line 234
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 237
    .end local v6    # "i":I
    :cond_4
    if-eqz p3, :cond_9

    .line 238
    const/4 v6, 0x0

    .line 239
    .local v6, "methodKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    :goto_3
    if-ge v4, v9, :cond_9

    aget-object v10, v8, v4

    .line 240
    .local v10, "mixinFactory":Ljava/lang/reflect/Method;
    invoke-static {v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_isIncludableFactoryMethod(Ljava/lang/reflect/Method;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 241
    goto :goto_6

    .line 243
    :cond_5
    if-nez v6, :cond_6

    .line 244
    new-array v6, v3, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 245
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v3, :cond_6

    .line 246
    new-instance v12, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    invoke-direct {v12, v13}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v12, v6, v11

    .line 245
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 249
    .end local v11    # "i":I
    :cond_6
    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v11, v10}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 250
    .local v11, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    if-ge v12, v3, :cond_8

    .line 251
    aget-object v13, v6, v12

    invoke-virtual {v11, v13}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 252
    nop

    .line 253
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v13, v2, v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v13

    .line 252
    invoke-interface {v5, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    goto :goto_6

    .line 250
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 239
    .end local v10    # "mixinFactory":Ljava/lang/reflect/Method;
    .end local v11    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v12    # "i":I
    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 261
    .end local v6    # "methodKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    :cond_9
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    if-ge v4, v3, :cond_b

    .line 262
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 263
    .local v6, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-nez v6, :cond_a

    .line 264
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    .line 269
    .local v8, "candidate":Ljava/lang/reflect/Method;
    move-object v9, p1

    move-object/from16 v10, p2

    invoke-static {v8, v10, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->narrowMethodTypeParameters(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;)Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    move-result-object v11

    .line 271
    .local v11, "typeResCtxt":Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    nop

    .line 272
    invoke-virtual {p0, v8, v11, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v12

    .line 271
    invoke-interface {v5, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 263
    .end local v8    # "candidate":Ljava/lang/reflect/Method;
    .end local v11    # "typeResCtxt":Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    :cond_a
    move-object v9, p1

    move-object/from16 v10, p2

    .line 261
    .end local v6    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    move-object v9, p1

    move-object/from16 v10, p2

    .line 275
    .end local v4    # "i":I
    return-object v5
.end method

.method private static _isIncludableFactoryMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 280
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0
.end method

.method private collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2
    .param p1, "main"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 389
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 391
    .local v0, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 392
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 394
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    return-object v1

    .line 396
    .end local v0    # "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v0

    return-object v0
.end method

.method private final collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2
    .param p1, "main"    # Ljava/lang/reflect/AnnotatedElement;
    .param p2, "mixin"    # Ljava/lang/reflect/AnnotatedElement;

    .line 400
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 401
    .local v0, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 402
    invoke-interface {p2}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    return-object v1
.end method

.method private collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 5
    .param p1, "mainAnns"    # [[Ljava/lang/annotation/Annotation;
    .param p2, "mixinAnns"    # [[Ljava/lang/annotation/Annotation;

    .line 370
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz v0, :cond_2

    .line 371
    array-length v0, p1

    .line 372
    .local v0, "count":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 373
    .local v1, "result":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 374
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyCollector()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    .line 376
    .local v3, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 377
    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    .line 379
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    aput-object v4, v1, v2

    .line 373
    .end local v3    # "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 383
    .end local v0    # "count":I
    .end local v1    # "result":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object v0
.end method

.method public static collectCreators(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
    .locals 1
    .param p0, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p2, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "collectAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;"
        }
    .end annotation

    .line 57
    .local p4, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p5, v0

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;

    invoke-direct {v0, p0, p2, p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Z)V

    .line 61
    invoke-virtual {v0, p1, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collect(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method private static isIncludableConstructor(Ljava/lang/reflect/Constructor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation

    .line 409
    .local p0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method collect(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
    .locals 5
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;"
        }
    .end annotation

    .line 70
    .local p3, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_findPotentialConstructors(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "constructors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_findPotentialFactories(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_collectAnnotations:Z

    if-eqz v2, :cond_4

    .line 78
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "i":I
    :cond_1
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 85
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "i":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 90
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 95
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method protected constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 5
    .param p1, "ctor"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 289
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 289
    return-object v0
.end method

.method protected constructFactoryCreator(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 6
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "typeResCtxt"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p3, "mixin"    # Ljava/lang/reflect/Method;

    .line 355
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 356
    .local v0, "paramCount":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 358
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    invoke-direct {v1, p2, p1, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 357
    return-object v1

    .line 360
    :cond_0
    if-nez v0, :cond_1

    .line 361
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v1, p2, p1, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v1

    .line 364
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-direct {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 365
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-nez p3, :cond_2

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [[Ljava/lang/annotation/Annotation;

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 365
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    invoke-direct {v1, p2, p1, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 364
    return-object v1
.end method

.method protected constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 10
    .param p1, "ctor"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 298
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v0

    .line 299
    .local v0, "paramCount":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 300
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 301
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 300
    return-object v1

    .line 308
    :cond_0
    if-nez v0, :cond_1

    .line 309
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 309
    return-object v1

    .line 315
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 316
    .local v1, "paramAnns":[[Ljava/lang/annotation/Annotation;
    array-length v2, v1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 323
    .local v4, "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isEnumType(Ljava/lang/Class;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v5, :cond_3

    array-length v5, v1

    add-int/2addr v5, v8

    if-ne v0, v5, :cond_3

    .line 324
    move-object v5, v1

    .line 325
    .local v5, "old":[[Ljava/lang/annotation/Annotation;
    array-length v9, v5

    add-int/2addr v9, v8

    new-array v1, v9, [[Ljava/lang/annotation/Annotation;

    .line 326
    array-length v9, v5

    invoke-static {v5, v6, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    move-object v9, v3

    check-cast v9, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 328
    .end local v5    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    array-length v5, v1

    add-int/2addr v5, v7

    if-ne v0, v5, :cond_4

    .line 332
    move-object v5, v1

    .line 333
    .restart local v5    # "old":[[Ljava/lang/annotation/Annotation;
    array-length v9, v5

    add-int/2addr v9, v7

    new-array v1, v9, [[Ljava/lang/annotation/Annotation;

    .line 334
    array-length v9, v5

    invoke-static {v5, v6, v1, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    sget-object v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    aput-object v9, v1, v6

    .line 336
    move-object v9, v3

    check-cast v9, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 339
    .end local v5    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 344
    .end local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 340
    .restart local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 342
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 340
    const-string v6, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    .end local v2    # "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .end local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    if-nez p2, :cond_7

    move-object v2, v3

    check-cast v2, [[Ljava/lang/annotation/Annotation;

    goto :goto_1

    .line 346
    :cond_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 345
    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 348
    .restart local v2    # "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :goto_2
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 348
    return-object v3
.end method
