.class final Lcom/google/firebase/auth/zzp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/internal/zze;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/PhoneAuthOptions;

.field final synthetic zzb:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/zzp;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/internal/zze;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "Error while validating application identity: "

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v3, Ljava/lang/String;

    .line 3
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    nop

    .line 4
    :goto_0
    const-string v3, "FirebaseAuth"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    const-string v1, "Proceeding without any application identifier."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v2

    move-object v12, v11

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/zze;

    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/zze;->zza()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/zze;

    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/zze;->zzb()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object v11, v2

    .line 5
    :goto_1
    iget-object v1, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzc()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/firebase/auth/zzp;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 9
    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    invoke-virtual {v3}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzd()Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v3

    .line 10
    invoke-static {v1, v2, v3}, Lcom/google/firebase/auth/FirebaseAuth;->zzE(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    move-result-object v14

    iget-object v1, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzg()Lcom/google/firebase/auth/MultiFactorSession;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/firebase/auth/internal/zzag;

    .line 12
    invoke-virtual {v4}, Lcom/google/firebase/auth/internal/zzag;->zze()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/firebase/auth/zzp;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzG(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zztn;

    move-result-object v1

    iget-object v5, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 13
    invoke-virtual {v5}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/firebase/auth/zzp;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v6}, Lcom/google/firebase/auth/FirebaseAuth;->zzF(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 14
    invoke-virtual {v9}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    .line 18
    :cond_3
    const/4 v9, 0x0

    .line 14
    :goto_2
    iget-object v2, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 15
    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh()Z

    move-result v10

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztp;->zza()Z

    move-result v13

    iget-object v2, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 16
    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Ljava/util/concurrent/Executor;

    move-result-object v15

    iget-object v2, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 17
    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi()Landroid/app/Activity;

    move-result-object v16

    .line 18
    move-object v3, v1

    invoke-virtual/range {v3 .. v16}, Lcom/google/android/gms/internal/firebase-auth-api/zztn;->zzM(Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_4
    iget-object v1, v0, Lcom/google/firebase/auth/zzp;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzG(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zztn;

    move-result-object v1

    iget-object v5, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 19
    invoke-virtual {v5}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzj()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    iget-object v6, v0, Lcom/google/firebase/auth/zzp;->zzb:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v6}, Lcom/google/firebase/auth/FirebaseAuth;->zzF(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 20
    invoke-virtual {v9}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzf()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    .line 24
    :cond_5
    const/4 v9, 0x0

    .line 20
    :goto_3
    iget-object v2, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 21
    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzh()Z

    move-result v10

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztp;->zza()Z

    move-result v13

    iget-object v2, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 22
    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneAuthOptions;->zze()Ljava/util/concurrent/Executor;

    move-result-object v15

    iget-object v2, v0, Lcom/google/firebase/auth/zzp;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 23
    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneAuthOptions;->zzi()Landroid/app/Activity;

    move-result-object v16

    .line 24
    move-object v3, v1

    invoke-virtual/range {v3 .. v16}, Lcom/google/android/gms/internal/firebase-auth-api/zztn;->zzO(Lcom/google/firebase/auth/internal/zzag;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
