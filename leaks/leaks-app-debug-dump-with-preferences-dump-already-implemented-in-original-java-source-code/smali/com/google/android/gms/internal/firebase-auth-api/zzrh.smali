.class final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzrh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrh;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzri;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztr;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzri;->zzd(Lcom/google/android/gms/internal/firebase-auth-api/zztr;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
