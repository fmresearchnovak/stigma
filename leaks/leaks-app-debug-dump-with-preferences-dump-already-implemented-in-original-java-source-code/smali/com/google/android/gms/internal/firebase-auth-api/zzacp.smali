.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzacp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final zza([BII)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;->zzb(I[BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method abstract zzb(I[BII)I
.end method
