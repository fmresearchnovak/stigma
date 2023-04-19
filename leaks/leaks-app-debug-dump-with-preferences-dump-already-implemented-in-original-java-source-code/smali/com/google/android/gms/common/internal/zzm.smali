.class public abstract Lcom/google/android/gms/common/internal/zzm;
.super Lcom/google/android/gms/internal/common/zza;
.source "com.google.android.gms:play-services-basement@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/zzn;


# direct methods
.method public static zzc(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzn;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzn;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/google/android/gms/common/internal/zzn;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
