.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzkf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzag;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkd;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zzc([BI)Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zzc([BI)Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

    return-void
.end method

.method private final zzd(Ljava/nio/ByteBuffer;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkd;->zzc()I

    move-result v1

    const/16 v2, 0x10

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v1, v2, [B

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x10

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x10

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkd;->zzc()I

    move-result v2

    new-array v2, v2, [B

    .line 8
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzkd;->zze([BI)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 10
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length v2, p2

    and-int/lit8 v4, v2, 0xf

    if-nez v4, :cond_0

    move v5, v2

    goto :goto_0

    .line 22
    :cond_0
    add-int/lit8 v5, v2, 0x10

    sub-int/2addr v5, v4

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    rem-int/lit8 v6, v4, 0x10

    if-nez v6, :cond_1

    move v7, v4

    goto :goto_1

    .line 24
    :cond_1
    add-int/lit8 v7, v4, 0x10

    sub-int/2addr v7, v6

    .line 11
    :goto_1
    add-int/2addr v7, v5

    add-int/lit8 v6, v7, 0x10

    .line 12
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 13
    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v7, v2

    .line 17
    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long v4, v4

    .line 18
    invoke-virtual {v6, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 20
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzky;->zza([B[B)[B

    move-result-object p2

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkb;->zza([B[B)Z

    move-result p2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    .line 23
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkd;

    .line 24
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkd;->zzd(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    return-object p1

    .line 21
    :cond_2
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :catch_0
    move-exception p1

    .line 22
    new-instance p2, Ljavax/crypto/AEADBadTagException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzkf;->zzd(Ljava/nio/ByteBuffer;[B)[B

    move-result-object p1

    return-object p1
.end method

.method abstract zzc([BI)Lcom/google/android/gms/internal/firebase-auth-api/zzkd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method
