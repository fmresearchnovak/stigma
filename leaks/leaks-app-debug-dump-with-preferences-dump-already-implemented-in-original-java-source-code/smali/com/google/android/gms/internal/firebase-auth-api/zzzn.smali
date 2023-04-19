.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzzn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

.field private static volatile zzb:Z

.field private static volatile zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzn;


# instance fields
.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzm;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzy<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zzb:Z

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    .line 1
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zzd:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zzd:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzzn;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    .line 1
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;I)Lcom/google/android/gms/internal/firebase-auth-api/zzzy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzabd;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzy<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zzd:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzm;

    .line 1
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzm;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzy;

    return-object p1
.end method
