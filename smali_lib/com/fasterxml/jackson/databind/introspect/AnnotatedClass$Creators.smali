.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
.super Ljava/lang/Object;
.source "AnnotatedClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creators"
.end annotation


# instance fields
.field public final constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation
.end field

.field public final creatorMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "defCtor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;)V"
        }
    .end annotation

    .line 464
    .local p2, "ctors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    .local p3, "ctorMethods":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;->defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 466
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;->constructors:Ljava/util/List;

    .line 467
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;->creatorMethods:Ljava/util/List;

    .line 468
    return-void
.end method
