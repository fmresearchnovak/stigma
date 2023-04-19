.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static zzat:Lcom/google/android/gms/common/GoogleSignatureVerifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile zzau:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 2

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzat:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v1, :cond_0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzat:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzat:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    return-object p0

    .line 9
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd;)Lcom/google/android/gms/common/zzd;
    .locals 3

    .line 109
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    return-object v1

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 112
    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v1

    .line 114
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzg;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    .line 115
    nop

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 116
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zzd;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 117
    aget-object p0, p1, v2

    return-object p0

    .line 118
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_3
    return-object v1
.end method

.method private final zza(Ljava/lang/String;I)Lcom/google/android/gms/common/zzl;
    .locals 6

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/16 v1, 0x40

    .line 49
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zza(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 50
    nop

    .line 51
    nop

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    .line 53
    nop

    .line 54
    if-nez p2, :cond_0

    .line 55
    const-string p2, "null pkg"

    invoke-static {p2}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_3

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/zzg;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    .line 59
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 60
    nop

    .line 61
    invoke-static {v3, v1, v0, v4}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzl;

    move-result-object v0

    .line 62
    nop

    .line 63
    iget-boolean v5, v0, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 64
    if-eqz v5, :cond_2

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 65
    invoke-static {v3, v1, v4, v2}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzl;

    move-result-object p2

    .line 66
    iget-boolean p2, p2, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 67
    if-eqz p2, :cond_2

    .line 68
    const-string p2, "debuggable release cert app rejected"

    invoke-static {p2}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object p1

    return-object p1

    .line 69
    :cond_2
    nop

    .line 70
    return-object v0

    .line 57
    :cond_3
    :goto_0
    const-string p2, "single cert required"

    invoke-static {p2}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 71
    :catch_0
    move-exception p2

    .line 72
    const-string p2, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object p1

    return-object p1
.end method

.method public static zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    .line 33
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 35
    sget-object p1, Lcom/google/android/gms/common/zzi;->zzaj:[Lcom/google/android/gms/common/zzd;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd;)Lcom/google/android/gms/common/zzd;

    move-result-object p0

    goto :goto_0

    .line 36
    :cond_0
    new-array p1, v1, [Lcom/google/android/gms/common/zzd;

    sget-object v2, Lcom/google/android/gms/common/zzi;->zzaj:[Lcom/google/android/gms/common/zzd;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd;)Lcom/google/android/gms/common/zzd;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    nop

    .line 37
    return v0
.end method

.method private final zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;
    .locals 7

    .line 73
    const-string v0, "null pkg"

    if-nez p1, :cond_0

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzau:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {}, Lcom/google/android/gms/common/zzl;->zze()Lcom/google/android/gms/common/zzl;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    const/16 v2, 0x40

    .line 79
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    iget-object v2, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v2

    .line 86
    nop

    .line 87
    if-nez v1, :cond_2

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Lcom/google/android/gms/common/zzg;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    .line 92
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 93
    nop

    .line 94
    invoke-static {v4, v0, v2, v5}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzl;

    move-result-object v2

    .line 95
    nop

    .line 96
    iget-boolean v6, v2, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 97
    if-eqz v6, :cond_4

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 98
    invoke-static {v4, v0, v5, v3}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzl;

    move-result-object v0

    .line 99
    iget-boolean v0, v0, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 100
    if-eqz v0, :cond_4

    .line 101
    const-string v0, "debuggable release cert app rejected"

    invoke-static {v0}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_4
    move-object v0, v2

    goto :goto_1

    .line 90
    :cond_5
    :goto_0
    const-string v0, "single cert required"

    invoke-static {v0}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object v0

    .line 103
    :goto_1
    nop

    .line 104
    nop

    .line 105
    iget-boolean v1, v0, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 106
    if-eqz v1, :cond_6

    .line 107
    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzau:Ljava/lang/String;

    .line 108
    :cond_6
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string v0, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 38
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 41
    return v2

    .line 42
    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    return v2

    .line 45
    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_3
    return v0
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/common/zzl;->zzf()V

    .line 30
    nop

    .line 31
    iget-boolean p1, p1, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 32
    return p1
.end method

.method public isUidGoogleSigned(I)Z
    .locals 5

    .line 11
    nop

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v1, v0, v3

    .line 17
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Ljava/lang/String;I)Lcom/google/android/gms/common/zzl;

    move-result-object v1

    .line 18
    nop

    .line 19
    iget-boolean v4, v1, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 20
    if-nez v4, :cond_1

    .line 21
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_1
    goto :goto_2

    .line 14
    :cond_2
    :goto_1
    const-string p1, "no pkgs"

    invoke-static {p1}, Lcom/google/android/gms/common/zzl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzl;

    move-result-object v1

    .line 23
    :goto_2
    nop

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzl;->zzf()V

    .line 25
    nop

    .line 26
    iget-boolean p1, v1, Lcom/google/android/gms/common/zzl;->zzap:Z

    .line 27
    return p1
.end method
