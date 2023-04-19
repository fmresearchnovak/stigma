.class public abstract Lcom/google/firebase/auth/AuthCredential;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@20.0.4"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .end local p0    # "this":Lcom/google/firebase/auth/AuthCredential;
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getProvider()Ljava/lang/String;
.end method

.method public abstract getSignInMethod()Ljava/lang/String;
.end method

.method public abstract zza()Lcom/google/firebase/auth/AuthCredential;
.end method
