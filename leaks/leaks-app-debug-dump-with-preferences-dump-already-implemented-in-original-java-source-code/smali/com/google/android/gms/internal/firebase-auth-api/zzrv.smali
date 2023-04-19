.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzrv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzrw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrw;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzrw;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztr;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 1
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzuf;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zze:Lcom/google/firebase/auth/FirebaseUser;

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmt;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzrw;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    .line 4
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuf;->zzo(Lcom/google/android/gms/internal/firebase-auth-api/zzmt;Lcom/google/android/gms/internal/firebase-auth-api/zzuc;)V

    return-void
.end method
