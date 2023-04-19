.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzuk;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzqa;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;


# instance fields
.field private final zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzui;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzqa;-><init>()V

    .line 1
    const-string p2, "A valid API key must be provided"

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzb:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzb:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zza:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zza:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzb:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zza:Z

    xor-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public final bridge synthetic zza()Lcom/google/android/gms/internal/firebase-auth-api/zzqa;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zzb:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    .line 2
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzui;)V

    return-object v1
.end method
