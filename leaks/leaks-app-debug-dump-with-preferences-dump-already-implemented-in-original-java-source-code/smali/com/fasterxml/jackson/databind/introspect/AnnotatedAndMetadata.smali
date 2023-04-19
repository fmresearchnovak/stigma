.class public Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;
.super Ljava/lang/Object;
.source "AnnotatedAndMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final metadata:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TM;)V"
        }
    .end annotation

    .line 14
    .local p0, "this":Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;, "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<TA;TM;>;"
    .local p1, "ann":Lcom/fasterxml/jackson/databind/introspect/Annotated;, "TA;"
    .local p2, "md":Ljava/lang/Object;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->annotated:Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 16
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;->metadata:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public static of(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "M:",
            "Ljava/lang/Object;",
            ">(TA;TM;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata<",
            "TA;TM;>;"
        }
    .end annotation

    .line 20
    .local p0, "ann":Lcom/fasterxml/jackson/databind/introspect/Annotated;, "TA;"
    .local p1, "md":Ljava/lang/Object;, "TM;"
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedAndMetadata;-><init>(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)V

    return-object v0
.end method
