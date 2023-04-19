.class public final Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub$zza;
.super Lcom/google/android/gms/internal/common/zzb;
.source "com.google.android.gms:play-services-basement@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/dynamic/IFragmentWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.dynamic.IFragmentWrapper"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final getArguments()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 10
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12
    return-object v1
.end method

.method public final getId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 17
    return v1
.end method

.method public final getRetainInstance()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 29
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    return v1
.end method

.method public final getTag()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 34
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    return-object v1
.end method

.method public final getTargetRequestCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 44
    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    return v1
.end method

.method public final getUserVisibleHint()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 49
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    return v1
.end method

.method public final isAdded()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 59
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    return v1
.end method

.method public final isDetached()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 64
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 67
    return v1
.end method

.method public final isHidden()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 69
    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 71
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 72
    return v1
.end method

.method public final isInLayout()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 74
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 76
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 77
    return v1
.end method

.method public final isRemoving()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 79
    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 81
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 82
    return v1
.end method

.method public final isResumed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 84
    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 87
    return v1
.end method

.method public final isVisible()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    const/16 v1, 0x13

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;)Z

    move-result v1

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 92
    return v1
.end method

.method public final setHasOptionsMenu(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzd;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 99
    const/16 p1, 0x15

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;->zzb(ILandroid/os/Parcel;)V

    .line 100
    return-void
.end method

.method public final setMenuVisibility(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 102
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzd;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 103
    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;->zzb(ILandroid/os/Parcel;)V

    .line 104
    return-void
.end method

.method public final setRetainInstance(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 106
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzd;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 107
    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;->zzb(ILandroid/os/Parcel;)V

    .line 108
    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzd;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 111
    const/16 p1, 0x18

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;->zzb(ILandroid/os/Parcel;)V

    .line 112
    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 115
    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;->zzb(ILandroid/os/Parcel;)V

    .line 116
    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/16 p1, 0x1a

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;->zzb(ILandroid/os/Parcel;)V

    .line 121
    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 95
    const/16 p1, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;->zzb(ILandroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method public final zzae()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7
    return-object v1
.end method

.method public final zzaf()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 19
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    return-object v1
.end method

.method public final zzag()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 24
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-object v1
.end method

.method public final zzah()Lcom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 39
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IFragmentWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IFragmentWrapper;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    return-object v1
.end method

.method public final zzai()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 54
    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/common/zzb;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzb;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/common/zzd;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 124
    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/common/zzb;->zzb(ILandroid/os/Parcel;)V

    .line 125
    return-void
.end method
