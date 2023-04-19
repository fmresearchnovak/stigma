.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzau;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)Lcom/google/android/gms/internal/firebase-auth-api/zzau;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V

    return-object v0
.end method

.method public static zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zzc()I

    move-result p0

    if-lez p0, :cond_0

    .line 2
    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;Lcom/google/android/gms/internal/firebase-auth-api/zzag;)Lcom/google/android/gms/internal/firebase-auth-api/zzau;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzc()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzp()[B

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 5
    invoke-interface {p1, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzb([B[B)[B

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zze([BLcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaai; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V

    return-object v0

    .line 9
    :catch_0
    move-exception p0

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "empty keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)Lcom/google/android/gms/internal/firebase-auth-api/zziu;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzip;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zziu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)Lcom/google/android/gms/internal/firebase-auth-api/zziu;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzaw;Lcom/google/android/gms/internal/firebase-auth-api/zzag;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzI()[B

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-interface {p2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zza([B[B)[B

    move-result-object v1

    :try_start_0
    new-array v2, v2, [B

    .line 2
    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzb([B[B)[B

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    move-result-object v2

    .line 4
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zze([BLcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    move-result-object p2

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaai; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzhl;

    move-result-object p2

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzm([B)Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhl;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzhl;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)Lcom/google/android/gms/internal/firebase-auth-api/zziu;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhl;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zziu;)Lcom/google/android/gms/internal/firebase-auth-api/zzhl;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzhm;

    .line 12
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzhm;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "cannot encrypt keyset"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaai; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    :catch_0
    move-exception p1

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid keyset, corrupted key material"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zze(Lcom/google/android/gms/internal/firebase-auth-api/zzaw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzio;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzic;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    if-eq v2, v3, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzic;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzic;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzic;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzic;->zza()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 8
    const-string v1, "keyset contains key material of type %s for type url %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 5
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V

    return-void
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzau;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zzb()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzio;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzic;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzib;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzib;

    if-ne v4, v5, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzic;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzic;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzic;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzin;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzm(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzin;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzic;)Lcom/google/android/gms/internal/firebase-auth-api/zzin;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzio;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzim;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzio;)Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "The keyset contains a non-private key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzim;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzim;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V

    return-object v1

    .line 1
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cleartext keyset is not available"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzh(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzm(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No wrapper found for "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 3
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzip;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbd;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzbd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zzb()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzio;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzie;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzie;

    if-ne v4, v5, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzic;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzk(Lcom/google/android/gms/internal/firebase-auth-api/zzic;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbd;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzio;)Lcom/google/android/gms/internal/firebase-auth-api/zzbb;

    move-result-object v4

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzio;->zzd()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzip;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzip;->zza()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 11
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzbd;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzbb;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzl(Lcom/google/android/gms/internal/firebase-auth-api/zzbd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
