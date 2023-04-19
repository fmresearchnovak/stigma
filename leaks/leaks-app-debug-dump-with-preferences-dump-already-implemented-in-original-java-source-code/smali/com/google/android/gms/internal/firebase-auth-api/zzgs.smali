.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzgs;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaaa<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzgs;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzgr;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzabe;"
    }
.end annotation


# static fields
.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzih;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzy(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;-><init>()V

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzgr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;->zzs()Lcom/google/android/gms/internal/firebase-auth-api/zzzw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgr;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzgs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzgs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase-auth-api/zzgs;Lcom/google/android/gms/internal/firebase-auth-api/zzih;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgr;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzgr;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgq;)V

    return-object p1

    .line 1
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;-><init>()V

    return-object p1

    .line 0
    :pswitch_4
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzb"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs;

    .line 2
    const-string p3, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs;->zzz(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
