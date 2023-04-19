.class public final Lcom/google/android/gms/common/api/internal/zap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final mApi:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "*>;"
        }
    .end annotation
.end field

.field private final zaee:Z

.field private zaef:Lcom/google/android/gms/common/api/internal/zar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zap;->mApi:Lcom/google/android/gms/common/api/Api;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zap;->zaee:Z

    .line 4
    return-void
.end method

.method private final zat()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zap;->zaef:Lcom/google/android/gms/common/api/internal/zar;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zap;->zat()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zap;->zaef:Lcom/google/android/gms/common/api/internal/zar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zar;->onConnected(Landroid/os/Bundle;)V

    .line 7
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zap;->zat()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zap;->zaef:Lcom/google/android/gms/common/api/internal/zar;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zap;->mApi:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zap;->zaee:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/zar;->zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    .line 13
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zap;->zat()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zap;->zaef:Lcom/google/android/gms/common/api/internal/zar;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zar;->onConnectionSuspended(I)V

    .line 10
    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zar;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zap;->zaef:Lcom/google/android/gms/common/api/internal/zar;

    .line 15
    return-void
.end method
