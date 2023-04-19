.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzdq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->values()[Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdq;->zza:[I

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdq;->zza:[I

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    return-void
.end method
