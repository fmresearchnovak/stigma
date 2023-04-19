.class final Lcom/google/android/gms/internal/firebase-auth-api/zzt;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzr;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field final zza:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzr;-><init>()V

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzt;->zza:Ljava/util/regex/Matcher;

    return-void

    .line 0
    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
