.class public Lcom/google/firebase/auth/ActionCodeSettings$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/ActionCodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Z

.field private zze:Ljava/lang/String;

.field private zzf:Z

.field private zzg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzf:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/auth/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzf:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzd:Z

    return p0
.end method

.method static synthetic zze(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzf:Z

    return p0
.end method

.method static synthetic zzg(Lcom/google/firebase/auth/ActionCodeSettings$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzg:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/firebase/auth/ActionCodeSettings;
    .locals 2

    .end local p0    # "this":Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/firebase/auth/ActionCodeSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/auth/ActionCodeSettings;-><init>(Lcom/google/firebase/auth/ActionCodeSettings$Builder;Lcom/google/firebase/auth/zza;)V

    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1
    const-string v1, "Cannot build ActionCodeSettings with null URL. Call #setUrl(String) before calling build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDynamicLinkDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public getHandleCodeInApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzf:Z

    return v0
.end method

.method public getIOSBundleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidPackageName(Ljava/lang/String;ZLjava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzc:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzd:Z

    iput-object p3, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public setDynamicLinkDomain(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public setHandleCodeInApp(Z)Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzf:Z

    return-object p0
.end method

.method public setIOSBundleId(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method
