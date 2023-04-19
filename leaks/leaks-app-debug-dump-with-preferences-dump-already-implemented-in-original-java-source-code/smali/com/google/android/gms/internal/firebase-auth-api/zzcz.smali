.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field public static final zza:Ljava/lang/String;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;->zza:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    .line 3
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdb;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzbe;)V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcy;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
