.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzav;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzim;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzau;)Lcom/google/android/gms/internal/firebase-auth-api/zzav;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    move-result-object p0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzu()Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzim;)V

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzav;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzim;)V

    return-object v0
.end method

.method private final declared-synchronized zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)Lcom/google/android/gms/internal/firebase-auth-api/zzio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzic;Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzio;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzic;Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzio;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzj()I

    move-result v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    if-eq p2, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzin;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzin;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzic;)Lcom/google/android/gms/internal/firebase-auth-api/zzin;

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzin;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzin;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzin;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzie;)Lcom/google/android/gms/internal/firebase-auth-api/zzin;

    .line 8
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzin;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzin;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 3
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown output prefix type"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzi(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzim;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzd()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzj()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzk()I

    move-result v0

    .line 2
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzi(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzk()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zzk()I
    .locals 5

    new-instance v0, Ljava/security/SecureRandom;

    .line 1
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return v3
.end method


# virtual methods
.method public final declared-synchronized zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzau;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)Lcom/google/android/gms/internal/firebase-auth-api/zzau;

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

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzaq;)Lcom/google/android/gms/internal/firebase-auth-api/zzav;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzih;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/internal/firebase-auth-api/zzih;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)Lcom/google/android/gms/internal/firebase-auth-api/zzio;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzim;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzio;)Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzd()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzf(I)Lcom/google/android/gms/internal/firebase-auth-api/zzav;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzim;->zzc()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzim;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzio;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzd()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzim;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzim;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "cannot set key as primary because it\'s not enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "key not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
