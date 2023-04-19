.class final Lcom/google/android/gms/internal/firebase-auth-api/zzdo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzkg;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzfs;

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzge;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zza()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zza:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzfv;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)Lcom/google/android/gms/internal/firebase-auth-api/zzabd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzfs;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzfs;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzfv;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzb:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaai; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v1, :cond_1

    .line 9
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzex;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzex;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)Lcom/google/android/gms/internal/firebase-auth-api/zzabd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzex;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzfd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;->zzb()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zze:I

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzex;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzhu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhu;->zzb()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zze:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzb:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaai; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 7
    :catch_1
    move-exception p1

    .line 14
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 13
    :cond_1
    nop

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzzn;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzzn;

    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgh;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Lcom/google/android/gms/internal/firebase-auth-api/zzgh;

    move-result-object v0

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)Lcom/google/android/gms/internal/firebase-auth-api/zzabd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzge;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzge;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgh;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzb:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaai; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 21
    :catch_2
    move-exception p1

    .line 20
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 21
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzb:I

    return v0
.end method

.method public final zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzdp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzb:I

    if-ne v0, v1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zza:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfs;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzfr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzfs;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzm(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzb:I

    .line 5
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzl([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfr;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzfr;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzfs;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zza:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    .line 7
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzag;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbn;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zze:I

    .line 9
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzb:I

    .line 10
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfa;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzez;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzfa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzm(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzm([B)Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzez;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzez;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfa;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzhq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzhr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzm(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzm([B)Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhq;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzhq;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzet;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzet;

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzet;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzfa;)Lcom/google/android/gms/internal/firebase-auth-api/zzet;

    .line 22
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzet;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzhr;)Lcom/google/android/gms/internal/firebase-auth-api/zzet;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zza:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    .line 24
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzag;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zza:Ljava/lang/String;

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzge;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzgd;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzge;

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzm(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zzb:I

    .line 28
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzl([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgd;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzgd;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzge;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;->zza:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzak;

    .line 30
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbl;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzak;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzak;)V

    return-object v0

    .line 31
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
