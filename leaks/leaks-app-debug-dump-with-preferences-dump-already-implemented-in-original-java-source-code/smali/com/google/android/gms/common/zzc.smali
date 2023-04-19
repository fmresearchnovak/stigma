.class final Lcom/google/android/gms/common/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static zzaa:Landroid/content/Context;

.field private static volatile zzy:Lcom/google/android/gms/common/internal/zzn;

.field private static final zzz:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzc;->zzz:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzl;
    .locals 1

    .line 6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/common/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzl;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method static final synthetic zza(ZLjava/lang/String;Lcom/google/android/gms/common/zzd;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 38
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/common/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzl;

    move-result-object v2

    .line 39
    iget-boolean v2, v2, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 40
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-static {p1, p2, p0, v0}, Lcom/google/android/gms/common/zzl;->zzc(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized zza(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/common/zzc;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzaa:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/zzc;->zzaa:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static zzb(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzl;
    .locals 4

    .line 11
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzy:Lcom/google/android/gms/common/internal/zzn;

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzaa:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzz:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzy:Lcom/google/android/gms/common/internal/zzn;

    if-nez v1, :cond_0

    .line 15
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzaa:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.googlecertificates"

    .line 16
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    .line 17
    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->zzc(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzn;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/zzc;->zzy:Lcom/google/android/gms/common/internal/zzn;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 21
    :cond_1
    nop

    .line 25
    :goto_0
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzaa:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/google/android/gms/common/zzj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/common/zzj;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)V

    .line 27
    :try_start_3
    sget-object p3, Lcom/google/android/gms/common/zzc;->zzy:Lcom/google/android/gms/common/internal/zzn;

    sget-object v1, Lcom/google/android/gms/common/zzc;->zzaa:Landroid/content/Context;

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 29
    invoke-interface {p3, v0, v1}, Lcom/google/android/gms/common/internal/zzn;->zza(Lcom/google/android/gms/common/zzj;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 30
    nop

    .line 34
    if-eqz p3, :cond_2

    .line 35
    invoke-static {}, Lcom/google/android/gms/common/zzl;->zze()Lcom/google/android/gms/common/zzl;

    move-result-object p0

    return-object p0

    .line 36
    :cond_2
    new-instance p3, Lcom/google/android/gms/common/zze;

    invoke-direct {p3, p2, p0, p1}, Lcom/google/android/gms/common/zze;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/zzd;)V

    invoke-static {p3}, Lcom/google/android/gms/common/zzl;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/zzl;

    move-result-object p0

    return-object p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    const-string p1, "module call"

    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzl;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzl;

    move-result-object p0

    return-object p0

    .line 22
    :catch_1
    move-exception p0

    .line 23
    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    const-string p1, "module init: "

    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_1
    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzl;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzl;

    move-result-object p0

    return-object p0
.end method
