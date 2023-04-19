.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzai;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzau;Lcom/google/android/gms/internal/firebase-auth-api/zzaw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    move-result-object p0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)Lcom/google/android/gms/internal/firebase-auth-api/zzau;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    move-result-object p0

    return-object p0
.end method
