.class public Lcom/google/firebase/FirebaseTooManyRequestsException;
.super Lcom/google/firebase/FirebaseException;
.source "FirebaseTooManyRequestsException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
