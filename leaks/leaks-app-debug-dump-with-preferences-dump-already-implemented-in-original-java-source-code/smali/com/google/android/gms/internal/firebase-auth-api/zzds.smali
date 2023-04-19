.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzds;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/lang/String;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzag;

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzav;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzds;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzb:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdr;Lcom/google/android/gms/internal/firebase-auth-api/zzdq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzdr;)Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzdr;)Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzdr;)Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    return-void
.end method

.method static synthetic zzb()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzb:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/firebase-auth-api/zzau;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
