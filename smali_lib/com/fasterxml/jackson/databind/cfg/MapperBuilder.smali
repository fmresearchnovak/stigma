.class public abstract Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
.super Ljava/lang/Object;
.source "MapperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        "B:",
        "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final _mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 52
    return-void
.end method

.method public static findModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->findModules(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findModules(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/Module;>;"
    const-class v1, Lcom/fasterxml/jackson/databind/Module;

    invoke-static {v1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->secureGetServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 369
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/fasterxml/jackson/databind/Module;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/Module;

    .line 370
    .local v3, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v3    # "module":Lcom/fasterxml/jackson/databind/Module;
    goto :goto_0

    .line 372
    :cond_0
    return-object v0
.end method

.method private static secureGetServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader<",
            "TT;>;"
        }
    .end annotation

    .line 376
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 377
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_1

    .line 378
    if-nez p1, :cond_0

    .line 379
    invoke-static {p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 378
    :goto_0
    return-object v1

    .line 381
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;

    invoke-direct {v1, p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ServiceLoader;

    return-object v1
.end method


# virtual methods
.method protected final _this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 909
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    return-object p0
.end method

.method public accessorNaming(Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "s"    # Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;",
            ")TB;"
        }
    .end annotation

    .line 506
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>()V

    move-object p1, v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setAccessorNaming(Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 510
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypeValidator"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")TB;"
        }
    .end annotation

    .line 809
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 810
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypeValidator"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .param p2, "dti"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            ")TB;"
        }
    .end annotation

    .line 824
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 825
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypeValidator"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .param p2, "applicability"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .param p3, "includeAs"    # Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            "Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;",
            ")TB;"
        }
    .end annotation

    .line 846
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 847
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public activateDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypeValidator"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .param p2, "applicability"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .param p3, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 864
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 865
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "h"    # Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ")TB;"
        }
    .end annotation

    .line 577
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 578
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 729
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinSource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 730
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "module"    # Lcom/fasterxml/jackson/databind/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/Module;",
            ")TB;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 328
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;)TB;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "modules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/fasterxml/jackson/databind/Module;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/Module;

    .line 342
    .local v1, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    .line 343
    .end local v1    # "module":Lcom/fasterxml/jackson/databind/Module;
    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addModules([Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 3
    .param p1, "modules"    # [Lcom/fasterxml/jackson/databind/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/Module;",
            ")TB;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 334
    .local v2, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    .line 333
    .end local v2    # "module":Lcom/fasterxml/jackson/databind/Module;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public annotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TB;"
        }
    .end annotation

    .line 421
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 422
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public clearProblemHandlers()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 586
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->clearProblemHandlers()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 587
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 193
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 178
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamReadFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/StreamReadFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 218
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamWriteFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 237
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 157
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/MapperFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 119
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 138
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public constructorDetector(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "cd"    # Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;",
            ")TB;"
        }
    .end annotation

    .line 567
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setConstructorDetector(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 568
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deactivateDefaultTyping()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 875
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->deactivateDefaultTyping()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 876
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultAttributes(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;",
            ")TB;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultAttributes(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 439
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultBase64Variant(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/Base64Variant;",
            ")TB;"
        }
    .end annotation

    .line 671
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setBase64Variant(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 672
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "df"    # Ljava/text/DateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            ")TB;"
        }
    .end annotation

    .line 634
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 635
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultLeniency(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TB;"
        }
    .end annotation

    .line 617
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultLeniency(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 618
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")TB;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 653
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TB;"
        }
    .end annotation

    .line 607
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 608
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/PrettyPrinter;",
            ")TB;"
        }
    .end annotation

    .line 538
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 539
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            ")TB;"
        }
    .end annotation

    .line 697
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 698
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonSetter$Value;",
            ")TB;"
        }
    .end annotation

    .line 597
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 598
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            ")TB;"
        }
    .end annotation

    .line 643
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 644
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")TB;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 188
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")TB;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 173
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/StreamReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 211
    .local v3, "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 210
    .end local v3    # "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 230
    .local v3, "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 229
    .end local v3    # "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 150
    .local v2, "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 149
    .end local v2    # "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/MapperFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TB;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 113
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 131
    .local v2, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 130
    .end local v2    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")TB;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 183
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")TB;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 168
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/StreamReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 204
    .local v3, "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 203
    .end local v3    # "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 223
    .local v3, "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 222
    .end local v3    # "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 143
    .local v2, "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 142
    .end local v2    # "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/MapperFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TB;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 107
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 124
    .local v2, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 123
    .end local v2    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public filterProvider(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/FilterProvider;",
            ")TB;"
        }
    .end annotation

    .line 533
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setFilterProvider(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 534
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findAndAddModules()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 401
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->findModules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public handlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "hi"    # Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;",
            ")TB;"
        }
    .end annotation

    .line 478
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Ljava/lang/Object;

    .line 479
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public injectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/databind/InjectableValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/InjectableValues;",
            ")TB;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setInjectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 550
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 85
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 82
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 75
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 72
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 78
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public nodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            ")TB;"
        }
    .end annotation

    .line 554
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setNodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 555
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public polymorphicTypeValidator(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "ptv"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")TB;"
        }
    .end annotation

    .line 789
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPolymorphicTypeValidator(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 790
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public propertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "s"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;",
            ")TB;"
        }
    .end annotation

    .line 491
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 492
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtypes(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)TB;"
        }
    .end annotation

    .line 771
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes(Ljava/util/Collection;)V

    .line 772
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypes"    # [Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ")TB;"
        }
    .end annotation

    .line 766
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 767
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 761
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "subtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Ljava/lang/Class;)V

    .line 762
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public removeMixIn(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 750
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 751
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public serializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            ")TB;"
        }
    .end annotation

    .line 683
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 684
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public serializerFactory(Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/SerializerFactory;",
            ")TB;"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializerFactory(Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 521
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<",
            "*>;)TB;"
        }
    .end annotation

    .line 897
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "typer":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 898
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public streamFactory()Lcom/fasterxml/jackson/core/TokenStreamFactory;
    .locals 1

    .line 95
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->tokenStreamFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public subtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "r"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            ")TB;"
        }
    .end annotation

    .line 454
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSubtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 455
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public typeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            ")TB;"
        }
    .end annotation

    .line 449
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 450
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public visibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "forMethod"    # Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .param p2, "visibility"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/PropertyAccessor;",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TB;"
        }
    .end annotation

    .line 464
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 465
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public visibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)TB;"
        }
    .end annotation

    .line 459
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "vc":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 460
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withCoercionConfig(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/util/function/Consumer;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "forType"    # Lcom/fasterxml/jackson/databind/type/LogicalType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/util/function/Consumer<",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)TB;"
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p2, "handler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->coercionConfigFor(Lcom/fasterxml/jackson/databind/type/LogicalType;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withCoercionConfig(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)TB;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "forType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "handler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->coercionConfigFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withCoercionConfigDefaults(Ljava/util/function/Consumer;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)TB;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "handler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->coercionConfigDefaults()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 309
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withConfigOverride(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;)TB;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "forType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "handler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method
