.class public Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/AccountPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountChooserOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$zza;,
        Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$Builder;
    }
.end annotation


# instance fields
.field private zze:Landroid/accounts/Account;

.field private zzf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Z

.field private zzi:Ljava/lang/String;

.field private zzj:Landroid/os/Bundle;

.field private zzk:Z

.field private zzl:I

.field private zzm:Ljava/lang/String;

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$zza;

.field private zzp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;I)I
    .locals 0

    .line 23
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzl:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zze:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzj:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$zza;)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$zza;
    .locals 0

    .line 17
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzo:Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$zza;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzg:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzn:Z

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzh:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzm:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzf:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)Z
    .locals 0

    .line 21
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzk:Z

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$zza;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzo:Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions$zza;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;Z)Z
    .locals 0

    .line 25
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzn:Z

    return p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/util/ArrayList;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzf:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/util/ArrayList;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzg:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/os/Bundle;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzj:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Landroid/accounts/Account;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zze:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzh:Z

    return p0
.end method

.method static synthetic zzi(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzj(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzk:Z

    return p0
.end method

.method static synthetic zzk(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzl(Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/google/android/gms/common/AccountPicker$AccountChooserOptions;->zzl:I

    return p0
.end method
