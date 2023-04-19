.class final Lcom/google/android/gms/internal/firebase-auth-api/zzpb;
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
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzve;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

.field final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpc;Lcom/google/android/gms/internal/firebase-auth-api/zzve;Lcom/google/android/gms/internal/firebase-auth-api/zzwv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpc;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzve;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpc;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzk(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 6

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
    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;

    .line 6
    invoke-direct {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxl;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpc;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpc;->zza:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxl;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxl;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpc;

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzpy;

    iget-object v1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzve;

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzpy;->zzK(Lcom/google/android/gms/internal/firebase-auth-api/zzpy;Lcom/google/android/gms/internal/firebase-auth-api/zztq;Lcom/google/android/gms/internal/firebase-auth-api/zzwv;Lcom/google/android/gms/internal/firebase-auth-api/zzwo;Lcom/google/android/gms/internal/firebase-auth-api/zzxl;Lcom/google/android/gms/internal/firebase-auth-api/zzvd;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzve;

    .line 4
    const-string v0, "No users."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzve;->zza(Ljava/lang/String;)V

    return-void
.end method
