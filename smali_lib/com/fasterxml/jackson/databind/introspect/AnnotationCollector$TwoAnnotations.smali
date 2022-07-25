.class public Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;
.super Ljava/lang/Object;
.source "AnnotationCollector.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/Annotations;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoAnnotations"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _type1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final _type2:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final _value1:Ljava/lang/annotation/Annotation;

.field private final _value2:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 0
    .param p2, "value1"    # Ljava/lang/annotation/Annotation;
    .param p4, "value2"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 263
    .local p1, "type1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type1:Ljava/lang/Class;

    .line 265
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_value1:Ljava/lang/annotation/Annotation;

    .line 266
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type2:Ljava/lang/Class;

    .line 267
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_value2:Ljava/lang/annotation/Annotation;

    .line 268
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 273
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type1:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_value1:Ljava/lang/annotation/Annotation;

    return-object v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type2:Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    .line 277
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_value2:Ljava/lang/annotation/Annotation;

    return-object v0

    .line 279
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public has(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 284
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type1:Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type2:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

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

.method public hasOneOf([Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .line 289
    .local p1, "annoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 290
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type1:Ljava/lang/Class;

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector$TwoAnnotations;->_type2:Ljava/lang/Class;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 289
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 294
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return v1
.end method

.method public size()I
    .locals 1

    .line 299
    const/4 v0, 0x2

    return v0
.end method
