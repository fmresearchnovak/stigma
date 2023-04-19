.class public abstract Lcom/google/firebase/auth/OAuthCredential;
.super Lcom/google/firebase/auth/AuthCredential;
.source "com.google.firebase:firebase-auth@@20.0.4"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .end local p0    # "this":Lcom/google/firebase/auth/OAuthCredential;
    invoke-direct {p0}, Lcom/google/firebase/auth/AuthCredential;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getIdToken()Ljava/lang/String;
.end method

.method public abstract getSecret()Ljava/lang/String;
.end method
