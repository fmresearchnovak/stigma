.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    return-void
.end method

.method public static zzb(Ljava/lang/String;[BI)Lcom/google/android/gms/internal/firebase-auth-api/zzaq;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzm([B)Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    add-int/lit8 p2, p2, -0x1

    packed-switch p2, :pswitch_data_0

    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    goto :goto_0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    .line 5
    :goto_0
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzji;)Lcom/google/android/gms/internal/firebase-auth-api/zzig;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    return-object v0
.end method
