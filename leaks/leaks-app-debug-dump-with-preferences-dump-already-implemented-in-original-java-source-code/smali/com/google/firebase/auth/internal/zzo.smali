.class public final Lcom/google/firebase/auth/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/firebase/auth/ActionCodeResult;


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/firebase/auth/ActionCodeInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxg;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzc:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    iput v2, p0, Lcom/google/firebase/auth/internal/zzo;->zza:I

    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzo;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    sparse-switch v3, :sswitch_data_0

    :cond_2
    goto :goto_1

    .line 12
    :sswitch_0
    nop

    .line 5
    const-string v3, "RECOVER_EMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v3, "EMAIL_SIGNIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v3, "VERIFY_AND_CHANGE_EMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_3
    const-string v3, "VERIFY_EMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_4
    const-string v3, "PASSWORD_RESET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_5
    const-string v3, "REVERT_SECOND_FACTOR_ADDITION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    const/4 v4, 0x3

    goto :goto_3

    .line 12
    :pswitch_0
    const/4 v4, 0x6

    goto :goto_3

    :pswitch_1
    goto :goto_3

    :pswitch_2
    const/4 v4, 0x5

    goto :goto_3

    :pswitch_3
    const/4 v4, 0x4

    goto :goto_3

    :pswitch_4
    const/4 v4, 0x1

    goto :goto_3

    :pswitch_5
    const/4 v4, 0x0

    .line 5
    :goto_3
    iput v4, p0, Lcom/google/firebase/auth/internal/zzo;->zza:I

    if-eq v4, v8, :cond_7

    if-ne v4, v2, :cond_3

    goto :goto_5

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzi()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/google/firebase/auth/internal/zzn;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwz;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzba;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwz;)Lcom/google/firebase/auth/MultiFactorInfo;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/auth/internal/zzn;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/MultiFactorInfo;)V

    goto :goto_4

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzg()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/google/firebase/auth/internal/zzl;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/auth/internal/zzl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzf()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/google/firebase/auth/internal/zzm;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/zzm;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    nop

    .line 8
    :goto_4
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzo;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-void

    .line 5
    :cond_7
    :goto_5
    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzo;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fbac124 -> :sswitch_5
        -0x56916d75 -> :sswitch_4
        -0x4ffacbca -> :sswitch_3
        -0x4183d145 -> :sswitch_2
        0x33e669c5 -> :sswitch_1
        0x39d86cc1 -> :sswitch_0
    .end sparse-switch

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


# virtual methods
.method public final getData(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/firebase/auth/internal/zzo;->zza:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzo;->zzc:Ljava/lang/String;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzo;->zzb:Ljava/lang/String;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInfo()Lcom/google/firebase/auth/ActionCodeInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzo;->zzd:Lcom/google/firebase/auth/ActionCodeInfo;

    return-object v0
.end method

.method public final getOperation()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzo;->zza:I

    return v0
.end method
