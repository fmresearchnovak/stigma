.class final Lcom/google/android/gms/common/api/internal/zaaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zafz:Lcom/google/android/gms/common/api/internal/zaak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaak;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zafz:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zafz:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zab(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zafz:Lcom/google/android/gms/common/api/internal/zaak;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaak;->zaa(Lcom/google/android/gms/common/api/internal/zaak;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->cancelAvailabilityErrorNotifications(Landroid/content/Context;)V

    .line 3
    return-void
.end method
