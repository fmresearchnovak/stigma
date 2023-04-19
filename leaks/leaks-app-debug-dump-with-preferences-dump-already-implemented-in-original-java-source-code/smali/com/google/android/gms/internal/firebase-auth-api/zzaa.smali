.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaa;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzac;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzab;Lcom/google/android/gms/internal/firebase-auth-api/zzae;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase-auth-api/zzr;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzr;

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzae;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final zzc(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzr;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzt;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzt;->zza:Ljava/util/regex/Matcher;

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzr;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzt;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzt;->zza:Ljava/util/regex/Matcher;

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final zzd(I)I
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzr;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzt;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzt;->zza:Ljava/util/regex/Matcher;

    .line 1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    return p1
.end method
