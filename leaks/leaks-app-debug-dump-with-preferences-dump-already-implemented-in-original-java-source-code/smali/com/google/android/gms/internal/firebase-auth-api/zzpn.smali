.class final Lcom/google/android/gms/internal/firebase-auth-api/zzpn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzve;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzve<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzve;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzpo;Lcom/google/android/gms/internal/firebase-auth-api/zzve;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzve;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzve;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzpn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzpo;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzpo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zze()V

    return-void
.end method
