.class final Lcom/google/android/gms/internal/firebase-auth-api/zzbs;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzas;
.source "com.google.firebase:firebase-auth@@20.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzas<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzag;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzeu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzas;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbx;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzfa;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzkx;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzat;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkx;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzed;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzed;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzhr;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzat;->zzf(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzeu;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzhr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzhx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhx;->zzb()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkx;Lcom/google/android/gms/internal/firebase-auth-api/zzaz;I)V

    return-object v0
.end method
