.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzul;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field public static final zza:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zztr;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuk;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zztr;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzuk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzul;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzui;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzui;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzul;->zzc:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 3
    new-instance v2, Lcom/google/android/gms/common/api/Api;

    const-string v3, "InternalFirebaseAuth.FIREBASE_AUTH_API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzul;->zzb:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzuk;)Lcom/google/android/gms/internal/firebase-auth-api/zztn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zztn;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzuk;)V

    return-object v0
.end method
