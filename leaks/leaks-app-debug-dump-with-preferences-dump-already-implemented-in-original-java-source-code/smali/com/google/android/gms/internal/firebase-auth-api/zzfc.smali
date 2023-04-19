.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzfc;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzzw;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzzw<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzfd;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzfc;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzabe;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzfd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzfb;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzfd;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzfg;)Lcom/google/android/gms/internal/firebase-auth-api/zzfc;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzi()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;->zzg(Lcom/google/android/gms/internal/firebase-auth-api/zzfd;Lcom/google/android/gms/internal/firebase-auth-api/zzfg;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzfc;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzb:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzi()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzw;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzfc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaaa;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfd;->zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzfd;I)V

    return-object p0
.end method
