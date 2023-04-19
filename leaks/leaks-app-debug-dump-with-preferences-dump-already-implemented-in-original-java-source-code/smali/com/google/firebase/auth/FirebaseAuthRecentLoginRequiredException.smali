.class public final Lcom/google/firebase/auth/FirebaseAuthRecentLoginRequiredException;
.super Lcom/google/firebase/auth/FirebaseAuthException;
.source "com.google.firebase:firebase-auth@@20.0.4"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 1
    .end local p0    # "this":Lcom/google/firebase/auth/FirebaseAuthRecentLoginRequiredException;
    .end local p1    # "code":Ljava/lang/String;
    .end local p2    # "message":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
