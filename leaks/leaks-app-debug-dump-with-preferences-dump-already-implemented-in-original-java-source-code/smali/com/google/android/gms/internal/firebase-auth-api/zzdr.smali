.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzdr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzag;

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzav;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase-auth-api/zzdr;)Lcom/google/android/gms/internal/firebase-auth-api/zzaw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzdr;)Lcom/google/android/gms/internal/firebase-auth-api/zzag;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzdr;)Lcom/google/android/gms/internal/firebase-auth-api/zzav;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    return-object p0
.end method

.method private final zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzag;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;->zzc(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "cannot use Android Keystore, it\'ll be disabled"

    if-nez v2, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzb:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;

    .line 5
    invoke-direct {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;-><init>()V

    .line 6
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;->zzc(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 7
    const-string v7, "android-keystore://"

    .line 8
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzlg;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AES"

    const-string v8, "AndroidKeyStore"

    .line 9
    invoke-static {v7, v8}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v7

    .line 10
    new-instance v8, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v9, 0x3

    invoke-direct {v8, v6, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/16 v6, 0x100

    .line 11
    invoke-virtual {v8, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v6

    const-string v8, "GCM"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v6

    const-string v8, "NoPadding"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v6

    .line 15
    invoke-virtual {v7, v6}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 16
    invoke-virtual {v7}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v6, v2, v3

    const-string v3, "cannot generate a new key %s because it already exists; please delete it with deleteKey() and try again"

    .line 7
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzb()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 16
    :cond_1
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzb:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    .line 17
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_2
    if-nez v2, :cond_2

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzb()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v2, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    .line 19
    :cond_2
    new-instance v1, Ljava/security/KeyStoreException;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzb:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 20
    const-string v3, "the master key %s exists but is unusable"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 18
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v2, "Android Keystore requires at least Android M"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private final zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzav;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    .line 1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;Lcom/google/android/gms/internal/firebase-auth-api/zzag;)Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzau;)Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaai; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot decrypt keyset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzdw;)Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzau;)Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzdr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    const-string p2, "GenericIdpKeyset"

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    .line 2
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzdw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdw;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdx;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzdx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    return-object p0

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1
    const-string p2, "need an Android context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzdr;
    .locals 1

    .line 1
    const-string v0, "android-keystore://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzb:Ljava/lang/String;

    return-object p0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "key URI must start with android-keystore://"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzih;)Lcom/google/android/gms/internal/firebase-auth-api/zzdr;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzp()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    move-result-object p1

    sget v2, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zza:I

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string v0, "Unknown output prefix type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    goto :goto_0

    .line 4
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 2
    :pswitch_3
    const/4 p1, 0x1

    .line 3
    :goto_0
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaq;->zzb(Ljava/lang/String;[BI)Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzds;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzh()Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzds;->zzb()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyset not found, will generate a new one"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzaq;)Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zziu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zziu;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzit;->zza()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzf(I)Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzag;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzau;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzaw;Lcom/google/android/gms/internal/firebase-auth-api/zzag;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzau;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzau;Lcom/google/android/gms/internal/firebase-auth-api/zzaw;)V

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdr;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzds;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdr;Lcom/google/android/gms/internal/firebase-auth-api/zzdq;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 9
    :cond_2
    :try_start_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cannot read or generate keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
