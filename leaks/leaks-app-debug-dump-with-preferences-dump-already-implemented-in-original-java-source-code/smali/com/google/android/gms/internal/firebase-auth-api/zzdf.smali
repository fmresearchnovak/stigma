.class final Lcom/google/android/gms/internal/firebase-auth-api/zzdf;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzas;
.source "com.google.firebase:firebase-auth@@20.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzas<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzam;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzhe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzas;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzgy;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzhj;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdn;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzhj;)I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzp()[B

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhe;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzp()[B

    move-result-object p1

    .line 7
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkl;->zzf(I[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdo;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)V

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzki;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzp()[B

    move-result-object v6

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdn;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzho;)Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgy;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzgp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdn;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzgp;)I

    move-result v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzki;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;ILcom/google/android/gms/internal/firebase-auth-api/zzkg;)V

    return-object p1
.end method
