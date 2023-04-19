.class final Lcom/google/android/gms/common/api/internal/zabo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zajc:Lcom/google/android/gms/common/ConnectionResult;

.field private final synthetic zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajc:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;->zaia:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    .line 3
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajc:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;Z)Z

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;->zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;->zac(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)V

    return-void

    .line 9
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;->zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajk:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;->zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zab;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    move-result-object v3

    .line 11
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-void

    .line 13
    :catch_0
    move-exception v1

    .line 14
    const-string v2, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 16
    return-void

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zajc:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 18
    return-void
.end method
