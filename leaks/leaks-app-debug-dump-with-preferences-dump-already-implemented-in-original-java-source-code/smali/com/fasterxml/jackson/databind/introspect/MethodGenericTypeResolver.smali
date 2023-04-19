.class final Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;
.super Ljava/lang/Object;
.source "MethodGenericTypeResolver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bindMethodTypeParameters(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 19
    .param p0, "candidate"    # Ljava/lang/reflect/Method;
    .param p1, "requestedType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "emptyTypeResCtxt"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 56
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 57
    .local v0, "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    array-length v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object v0, v2

    goto/16 :goto_2

    .line 63
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 64
    .local v1, "genericReturnType":Ljava/lang/reflect/Type;
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_1

    .line 67
    return-object v2

    .line 70
    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 73
    .local v3, "parameterizedGenericReturnType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    return-object v2

    .line 81
    :cond_2
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 82
    .local v4, "methodReturnTypeArguments":[Ljava/lang/reflect/Type;
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v5, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v6, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/JavaType;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v4

    if-ge v7, v8, :cond_c

    .line 85
    aget-object v8, v4, v7

    .line 88
    .local v8, "methodReturnTypeArgument":Ljava/lang/reflect/Type;
    invoke-static {v8}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->maybeGetTypeVariable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v9

    .line 89
    .local v9, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz v9, :cond_b

    .line 90
    invoke-interface {v9}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "typeParameterName":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 92
    return-object v2

    .line 95
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 96
    .local v11, "bindTarget":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v11, :cond_4

    .line 97
    return-object v2

    .line 101
    :cond_4
    invoke-static {v0, v10}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->findByName([Ljava/lang/reflect/TypeVariable;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;

    move-result-object v12

    .line 102
    .local v12, "methodTypeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    if-nez v12, :cond_5

    .line 103
    return-object v2

    .line 105
    :cond_5
    invoke-interface {v12}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v13

    move-object/from16 v14, p2

    invoke-static {v14, v11, v13}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->pessimisticallyValidateBounds(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/reflect/Type;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 107
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 108
    .local v13, "existingIndex":I
    const/4 v15, -0x1

    if-eq v13, v15, :cond_9

    .line 109
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fasterxml/jackson/databind/JavaType;

    .line 110
    .local v15, "existingBindTarget":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 111
    move-object/from16 v17, v0

    goto :goto_1

    .line 113
    :cond_6
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v2

    .line 114
    .local v2, "existingIsSubtype":Z
    move-object/from16 v17, v0

    .end local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .local v17, "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v0

    .line 115
    .local v0, "newIsSubtype":Z
    if-nez v2, :cond_7

    if-nez v0, :cond_7

    .line 117
    const/16 v16, 0x0

    return-object v16

    .line 119
    :cond_7
    xor-int v18, v2, v0

    if-eqz v18, :cond_8

    if-eqz v0, :cond_8

    .line 121
    invoke-virtual {v6, v13, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v0    # "newIsSubtype":Z
    .end local v2    # "existingIsSubtype":Z
    .end local v15    # "existingBindTarget":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_8
    goto :goto_1

    .line 124
    .end local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .local v0, "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    :cond_9
    move-object/from16 v17, v0

    .end local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .restart local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v13    # "existingIndex":I
    .end local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .restart local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    :cond_a
    move-object/from16 v17, v0

    .end local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .restart local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    goto :goto_1

    .line 89
    .end local v10    # "typeParameterName":Ljava/lang/String;
    .end local v11    # "bindTarget":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v12    # "methodTypeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .restart local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    :cond_b
    move-object/from16 v14, p2

    move-object/from16 v17, v0

    .line 84
    .end local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .end local v8    # "methodReturnTypeArgument":Ljava/lang/reflect/Type;
    .end local v9    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    :goto_1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    const/4 v2, 0x0

    goto :goto_0

    .end local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .restart local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    :cond_c
    move-object/from16 v14, p2

    move-object/from16 v17, v0

    .line 131
    .end local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .end local v7    # "i":I
    .restart local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_d
    invoke-static {v5, v6}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/util/List;Ljava/util/List;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    return-object v0

    .line 57
    .end local v1    # "genericReturnType":Ljava/lang/reflect/Type;
    .end local v3    # "parameterizedGenericReturnType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "methodReturnTypeArguments":[Ljava/lang/reflect/Type;
    .end local v5    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/JavaType;>;"
    .end local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .restart local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    :cond_e
    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object v0, v2

    .line 61
    .end local v0    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    .restart local v17    # "methodTypeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<Ljava/lang/reflect/Method;>;"
    :goto_2
    return-object v0
.end method

.method private static findByName([Ljava/lang/reflect/TypeVariable;Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 214
    .local p0, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 218
    .local v3, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 219
    return-object v3

    .line 217
    .end local v3    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_2
    return-object v0

    .line 215
    :cond_3
    :goto_1
    return-object v0
.end method

.method private static maybeGetParameterizedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 159
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 160
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    return-object v0

    .line 163
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 164
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 166
    .local v0, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 167
    return-object v1

    .line 169
    :cond_1
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 170
    .local v2, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 171
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->maybeGetParameterizedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    return-object v1

    .line 174
    .end local v0    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v2    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_2
    return-object v1
.end method

.method private static maybeGetTypeVariable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation

    .line 139
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 140
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    return-object v0

    .line 143
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 144
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 146
    .local v0, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 147
    return-object v1

    .line 149
    :cond_1
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 150
    .local v2, "upperBounds":[Ljava/lang/reflect/Type;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 151
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->maybeGetTypeVariable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    return-object v1

    .line 154
    .end local v0    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v2    # "upperBounds":[Ljava/lang/reflect/Type;
    :cond_2
    return-object v1
.end method

.method public static narrowMethodTypeParameters(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;)Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .locals 2
    .param p0, "candidate"    # Ljava/lang/reflect/Method;
    .param p1, "requestedType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p3, "emptyTypeResCtxt"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 42
    invoke-static {p0, p1, p3}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->bindMethodTypeParameters(Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    .line 43
    .local v0, "newTypeBindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    if-nez v0, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;

    invoke-direct {v1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;)V

    :goto_0
    return-object v1
.end method

.method private static pessimisticallyValidateBound(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/reflect/Type;)Z
    .locals 8
    .param p0, "context"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p1, "boundType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .line 189
    invoke-interface {p0, p2}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    return v1

    .line 192
    :cond_0
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->maybeGetParameterizedType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 193
    .local v0, "parameterized":Ljava/lang/reflect/ParameterizedType;
    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 198
    .local v2, "typeArguments":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v3

    .line 199
    .local v3, "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->size()I

    move-result v4

    array-length v5, v2

    if-eq v4, v5, :cond_1

    .line 200
    return v1

    .line 202
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 203
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->getBoundType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 204
    .local v5, "boundTypeBound":Lcom/fasterxml/jackson/databind/JavaType;
    aget-object v6, v2, v4

    .line 205
    .local v6, "typeArg":Ljava/lang/reflect/Type;
    invoke-static {p0, v5, v6}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->pessimisticallyValidateBound(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/reflect/Type;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 206
    return v1

    .line 202
    .end local v5    # "boundTypeBound":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v6    # "typeArg":Ljava/lang/reflect/Type;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "typeArguments":[Ljava/lang/reflect/Type;
    .end local v3    # "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .end local v4    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private static pessimisticallyValidateBounds(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/reflect/Type;)Z
    .locals 5
    .param p0, "context"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p1, "boundType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "upperBound"    # [Ljava/lang/reflect/Type;

    .line 179
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 180
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/MethodGenericTypeResolver;->pessimisticallyValidateBound(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    return v1

    .line 179
    .end local v3    # "type":Ljava/lang/reflect/Type;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
