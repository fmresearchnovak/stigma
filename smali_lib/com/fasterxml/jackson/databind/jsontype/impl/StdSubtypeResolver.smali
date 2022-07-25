.class public Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
.source "StdSubtypeResolver.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _registeredSubtypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;

    .line 27
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    .line 29
    .local v0, "reg":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    .line 31
    return-void
.end method


# virtual methods
.method protected _collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
    .locals 16
    .param p1, "annotatedType"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p2, "namedType"    # Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .param p4, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Ljava/util/HashMap<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p3, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p5, "collectedSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    move-object/from16 v0, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 244
    new-instance v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v9, v2

    .end local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .local v2, "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    goto :goto_0

    .line 250
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .restart local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_0
    move-object/from16 v9, p2

    .end local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .local v9, "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :goto_0
    new-instance v1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    move-object v10, v1

    .line 253
    .local v10, "typeOnlyNamedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 257
    .local v1, "prev":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v1    # "prev":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_1
    return-void

    .line 264
    :cond_2
    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {v7, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v11

    .line 266
    .local v11, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 267
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 268
    .local v13, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    nop

    .line 269
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 268
    move-object/from16 v14, p3

    invoke-static {v14, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v15

    .line 270
    .local v15, "subtypeClass":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v1, p0

    move-object v2, v15

    move-object v3, v13

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 271
    .end local v13    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v15    # "subtypeClass":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    goto :goto_1

    .line 267
    :cond_3
    move-object/from16 v14, p3

    goto :goto_2

    .line 266
    :cond_4
    move-object/from16 v14, p3

    .line 273
    :goto_2
    return-void
.end method

.method protected _collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V
    .locals 16
    .param p1, "annotatedType"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p2, "namedType"    # Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p3, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p4, "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p5, "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    move-object/from16 v0, p1

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 284
    .local v1, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 287
    new-instance v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .end local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .local v3, "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    goto :goto_0

    .line 290
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .restart local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_0
    move-object/from16 v3, p2

    .end local p2    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .restart local v3    # "namedType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :goto_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v10, p5

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 290
    :cond_1
    move-object/from16 v10, p5

    .line 295
    :goto_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v11, p4

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v2

    .line 297
    .local v2, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 298
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 299
    .local v13, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    nop

    .line 300
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 299
    move-object/from16 v14, p3

    invoke-static {v14, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v15

    .line 301
    .local v15, "subtypeClass":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v4, p0

    move-object v5, v15

    move-object v6, v13

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    .line 302
    .end local v13    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v15    # "subtypeClass":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    goto :goto_2

    .line 298
    :cond_2
    move-object/from16 v14, p3

    goto :goto_3

    .line 297
    :cond_3
    move-object/from16 v14, p3

    goto :goto_3

    .line 295
    .end local v2    # "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    :cond_4
    move-object/from16 v14, p3

    .line 305
    :goto_3
    return-void
.end method

.method protected _combineNamedAndUnnamed(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 314
    .local p1, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p3, "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 320
    .local v2, "t":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 321
    .end local v2    # "t":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    goto :goto_0

    .line 322
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 325
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    goto :goto_1

    .line 328
    :cond_1
    new-instance v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 330
    :cond_2
    return-object v0
.end method

.method public collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;
    .locals 13
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 135
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v12

    .line 136
    .local v12, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v5, "subtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 141
    .local v6, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 143
    .local v8, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    nop

    .line 145
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 144
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v9

    .line 146
    .local v9, "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object v0, p0

    move-object v1, v9

    move-object v2, v8

    move-object v3, p1

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 148
    .end local v8    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v9    # "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    :cond_0
    goto :goto_0

    .line 151
    .end local v6    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v8, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    .local v8, "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object v6, p0

    move-object v7, p2

    move-object v9, p1

    move-object v10, v12

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
    .locals 16
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 85
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v14

    .line 89
    .local v14, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz p3, :cond_0

    .line 90
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    move-object v15, v0

    .local v0, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 91
    .end local v0    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz v13, :cond_4

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v0

    move-object v15, v0

    .line 97
    .local v15, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v5, "collected":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 102
    .local v7, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    nop

    .line 104
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 103
    invoke-static {v12, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v8

    .line 105
    .local v8, "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 107
    .end local v7    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v8    # "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    :cond_1
    goto :goto_1

    .line 111
    :cond_2
    if-eqz v13, :cond_3

    .line 112
    invoke-virtual {v14, v13}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 115
    .local v2, "nt":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    nop

    .line 116
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 115
    invoke-static {v12, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    .line 117
    .local v3, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v6, p0

    move-object v7, v3

    move-object v8, v2

    move-object/from16 v9, p1

    move-object v10, v14

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 118
    .end local v2    # "nt":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v3    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v11, p0

    goto :goto_2

    .line 122
    .end local v0    # "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    :cond_3
    new-instance v8, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    const/4 v0, 0x0

    invoke-direct {v8, v15, v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 123
    .local v8, "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-static {v12, v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 126
    .local v0, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v6, p0

    move-object v7, v0

    move-object/from16 v9, p1

    move-object v10, v14

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 94
    .end local v0    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v5    # "collected":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    .end local v8    # "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v15    # "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both property and base type are nulls"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;
    .locals 13
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 207
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 208
    .local v0, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 209
    .local v1, "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v11, v2

    .line 211
    .local v11, "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    new-instance v4, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 212
    .local v4, "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object v2, p0

    move-object v3, p2

    move-object v5, p1

    move-object v6, v1

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    .line 214
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v2, :cond_1

    .line 215
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 217
    .local v3, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    nop

    .line 219
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 218
    invoke-static {p1, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v12

    .line 220
    .local v12, "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object v5, p0

    move-object v6, v12

    move-object v7, v3

    move-object v8, p1

    move-object v9, v1

    move-object v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    .line 222
    .end local v3    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v12    # "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    :cond_0
    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0, v0, v1, v11}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_combineNamedAndUnnamed(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
    .locals 18
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 166
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v12

    .line 167
    .local v12, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v13

    .line 170
    .local v13, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v14, v0

    .line 171
    .local v14, "typesHandled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v15, v0

    .line 174
    .local v15, "byName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    new-instance v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    const/4 v0, 0x0

    invoke-direct {v2, v13, v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 175
    .local v2, "rootType":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-static {v10, v13}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v6

    .line 177
    .local v6, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v3, p1

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    .line 180
    if-eqz v11, :cond_1

    .line 181
    invoke-virtual {v12, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-eqz v0, :cond_1

    .line 183
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 184
    .local v16, "nt":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v17

    .line 185
    .end local v6    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .local v17, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object v7, v14

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    .line 186
    .end local v16    # "nt":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    move-object/from16 v6, v17

    goto :goto_0

    .line 183
    .end local v17    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .restart local v6    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    :cond_0
    move-object v0, v6

    goto :goto_1

    .line 190
    .end local v0    # "st":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    :cond_1
    move-object v0, v6

    .end local v6    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .local v0, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    :goto_1
    iget-object v1, v9, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_3

    .line 191
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 193
    .local v16, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    nop

    .line 195
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 194
    invoke-static {v10, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v17

    .line 196
    .local v17, "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object/from16 v6, p1

    move-object v7, v14

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolveByTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Set;Ljava/util/Map;)V

    .line 198
    .end local v16    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .end local v17    # "curr":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    :cond_2
    goto :goto_2

    .line 200
    :cond_3
    invoke-virtual {v9, v13, v14, v15}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_combineNamedAndUnnamed(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public copy()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .locals 1

    .line 36
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;)V

    return-object v0
.end method

.method public registerSubtypes(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 66
    .local p1, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<*>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 67
    .local v0, "len":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 68
    .local v1, "types":[Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    const/4 v2, 0x0

    .line 69
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 70
    .local v4, "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    new-instance v6, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-direct {v6, v4}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    aput-object v6, v1, v2

    .line 71
    .end local v4    # "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v2, v5

    goto :goto_0

    .line 72
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 73
    return-void
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V
    .locals 4
    .param p1, "types"    # [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 47
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    .line 50
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 51
    .local v2, "type":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v2    # "type":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 57
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 58
    .local v0, "types":[Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 59
    new-instance v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    aput-object v3, v0, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 62
    return-void
.end method
