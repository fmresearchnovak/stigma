.class final Lcom/google/android/gms/internal/firebase-auth-api/zzto;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzpz<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuk;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

.field private final zzb:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzuk;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zzb:Landroid/content/Context;

    .line 2
    const v2, 0xbdfcb8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztp;->zzb(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzto;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    move-result-object v2

    iput-boolean v1, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzqa;->zza:Z

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzqb;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzul;->zzb:Lcom/google/android/gms/common/api/Api;

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;-><init>()V

    new-instance v5, Lcom/google/firebase/FirebaseExceptionMapper;

    invoke-direct {v5}, Lcom/google/firebase/FirebaseExceptionMapper;-><init>()V

    .line 6
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->setMapper(Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApi$Settings$Builder;->build()Lcom/google/android/gms/common/api/GoogleApi$Settings;

    move-result-object v4

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzqb;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpz;

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpz;-><init>(Lcom/google/android/gms/common/api/GoogleApi;)V

    return-object v0
.end method
