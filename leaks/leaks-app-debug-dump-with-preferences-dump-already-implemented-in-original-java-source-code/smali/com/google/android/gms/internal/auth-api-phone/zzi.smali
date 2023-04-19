.class public final Lcom/google/android/gms/internal/auth-api-phone/zzi;
.super Lcom/google/android/gms/internal/auth-api-phone/zzb;
.source "com.google.android.gms:play-services-auth-api-phone@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/auth-api-phone/zzj;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/internal/IStatusCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 14
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza(ILandroid/os/Parcel;)V

    .line 15
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/auth-api-phone/zzf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 18
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza(ILandroid/os/Parcel;)V

    .line 19
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/auth-api-phone/zzl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/auth-api-phone/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza(ILandroid/os/Parcel;)V

    .line 6
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/auth-api-phone/zzh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 23
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza(ILandroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/auth-api-phone/zzl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth-api-phone/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 10
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/auth-api-phone/zzb;->zza(ILandroid/os/Parcel;)V

    .line 11
    return-void
.end method
