.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzhh;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaaa<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzhh;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzhg;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzabe;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzhh;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzy(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzhg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzs()Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhg;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/firebase-auth-api/zzhh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzhh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzhh;Lcom/google/android/gms/internal/firebase-auth-api/zzhj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhj;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzb:I

    return-void
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzhh;Lcom/google/android/gms/internal/firebase-auth-api/zzho;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zze:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzhh;Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzhj;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzb:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhj;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzhj;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzhj;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzhj;

    :cond_0
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzho;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zze:I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    :cond_0
    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    return-object v0
.end method

.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhg;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzhg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhf;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p2

    const-string p2, "zze"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzf"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzhh;

    .line 2
    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhh;->zzz(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    nop

    .line 1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
