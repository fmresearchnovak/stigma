.class Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.source "AnnotationCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyCollector"
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;->instance:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .line 66
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 3
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .line 83
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;->_data:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$OneCollector;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 1

    .line 75
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;-><init>()V

    return-object v0
.end method

.method public asAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
    .locals 1

    .line 70
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$EmptyCollector;->NO_ANNOTATIONS:Lcom/fasterxml/jackson/databind/util/Annotations;

    return-object v0
.end method

.method public isPresent(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .line 79
    const/4 v0, 0x0

    return v0
.end method
