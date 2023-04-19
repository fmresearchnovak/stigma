.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzak;


# static fields
.field private static final zza:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:[B


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkz;

.field private final zzd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    .line 1
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zza:Ljava/util/Collection;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzb:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zza:Ljava/util/Collection;

    .line 1
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    shr-int/lit8 v0, v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 4
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzd:[B

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;

    .line 5
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkz;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "invalid key size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes; key must have 64 bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzkn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkn;

    const-string v3, "AES/CTR/NoPadding"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzkn;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    .line 4
    const/4 v3, 0x0

    invoke-static {p1, v3, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 5
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 6
    const/16 v6, 0x8

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 7
    const/16 v6, 0xc

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7f

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 8
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzd:[B

    const-string v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 9
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 10
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 11
    array-length p1, p1

    if-nez p1, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zza()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array v0, v3, [B

    goto :goto_0

    .line 20
    :cond_0
    goto :goto_0

    .line 23
    :cond_1
    nop

    .line 11
    :goto_0
    new-array p1, v5, [[B

    aput-object p2, p1, v3

    const/4 p2, 0x1

    aput-object v0, p1, p2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkz;

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzb:[B

    .line 12
    invoke-virtual {v2, v5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza([BI)[B

    move-result-object v2

    const/4 v5, 0x0

    :goto_1
    if-gtz v5, :cond_3

    aget-object v5, p1, v3

    if-nez v5, :cond_2

    new-array v5, v3, [B

    .line 13
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zza([B)[B

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkz;

    invoke-virtual {v6, v5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza([BI)[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzkb;->zze([B[B)[B

    move-result-object v2

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    aget-object p1, p1, p2

    .line 14
    array-length p2, p1

    if-lt p2, v1, :cond_6

    .line 15
    array-length v5, v2

    if-lt p2, v5, :cond_5

    .line 16
    sub-int v5, p2, v5

    .line 17
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 18
    :goto_2
    array-length p2, v2

    if-ge v3, p2, :cond_4

    add-int p2, v5, v3

    .line 19
    aget-byte v6, p1, p2

    aget-byte v7, v2, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    goto :goto_3

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string p2, "xorEnd requires a.length >= b.length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzb([B)[B

    move-result-object p1

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zza([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkb;->zze([B[B)[B

    move-result-object p1

    .line 19
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjz;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkz;

    .line 21
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkz;->zza([BI)[B

    move-result-object p1

    .line 22
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkb;->zza([B[B)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object v0

    .line 23
    :cond_7
    new-instance p1, Ljavax/crypto/AEADBadTagException;

    const-string p2, "Integrity check failed."

    invoke-direct {p1, p2}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Ciphertext too short."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
