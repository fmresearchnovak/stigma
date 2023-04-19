.class final Lcom/google/android/gms/internal/firebase-auth-api/zzol;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzve;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzwm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvd;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

.field final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

.field final synthetic zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzxl;

.field final synthetic zze:Lcom/google/android/gms/internal/firebase-auth-api/zzpy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpy;Lcom/google/android/gms/internal/firebase-auth-api/zzvd;Lcom/google/android/gms/internal/firebase-auth-api/zztq;Lcom/google/android/gms/internal/firebase-auth-api/zzwv;Lcom/google/android/gms/internal/firebase-auth-api/zzxl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzpy;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvd;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzxl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvd;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvd;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwm;->zzb()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzpy;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzxl;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvd;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;->zzK(Lcom/google/android/gms/internal/firebase-auth-api/zzpy;Lcom/google/android/gms/internal/firebase-auth-api/zztq;Lcom/google/android/gms/internal/firebase-auth-api/zzwv;Lcom/google/android/gms/internal/firebase-auth-api/zzwo;Lcom/google/android/gms/internal/firebase-auth-api/zzxl;Lcom/google/android/gms/internal/firebase-auth-api/zzvd;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzol;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvd;

    .line 4
    const-string v0, "No users"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvd;->zza(Ljava/lang/String;)V

    return-void
.end method
