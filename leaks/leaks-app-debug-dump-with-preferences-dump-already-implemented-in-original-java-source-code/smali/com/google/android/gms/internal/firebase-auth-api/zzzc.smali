.class final Lcom/google/android/gms/internal/firebase-auth-api/zzzc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

.field private zzb:I

.field private zzc:I

.field private zzd:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzzb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    .line 1
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzb(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    iput-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzc;

    return-void
.end method

.method private final zzP(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    .line 1
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1
.end method

.method private final zzQ(Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzabp<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzn;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    iget v2, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzm(I)I

    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    iget v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza:I

    .line 6
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzabo;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)V

    .line 7
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;->zzj(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzb(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    iget p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza:I

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzn(I)V

    return-object v1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    .line 2
    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;-><init>(Ljava/lang/String;)V

    .line 3
    throw p1
.end method

.method private final zzR(Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzabp<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzn;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzc:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzc:I

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzabo;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)V

    .line 3
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;->zzj(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzc:I

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzc:I

    .line 5
    throw p1
.end method

.method private final zzS(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p1

    throw p1
.end method

.method private static final zzT(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    .line 1
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p0

    throw p0
.end method

.method private static final zzU(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    .line 1
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    move-result-object p0

    throw p0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzc;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzzb;)V

    return-object v0
.end method


# virtual methods
.method public final zzA(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v2

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 2
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v2

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 6
    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzB(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 2
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 6
    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzC(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v2

    .line 6
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 6
    :goto_0
    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzD(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 2
    :cond_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :cond_4
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 9
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzE(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 8
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzd()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->zzd(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 2
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzd()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyo;->zzd(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 5
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 14
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 13
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 5
    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzF(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaan;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    if-nez p2, :cond_3

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaan;

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaan;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 2
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzn()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzm()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 1
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1
.end method

.method public final zzG(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzabp<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzn;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzQ(Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 1
    :cond_2
    :goto_0
    return-void

    .line 3
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1
.end method

.method public final zzH(Ljava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzabp<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzn;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzR(Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 1
    :cond_2
    :goto_0
    return-void

    .line 3
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1
.end method

.method public final zzI(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzyy;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1
.end method

.method public final zzJ(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 2
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 6
    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzK(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 2
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 6
    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzL(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 2
    :cond_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :cond_4
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 9
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzM(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v2

    .line 6
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 6
    :goto_0
    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzN(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzt(I)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 2
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzt(I)I

    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaab;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzt(I)I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 6
    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzt(I)I

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzO(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzu(J)J

    move-result-wide v2

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 2
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzu(J)J

    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzu(J)J

    move-result-wide v2

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 6
    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzu(J)J

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final zzb()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    .line 0
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzc:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    return v0
.end method

.method public final zzd()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzc:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzc(I)Z

    move-result v0

    return v0

    .line 0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzg()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzj()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    return v0
.end method

.method public final zzl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzd()Z

    move-result v0

    return v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzabp<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzn;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzQ(Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzp(Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzabp<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzzn;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzR(Lcom/google/android/gms/internal/firebase-auth-api/zzabp;Lcom/google/android/gms/internal/firebase-auth-api/zzzn;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzs()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    return v0
.end method

.method public final zzu()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzv()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzt(I)I

    move-result v0

    return v0
.end method

.method public final zzw()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzP(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzu(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzx(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 6
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzd(D)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzk;->zzd(D)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzU(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 6
    :goto_0
    return-void

    :cond_5
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzl()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final zzy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 2
    :cond_0
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zzd(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zzd(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :cond_4
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzT(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_6

    .line 9
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzz(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 10
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 9
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v2

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 2
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzf(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_1

    .line 18
    :pswitch_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v2

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzp()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 14
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzS(I)V

    return-void

    .line 6
    :cond_5
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzza;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzza;->zzi()J

    move-result-wide v0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzo()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzzb;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:I

    if-eq v0, v1, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzd:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
