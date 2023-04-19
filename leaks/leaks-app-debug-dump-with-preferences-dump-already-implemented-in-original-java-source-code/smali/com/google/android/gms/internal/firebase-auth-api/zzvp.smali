.class final Lcom/google/android/gms/internal/firebase-auth-api/zzvp;
.super Lcom/google/android/gms/internal/firebase-auth-api/zztq;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Lcom/google/android/gms/internal/firebase-auth-api/zztq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zztq;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzh(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzh()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCodeSent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zzb:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    .line 4
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzh(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zzg:Z

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zzd:Ljava/lang/String;

    iget-wide v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zza:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzk(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zzc:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zzb:Ljava/lang/String;

    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzl(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zze:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaf;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zzb:Ljava/lang/String;

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzh()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x27

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "SMS verification code request failed: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zzb:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzk(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvp;->zzb:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zze(Ljava/lang/String;)V

    return-void
.end method
