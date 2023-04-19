.class public final Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/GmsClientSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "zza"
.end annotation


# static fields
.field private static final zzem:Landroid/net/Uri;


# instance fields
.field private final componentName:Landroid/content/ComponentName;

.field private final packageName:Ljava/lang/String;

.field private final zzej:Ljava/lang/String;

.field private final zzek:I

.field private final zzel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 55
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.gms.chimera"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzem:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->packageName:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->componentName:Landroid/content/ComponentName;

    .line 16
    const/16 p1, 0x81

    iput p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzek:I

    .line 17
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzel:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string p2, "com.google.android.gms"

    const/16 v0, 0x81

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->packageName:Ljava/lang/String;

    .line 8
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->componentName:Landroid/content/ComponentName;

    .line 9
    iput p3, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzek:I

    .line 10
    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzel:Z

    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 45
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 46
    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 48
    return v2

    .line 49
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 50
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->packageName:Ljava/lang/String;

    .line 51
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->componentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->componentName:Landroid/content/ComponentName;

    .line 52
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzek:I

    iget v3, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzek:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzel:Z

    iget-boolean p1, p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzel:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    nop

    .line 53
    return v2
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->componentName:Landroid/content/ComponentName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzek:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzb(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 23
    nop

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 25
    nop

    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 27
    nop

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    const-string v3, "serviceActionBundleKey"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzem:Landroid/net/Uri;

    .line 32
    const-string v3, "serviceIntentCall"

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "serviceResponseIntentKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    move-object v1, p1

    .line 36
    :goto_0
    if-nez v1, :cond_2

    .line 37
    const-string p1, "Dynamic lookup for intent failed for action: "

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_1
    const-string v0, "ConnectionStatusConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_2
    nop

    .line 40
    :cond_3
    if-nez v1, :cond_5

    .line 41
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzej:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_2

    .line 42
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 43
    :cond_5
    :goto_2
    return-object v1
.end method

.method public final zzq()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzek:I

    return v0
.end method
