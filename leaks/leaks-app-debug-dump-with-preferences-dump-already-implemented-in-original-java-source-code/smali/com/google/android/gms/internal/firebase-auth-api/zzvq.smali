.class final Lcom/google/android/gms/internal/firebase-auth-api/zzvq;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvq;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 3
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvq;->zzb:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzh()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 7
    const-string v1, "Verification code received with no active retrieval session."

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zze:Ljava/lang/String;

    iget-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zze:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzh()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    .line 9
    const-string v1, "Unable to extract verification code."

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvr;->zzd:Ljava/lang/String;

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaf;->zzc(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvq;->zzb:Ljava/lang/String;

    .line 11
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/String;)V

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    .line 11
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
