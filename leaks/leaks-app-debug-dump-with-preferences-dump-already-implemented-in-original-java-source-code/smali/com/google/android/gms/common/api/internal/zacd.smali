.class final Lcom/google/android/gms/common/api/internal/zacd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zakl:Lcom/google/android/gms/common/api/internal/zace;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zace;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacd;->zakl:Lcom/google/android/gms/common/api/internal/zace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacd;->zakl:Lcom/google/android/gms/common/api/internal/zace;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zace;->zaa(Lcom/google/android/gms/common/api/internal/zace;)Lcom/google/android/gms/common/api/internal/zacf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zacf;->zag(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    return-void
.end method
