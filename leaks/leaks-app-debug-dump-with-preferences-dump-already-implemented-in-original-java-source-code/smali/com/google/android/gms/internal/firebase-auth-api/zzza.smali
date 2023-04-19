.class final Lcom/google/android/gms/internal/firebase-auth-api/zzza;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzzb;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field private final zzc:[B

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I


# direct methods
.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/firebase-auth-api/zzyz;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyz;)V

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return-void
.end method

.method private final zzv()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zze:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zze:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zze:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzg:I

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzg:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 2
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0
.end method

.method public final zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaai;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzg:I

    if-ne v0, p1, :cond_0

    .line 1
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1
.end method

.method public final zzc(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 7
    :pswitch_0
    nop

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzr(I)V

    return v3

    :pswitch_1
    return v2

    .line 5
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zza()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzb(I)V

    return v3

    .line 9
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzr(I)V

    return v3

    .line 4
    :pswitch_4
    const/16 p1, 0x8

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzr(I)V

    return v3

    .line 0
    :pswitch_5
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_4

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    .line 3
    aget-byte p1, p1, v1

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1

    .line 3
    :cond_4
    nop

    :goto_1
    if-ge v2, v0, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzq()B

    move-result p1

    if-gez p1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3
    :cond_5
    :goto_2
    return v3

    .line 2
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return-object v1

    .line 1
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    .line 2
    :cond_2
    if-gez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0

    .line 3
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    .line 4
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zze([BII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return-object v1

    .line 1
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    .line 2
    :cond_2
    if-gtz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0

    .line 3
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    .line 7
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzl([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return-object v1

    .line 1
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    if-lez v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    .line 4
    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzn([B)Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v0

    return-object v0

    .line 1
    :cond_3
    :goto_1
    if-gtz v0, :cond_4

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0

    .line 3
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0

    .line 6
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-object v0
.end method

.method public final zzh()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_7

    add-int/lit8 v1, v3, 0x1

    .line 2
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 3
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 4
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 5
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    if-gez v3, :cond_6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_6

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_5

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_7

    goto :goto_0

    :cond_5
    move v1, v3

    .line 2
    :cond_6
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return v0

    .line 7
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzj()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final zzi()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_1

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v0, v2, v0

    if-ltz v0, :cond_1

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    int-to-long v0, v0

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_a

    add-int/lit8 v1, v3, 0x1

    .line 2
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    int-to-long v2, v0

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 3
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 4
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v2, v0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    int-to-long v4, v0

    .line 5
    aget-byte v0, v2, v1

    int-to-long v0, v0

    const/16 v6, 0x1c

    shl-long/2addr v0, v6

    xor-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_5

    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v0, v4

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v6, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    int-to-long v7, v3

    const/16 v3, 0x23

    shl-long/2addr v7, v3

    xor-long/2addr v0, v7

    cmp-long v3, v0, v4

    if-gez v3, :cond_6

    const-wide v2, -0x7f01fc080L

    xor-long/2addr v2, v0

    move v1, v6

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v6, 0x1

    .line 7
    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_7

    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v0, v4

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto :goto_0

    :cond_7
    add-int/lit8 v6, v3, 0x1

    .line 8
    aget-byte v3, v2, v3

    int-to-long v7, v3

    const/16 v3, 0x31

    shl-long/2addr v7, v3

    xor-long/2addr v0, v7

    cmp-long v3, v0, v4

    if-gez v3, :cond_8

    const-wide v2, -0x1fc07f01fc080L

    xor-long/2addr v2, v0

    move v1, v6

    goto :goto_0

    :cond_8
    add-int/lit8 v3, v6, 0x1

    .line 9
    aget-byte v6, v2, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_9

    add-int/lit8 v6, v3, 0x1

    .line 10
    aget-byte v2, v2, v3

    int-to-long v2, v2

    cmp-long v7, v2, v4

    if-ltz v7, :cond_a

    move-wide v2, v0

    move v1, v6

    goto :goto_0

    :cond_9
    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    .line 2
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return-wide v2

    .line 11
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzj()J

    move-result-wide v0

    return-wide v0
.end method

.method final zzj()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzq()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    .line 2
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0
.end method

.method public final zzk()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    .line 2
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0
.end method

.method public final zzl()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    .line 2
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0
.end method

.method public final zzm(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaai;
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh:I

    if-gt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzv()V

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1

    .line 1
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1
.end method

.method public final zzn(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh:I

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzv()V

    return-void
.end method

.method public final zzo()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return v0
.end method

.method public final zzq()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    if-eq v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzc:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    .line 2
    aget-byte v0, v1, v0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object v0

    throw v0
.end method

.method public final zzr(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzf:I

    return-void

    .line 0
    :cond_1
    :goto_0
    if-gez p1, :cond_2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1

    .line 2
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1
.end method
