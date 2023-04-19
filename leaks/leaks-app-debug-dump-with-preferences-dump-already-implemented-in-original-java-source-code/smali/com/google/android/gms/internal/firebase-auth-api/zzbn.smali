.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field public static final zza:Ljava/lang/String;

.field public static final zzb:Ljava/lang/String;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zza:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzca;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzca;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbr;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzbe;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzee;->zza()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcd;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzca;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzca;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Z)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcg;->zzj(Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcj;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;

    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcm;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;

    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcq;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzct;

    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Z)V

    return-void
.end method
