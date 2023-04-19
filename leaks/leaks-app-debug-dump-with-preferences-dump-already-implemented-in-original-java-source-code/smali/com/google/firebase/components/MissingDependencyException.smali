.class public Lcom/google/firebase/components/MissingDependencyException;
.super Lcom/google/firebase/components/DependencyException;
.source "MissingDependencyException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method
