.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzgd;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzzw;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzzw<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzge;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzgd;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzabe;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzge;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzge;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgc;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzge;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzge;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzgd;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzb:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzi()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzb:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzge;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzge;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzge;I)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)Lcom/google/android/gms/internal/firebase-auth-api/zzgd;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzi()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzge;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzge;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzge;Lcom/google/android/gms/internal/firebase-auth-api/zzyy;)V

    return-object p0
.end method
