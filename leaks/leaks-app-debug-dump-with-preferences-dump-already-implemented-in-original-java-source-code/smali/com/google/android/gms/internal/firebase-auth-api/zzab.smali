.class final Lcom/google/android/gms/internal/firebase-auth-api/zzab;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzad;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzae;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzs;

    .line 1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzs;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase-auth-api/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;

    .line 2
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzab;Lcom/google/android/gms/internal/firebase-auth-api/zzae;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase-auth-api/zzr;)V

    return-object v1
.end method
