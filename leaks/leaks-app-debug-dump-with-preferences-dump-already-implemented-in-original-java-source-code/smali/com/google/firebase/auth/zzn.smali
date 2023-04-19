.class final Lcom/google/firebase/auth/zzn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/firebase/auth/internal/zzbk;


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/zzn;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzwv;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/zzn;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 1
    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzwv;ZZ)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    const/16 v0, 0x4273

    if-eq p1, v0, :cond_1

    const/16 v0, 0x427d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x426d

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    return-void

    .line 1
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/zzn;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    return-void
.end method
