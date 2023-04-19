.class final Lcom/google/firebase/auth/api/fallback/service/zza;
.super Lcom/google/android/gms/common/internal/FallbackServiceBroker;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;


# direct methods
.method protected constructor <init>(Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/api/fallback/service/zza;->zza:Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/FallbackServiceBroker;-><init>()V

    return-void
.end method


# virtual methods
.method public final getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->getExtraArgs()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    nop

    .line 3
    const-string v0, "com.google.firebase.auth.API_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zztu;

    iget-object v1, p0, Lcom/google/firebase/auth/api/fallback/service/zza;->zza:Lcom/google/firebase/auth/api/fallback/service/FirebaseAuthFallbackService;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zztu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/common/internal/IGmsCallbacks;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string p2, "ApiKey must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "ExtraArgs is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
