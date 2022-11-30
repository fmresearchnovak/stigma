.class Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.super Ljava/lang/Object;
.source "CollectorBase.java"


# static fields
.field protected static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

.field protected static final NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;


# instance fields
.field protected final _intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    sput-object v1, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 14
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 0
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 20
    return-void
.end method

.method static _emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 1

    .line 110
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    return-object v0
.end method

.method static _emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 3
    .param p0, "count"    # I

    .line 114
    if-nez p0, :cond_0

    .line 115
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    return-object v0

    .line 117
    :cond_0
    new-array v0, p0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 118
    .local v0, "maps":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 119
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method protected static final _ignorableAnnotation(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .line 106
    instance-of v0, p0, Ljava/lang/annotation/Target;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/annotation/Retention;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected final collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4
    .param p1, "c"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .param p2, "anns"    # [Ljava/lang/annotation/Annotation;

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 38
    aget-object v2, p2, v0

    .line 39
    .local v2, "ann":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 40
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 37
    .end local v2    # "ann":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    .end local v1    # "end":I
    :cond_1
    return-object p1
.end method

.method protected final collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 5
    .param p1, "anns"    # [Ljava/lang/annotation/Annotation;

    .line 25
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyCollector()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 26
    .local v0, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 27
    aget-object v3, p1, v1

    .line 28
    .local v3, "ann":Ljava/lang/annotation/Annotation;
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 29
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 26
    .end local v3    # "ann":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_1
    return-object v0
.end method

.method protected final collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4
    .param p1, "c"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .param p2, "anns"    # [Ljava/lang/annotation/Annotation;

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 74
    aget-object v2, p2, v0

    .line 75
    .local v2, "ann":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->isPresent(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 77
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectDefaultFromBundle(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 73
    .end local v2    # "ann":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    .end local v1    # "end":I
    :cond_1
    return-object p1
.end method

.method protected final collectDefaultFromBundle(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 5
    .param p1, "c"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .param p2, "bundle"    # Ljava/lang/annotation/Annotation;

    .line 87
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 88
    .local v0, "anns":[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 89
    aget-object v3, v0, v1

    .line 91
    .local v3, "ann":Ljava/lang/annotation/Annotation;
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_ignorableAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->isPresent(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 97
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 88
    .end local v3    # "ann":Ljava/lang/annotation/Annotation;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_2
    return-object p1
.end method

.method protected final collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 5
    .param p1, "c"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .param p2, "bundle"    # Ljava/lang/annotation/Annotation;

    .line 48
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 49
    .local v0, "anns":[Ljava/lang/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "end":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 50
    aget-object v3, v0, v1

    .line 52
    .local v3, "ann":Ljava/lang/annotation/Annotation;
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_ignorableAnnotation(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    goto :goto_1

    .line 55
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->isPresent(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 58
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;->collectFromBundle(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 49
    .end local v3    # "ann":Ljava/lang/annotation/Annotation;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    .end local v2    # "end":I
    :cond_3
    return-object p1
.end method
