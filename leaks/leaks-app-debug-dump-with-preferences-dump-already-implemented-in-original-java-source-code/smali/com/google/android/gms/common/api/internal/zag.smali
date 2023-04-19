.class public final Lcom/google/android/gms/common/api/internal/zag;
.super Lcom/google/android/gms/common/api/internal/zae;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zae<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final zact:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;"
        }
    .end annotation
.end field

.field private final zacu:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabv;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabv;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/zae;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/zabv;->zakc:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zag;->zact:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabv;->zakd:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zag;->zacu:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic zaa(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zae;->zaa(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic zaa(Lcom/google/android/gms/common/api/internal/zaz;Z)V
    .locals 0

    .line 14
    return-void
.end method

.method public final bridge synthetic zaa(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zae;->zaa(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zag;->zact:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->getRequiredFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)Z"
        }
    .end annotation

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zag;->zact:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->shouldAutoResolveMissingFeatures()Z

    move-result p1

    return p1
.end method

.method public final zad(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->zact:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaad()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zag;->zacq:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->registerListener(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->zact:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    nop

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zabi()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zag;->zact:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabv;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zag;->zact:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zag;->zacu:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zabv;-><init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;)V

    .line 10
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    return-void
.end method
