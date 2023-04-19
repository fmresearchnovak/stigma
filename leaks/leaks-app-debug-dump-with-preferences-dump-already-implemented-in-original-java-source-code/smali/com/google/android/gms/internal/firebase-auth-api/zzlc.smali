.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzlc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzei;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzei;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzei;

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zzb:I

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zza([BI)[B

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, need at least 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzei;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;->zzb:I

    .line 1
    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzei;->zza([BI)[B

    move-result-object p2

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkb;->zza([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
