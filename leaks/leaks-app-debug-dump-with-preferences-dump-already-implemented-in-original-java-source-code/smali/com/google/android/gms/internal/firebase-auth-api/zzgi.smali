.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzgi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzzz;->zza()[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza:[I

    const/4 v2, 0x1

    const/4 v3, 0x3

    :try_start_0
    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    const/4 v4, 0x4

    :try_start_1
    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza:[I

    aput v1, v5, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    :try_start_2
    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza:[I

    aput v3, v5, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    const/4 v1, 0x5

    :try_start_3
    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza:[I

    aput v4, v3, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :goto_3
    const/4 v3, 0x6

    :try_start_4
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza:[I

    aput v1, v4, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza:[I

    const/4 v4, 0x0

    aput v3, v1, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgi;->zza:[I

    aput v0, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    move-exception v0

    return-void
.end method
