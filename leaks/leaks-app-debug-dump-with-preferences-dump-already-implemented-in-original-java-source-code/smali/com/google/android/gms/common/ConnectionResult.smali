.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# static fields
.field public static final API_UNAVAILABLE:I = 0x10

.field public static final CANCELED:I = 0xd

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final RESTRICTED_PROFILE:I = 0x14

.field public static final RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_MISSING_PERMISSION:I = 0x13

.field public static final SERVICE_UPDATING:I = 0x12

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_FAILED:I = 0x11

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xe

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final zzq:I

.field private final zzr:I

.field private final zzs:Landroid/app/PendingIntent;

.field private final zzt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    .line 81
    new-instance v0, Lcom/google/android/gms/common/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzq:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzr:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->zzs:Landroid/app/PendingIntent;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->zzt:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method static zza(I)Ljava/lang/String;
    .locals 2

    .line 24
    sparse-switch p0, :sswitch_data_0

    .line 49
    const/16 v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :sswitch_0
    const-string p0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    return-object p0

    .line 47
    :sswitch_1
    const-string p0, "UNFINISHED"

    return-object p0

    .line 45
    :sswitch_2
    const-string p0, "API_VERSION_UPDATE_REQUIRED"

    return-object p0

    .line 44
    :sswitch_3
    const-string p0, "RESTRICTED_PROFILE"

    return-object p0

    .line 43
    :sswitch_4
    const-string p0, "SERVICE_MISSING_PERMISSION"

    return-object p0

    .line 42
    :sswitch_5
    const-string p0, "SERVICE_UPDATING"

    return-object p0

    .line 41
    :sswitch_6
    const-string p0, "SIGN_IN_FAILED"

    return-object p0

    .line 40
    :sswitch_7
    const-string p0, "API_UNAVAILABLE"

    return-object p0

    .line 39
    :sswitch_8
    const-string p0, "INTERRUPTED"

    return-object p0

    .line 38
    :sswitch_9
    const-string p0, "TIMEOUT"

    return-object p0

    .line 37
    :sswitch_a
    const-string p0, "CANCELED"

    return-object p0

    .line 36
    :sswitch_b
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    .line 35
    :sswitch_c
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    .line 34
    :sswitch_d
    const-string p0, "SERVICE_INVALID"

    return-object p0

    .line 33
    :sswitch_e
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    .line 32
    :sswitch_f
    const-string p0, "NETWORK_ERROR"

    return-object p0

    .line 31
    :sswitch_10
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    .line 30
    :sswitch_11
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    .line 29
    :sswitch_12
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    .line 28
    :sswitch_13
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    .line 27
    :sswitch_14
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    .line 26
    :sswitch_15
    const-string p0, "SERVICE_MISSING"

    return-object p0

    .line 25
    :sswitch_16
    const-string p0, "SUCCESS"

    return-object p0

    .line 48
    :sswitch_17
    const-string p0, "UNKNOWN"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_17
        0x0 -> :sswitch_16
        0x1 -> :sswitch_15
        0x2 -> :sswitch_14
        0x3 -> :sswitch_13
        0x4 -> :sswitch_12
        0x5 -> :sswitch_11
        0x6 -> :sswitch_10
        0x7 -> :sswitch_f
        0x8 -> :sswitch_e
        0x9 -> :sswitch_d
        0xa -> :sswitch_c
        0xb -> :sswitch_b
        0xd -> :sswitch_a
        0xe -> :sswitch_9
        0xf -> :sswitch_8
        0x10 -> :sswitch_7
        0x11 -> :sswitch_6
        0x12 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x63 -> :sswitch_1
        0x5dc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 50
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 51
    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 53
    return v2

    .line 54
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 55
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzr:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzr:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzs:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzs:Landroid/app/PendingIntent;

    .line 56
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzt:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->zzt:Ljava/lang/String;

    .line 57
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    nop

    .line 58
    return v2
.end method

.method public final getErrorCode()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzr:I

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzt:Ljava/lang/String;

    return-object v0
.end method

.method public final getResolution()Landroid/app/PendingIntent;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzs:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final hasResolution()Z
    .locals 1

    .line 19
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzr:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzs:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzs:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzt:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzr:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final startResolutionForResult(Landroid/app/Activity;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzs:Landroid/app/PendingIntent;

    .line 16
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 17
    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 60
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzr:I

    .line 61
    invoke-static {v1}, Lcom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzs:Landroid/app/PendingIntent;

    .line 62
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzt:Ljava/lang/String;

    .line 63
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 66
    nop

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 68
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzq:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 69
    nop

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    .line 71
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    .line 74
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 75
    nop

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    .line 77
    const/4 v1, 0x4

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 78
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 79
    return-void
.end method
