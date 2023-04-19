.class public Lcom/google/android/gms/common/util/AndroidUtilsLight;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# static fields
.field private static volatile zzgu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/util/AndroidUtilsLight;->zzgu:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    nop

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/common/zzl;->zzan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/internal/common/zzl;->getDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 22
    :cond_0
    nop

    .line 23
    return-object p0
.end method

.method public static getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 2
    nop

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 4
    nop

    .line 5
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 6
    const-string p1, "SHA1"

    invoke-static {p1}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->zzj(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return-object p0
.end method

.method public static zzj(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    .line 11
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 12
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    return-object v1

    .line 15
    :cond_0
    goto :goto_1

    .line 16
    :catch_0
    move-exception v1

    .line 17
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
