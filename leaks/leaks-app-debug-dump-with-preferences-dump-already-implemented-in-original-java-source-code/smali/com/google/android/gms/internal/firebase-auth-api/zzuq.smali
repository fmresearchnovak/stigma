.class final Lcom/google/android/gms/internal/firebase-auth-api/zzuq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzvf;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzvv;


# instance fields
.field zza:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzup;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzup;Lcom/google/android/gms/internal/firebase-auth-api/zzvj;Lcom/google/android/gms/internal/firebase-auth-api/zzug;Lcom/google/android/gms/internal/firebase-auth-api/zzuh;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzf:Landroid/content/Context;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzup;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzup;

    .line 4
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzv(Lcom/google/android/gms/internal/firebase-auth-api/zzvj;Lcom/google/android/gms/internal/firebase-auth-api/zzug;Lcom/google/android/gms/internal/firebase-auth-api/zzuh;)V

    .line 5
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvw;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzvv;)V

    return-void
.end method

.method private final zzv(Lcom/google/android/gms/internal/firebase-auth-api/zzvj;Lcom/google/android/gms/internal/firebase-auth-api/zzug;Lcom/google/android/gms/internal/firebase-auth-api/zzuh;)V
    .locals 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    .line 1
    const-string p1, "firebear.secureToken"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvt;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "LocalClient"

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvw;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Found hermetic configuration for secureToken URL: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    if-nez p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    :cond_2
    nop

    .line 6
    const-string p1, "firebear.identityToolkit"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvt;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvw;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 9
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Found hermetic configuration for identityToolkit URL: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    if-nez p2, :cond_5

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzug;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    :cond_5
    nop

    .line 11
    const-string p1, "firebear.identityToolkitV2"

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvt;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvw;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 14
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Found hermetic configuration for identityToolkitV2 URL: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_7
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_5
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    if-nez p2, :cond_8

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    :cond_8
    return-void
.end method

.method private final zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzup;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzup;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    return-object v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzv(Lcom/google/android/gms/internal/firebase-auth-api/zzvj;Lcom/google/android/gms/internal/firebase-auth-api/zzug;Lcom/google/android/gms/internal/firebase-auth-api/zzuh;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzwk;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwk;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/token"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzxy;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxy;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxz;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/verifyCustomToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzxz;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzd(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzxv;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxv;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxx;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v1, "/verifyAssertion"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxx;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/firebase-auth-api/zzxn;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/signupNewUser"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzf(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzyb;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzyb;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzyc;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v1, "/verifyPassword"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzxf;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxf;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxg;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/resetPassword"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzwl;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwl;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/getAccountInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/firebase-auth-api/zzxl;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxl;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/setAccountInfo"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzxm;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/firebase-auth-api/zzvz;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvz;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwa;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/createAuthUri"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwa;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/firebase-auth-api/zzws;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzws;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwt;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzws;->zzg()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzws;->zzg()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/ActionCodeSettings;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 4
    const-string v2, "/getOobConfirmationCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwt;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 5
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/firebase-auth-api/zzxi;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxi;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxk;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 5
    const-string v2, "/sendVerificationCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzxk;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 6
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzm(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzyd;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzyd;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzye;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v1, "/verifyPhoneNumber"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzye;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/firebase-auth-api/zzwc;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwc;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/deleteAccount"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzo(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzb(Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzpp;

    iget-object p1, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzpp;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzm()V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/firebase-auth-api/zzwd;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwd;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwe;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzug;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/emailLinkSignin"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzug;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/firebase-auth-api/zzxp;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxp;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxq;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxp;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxp;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 5
    const-string v2, "/mfaEnrollment:start"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzxq;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 6
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzr(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzwf;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwf;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwg;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v1, "/mfaEnrollment:finalize"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/firebase-auth-api/zzyf;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzyf;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzyg;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v2, "/mfaEnrollment:withdraw"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzyg;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/firebase-auth-api/zzxr;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxr;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxs;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzc()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzw()Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 5
    const-string v2, "/mfaSignIn:start"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzxs;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 6
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method

.method public final zzu(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzwh;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwh;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwi;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuq;->zzg:Ljava/lang/String;

    .line 3
    const-string v1, "/mfaSignIn:finalize"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztz;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwi;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzur;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzun;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V

    return-void
.end method
