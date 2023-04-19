.class public final Lcom/google/firebase/auth/internal/zzx;
.super Lcom/google/firebase/auth/FirebaseUser;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

.field private zzb:Lcom/google/firebase/auth/internal/zzt;

.field private final zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzt;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/Boolean;

.field private zzi:Lcom/google/firebase/auth/internal/zzz;

.field private zzj:Z

.field private zzk:Lcom/google/firebase/auth/zze;

.field private zzl:Lcom/google/firebase/auth/internal/zzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/zzy;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzy;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzwv;Lcom/google/firebase/auth/internal/zzt;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/internal/zzz;ZLcom/google/firebase/auth/zze;Lcom/google/firebase/auth/internal/zzbb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv;",
            "Lcom/google/firebase/auth/internal/zzt;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzt;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/google/firebase/auth/internal/zzz;",
            "Z",
            "Lcom/google/firebase/auth/zze;",
            "Lcom/google/firebase/auth/internal/zzbb;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzx;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzx;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzx;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/firebase/auth/internal/zzx;->zzf:Ljava/util/List;

    iput-object p7, p0, Lcom/google/firebase/auth/internal/zzx;->zzg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/firebase/auth/internal/zzx;->zzh:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/firebase/auth/internal/zzx;->zzi:Lcom/google/firebase/auth/internal/zzz;

    iput-boolean p10, p0, Lcom/google/firebase/auth/internal/zzx;->zzj:Z

    iput-object p11, p0, Lcom/google/firebase/auth/internal/zzx;->zzk:Lcom/google/firebase/auth/zze;

    iput-object p12, p0, Lcom/google/firebase/auth/internal/zzx;->zzl:Lcom/google/firebase/auth/internal/zzbb;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzc:Ljava/lang/String;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzd:Ljava/lang/String;

    const-string p1, "2"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzg:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/internal/zzx;->zzb(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    return-void
.end method

.method public static zzs(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 2

    new-instance v0, Lcom/google/firebase/auth/internal/zzx;

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/auth/internal/zzx;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    .line 2
    instance-of p0, p1, Lcom/google/firebase/auth/internal/zzx;

    if-eqz p0, :cond_0

    .line 3
    move-object p0, p1

    check-cast p0, Lcom/google/firebase/auth/internal/zzx;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzg:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/auth/internal/zzx;->zzg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzd:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/auth/internal/zzx;->zzd:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzx;->zzi:Lcom/google/firebase/auth/internal/zzz;

    iput-object p0, v0, Lcom/google/firebase/auth/internal/zzx;->zzi:Lcom/google/firebase/auth/internal/zzz;

    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/google/firebase/auth/internal/zzx;->zzi:Lcom/google/firebase/auth/internal/zzz;

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/internal/zzx;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzwv;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzx;->zzj()Lcom/google/firebase/auth/internal/zzx;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzt;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzt;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzi:Lcom/google/firebase/auth/internal/zzz;

    return-object v0
.end method

.method public final bridge synthetic getMultiFactor()Lcom/google/firebase/auth/MultiFactor;
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/internal/zzac;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/zzac;-><init>(Lcom/google/firebase/auth/internal/zzx;)V

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzt;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPhotoUrl()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzt;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getProviderData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final getProviderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzt;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTenantId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zze()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzay;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/GetTokenResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/auth/GetTokenResult;->getClaims()Ljava/util/Map;

    move-result-object v0

    .line 3
    const-string v2, "firebase"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4
    const-string v1, "tenant"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzt;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAnonymous()Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzh:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zze()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzay;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/GetTokenResult;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/auth/GetTokenResult;->getSignInProvider()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    const-string v0, ""

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zze:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_3

    if-eqz v0, :cond_2

    .line 5
    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 6
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 4
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzh:Ljava/lang/Boolean;

    :cond_4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzh:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isEmailVerified()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzt;->isEmailVerified()Z

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    .line 2
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzc:Ljava/lang/String;

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzd:Ljava/lang/String;

    .line 5
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zze:Ljava/util/List;

    .line 6
    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzf:Ljava/util/List;

    .line 7
    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzg:Ljava/lang/String;

    .line 8
    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzx;->isAnonymous()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 10
    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzi:Lcom/google/firebase/auth/internal/zzz;

    .line 11
    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzj:Z

    .line 12
    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzk:Lcom/google/firebase/auth/zze;

    .line 13
    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzx;->zzl:Lcom/google/firebase/auth/internal/zzbb;

    .line 14
    const/16 v2, 0xc

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzf:Ljava/util/List;

    return-object v0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)",
            "Lcom/google/firebase/auth/FirebaseUser;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zze:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzf:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/UserInfo;

    .line 6
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    move-object v3, v2

    check-cast v3, Lcom/google/firebase/auth/internal/zzt;

    iput-object v3, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    goto :goto_1

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzx;->zzf:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzx;->zze:Ljava/util/List;

    .line 9
    check-cast v2, Lcom/google/firebase/auth/internal/zzt;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zze:Ljava/util/List;

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzt;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzb:Lcom/google/firebase/auth/internal/zzt;

    :cond_2
    return-object p0
.end method

.method public final bridge synthetic zzc()Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzx;->zzj()Lcom/google/firebase/auth/internal/zzx;

    return-object p0
.end method

.method public final zzd()Lcom/google/firebase/FirebaseApp;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzc:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzwv;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    return-void
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zze()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/auth/internal/zzbb;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 5
    instance-of v2, v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/google/firebase/auth/internal/zzbb;

    .line 7
    invoke-direct {p1, v0}, Lcom/google/firebase/auth/internal/zzbb;-><init>(Ljava/util/List;)V

    move-object v0, p1

    goto :goto_1

    :cond_3
    nop

    .line 2
    :goto_1
    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzl:Lcom/google/firebase/auth/internal/zzbb;

    return-void
.end method

.method public final zzj()Lcom/google/firebase/auth/internal/zzx;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzh:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzk(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzx;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzt;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final zzm(Lcom/google/firebase/auth/internal/zzz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzi:Lcom/google/firebase/auth/internal/zzz;

    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzj:Z

    return-void
.end method

.method public final zzo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzj:Z

    return v0
.end method

.method public final zzp(Lcom/google/firebase/auth/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzx;->zzk:Lcom/google/firebase/auth/zze;

    return-void
.end method

.method public final zzq()Lcom/google/firebase/auth/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzk:Lcom/google/firebase/auth/zze;

    return-object v0
.end method

.method public final zzr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzx;->zzl:Lcom/google/firebase/auth/internal/zzbb;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzbb;->zza()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1
    :goto_0
    return-object v0
.end method
