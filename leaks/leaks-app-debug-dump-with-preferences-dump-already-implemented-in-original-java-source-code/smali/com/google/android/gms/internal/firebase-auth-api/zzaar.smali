.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzaar;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaap;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaao;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaao;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaar;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

    return-object v0
.end method

.method static zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaar;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method

.method abstract zzc(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
