.class public Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "AnnotatedFieldCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;
    }
.end annotation


# instance fields
.field private final _collectAnnotations:Z

.field private final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

.field private final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V
    .locals 1
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "types"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p3, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .param p4, "collectAnnotations"    # Z

    .line 31
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 32
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 33
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 34
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    .line 35
    return-void
.end method

.method private _addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperClasses(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "parents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 110
    .local v2, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 112
    .local v6, "mixinField":Ljava/lang/reflect/Field;
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 113
    goto :goto_2

    .line 115
    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "name":Ljava/lang/String;
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    .line 118
    .local v8, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;
    if-eqz v8, :cond_1

    .line 119
    iget-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v9

    iput-object v9, v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 110
    .end local v6    # "mixinField":Ljava/lang/reflect/Field;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    goto :goto_0

    .line 123
    :cond_3
    return-void
.end method

.method private _findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;",
            ">;"
        }
    .end annotation

    .line 65
    .local p3, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getSuperClass()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 66
    .local v0, "parent":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_0

    .line 67
    return-object p3

    .line 69
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 71
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;)V

    invoke-direct {p0, v2, v0, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 73
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 75
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_isIncludableField(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 76
    goto :goto_1

    .line 81
    :cond_1
    if-nez p3, :cond_2

    .line 82
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    move-object p3, v6

    .line 84
    :cond_2
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    invoke-direct {v6, p1, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Field;)V

    .line 85
    .local v6, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_collectAnnotations:Z

    if-eqz v7, :cond_3

    .line 86
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v7

    iput-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 88
    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_4
    if-eqz p3, :cond_5

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v2, :cond_5

    .line 92
    invoke-interface {v2, v1}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 93
    .local v2, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_5

    .line 94
    invoke-direct {p0, v2, v1, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_addFieldMixIns(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V

    .line 97
    .end local v2    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    return-object p3
.end method

.method private _isIncludableField(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 128
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 129
    return v1

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 134
    .local v0, "mods":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    return v1

    .line 137
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static collectFields(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Z)Ljava/util/List;
    .locals 1
    .param p0, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .param p3, "types"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p4, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "collectAnnotations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;

    invoke-direct {v0, p0, p3, p2, p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Z)V

    .line 43
    invoke-virtual {v0, p1, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->collect(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/List;

    move-result-object v0

    .line 42
    return-object v0
.end method


# virtual methods
.method collect(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/List;
    .locals 5
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector;->_findFields(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 49
    .local v0, "foundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;>;"
    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 52
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;

    .line 54
    .local v3, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;->build()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v3    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedFieldCollector$FieldBuilder;
    goto :goto_0

    .line 56
    :cond_1
    return-object v1
.end method
