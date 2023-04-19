.class public interface abstract Lcom/google/firebase/internal/InternalTokenProvider;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth-interop@@19.0.0"


# virtual methods
.method public abstract getAccessToken(Z)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUid()Ljava/lang/String;
.end method
