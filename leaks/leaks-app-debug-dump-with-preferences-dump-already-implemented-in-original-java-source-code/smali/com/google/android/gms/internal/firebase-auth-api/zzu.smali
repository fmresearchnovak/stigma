.class final Lcom/google/android/gms/internal/firebase-auth-api/zzu;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzs;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final zza:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzs;-><init>()V

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzu;->zza:Ljava/util/regex/Pattern;

    return-void

    .line 0
    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzu;->zza:Ljava/util/regex/Pattern;

    .line 1
    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase-auth-api/zzr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzu;->zza:Ljava/util/regex/Pattern;

    .line 1
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzt;-><init>(Ljava/util/regex/Matcher;)V

    return-object v0
.end method
