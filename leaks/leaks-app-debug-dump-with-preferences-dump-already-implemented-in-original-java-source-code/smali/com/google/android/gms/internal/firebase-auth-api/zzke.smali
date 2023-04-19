.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzke;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzkf;
.source "com.google.firebase:firebase-auth@@20.0.4"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;-><init>([B)V

    return-void
.end method


# virtual methods
.method final zzc([BI)Lcom/google/android/gms/internal/firebase-auth-api/zzkd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkc;-><init>([BI)V

    return-object v0
.end method
