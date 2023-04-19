.class final Lcom/google/android/gms/common/api/internal/zabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zajd:Lcom/google/android/gms/common/api/internal/zabm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabl;->zajd:Lcom/google/android/gms/common/api/internal/zabm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabl;->zajd:Lcom/google/android/gms/common/api/internal/zabm;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabm;->zaiq:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zag(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    .line 3
    return-void
.end method
