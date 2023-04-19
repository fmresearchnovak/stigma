.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzql;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzqm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzqm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzql;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzqm;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzql;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzqm;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztr;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 1
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztr;->zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzuf;

    move-result-object p1

    iget-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmb;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzqm;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzuz;

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuf;->zzh(Lcom/google/android/gms/internal/firebase-auth-api/zzmb;Lcom/google/android/gms/internal/firebase-auth-api/zzuc;)V

    return-void
.end method
