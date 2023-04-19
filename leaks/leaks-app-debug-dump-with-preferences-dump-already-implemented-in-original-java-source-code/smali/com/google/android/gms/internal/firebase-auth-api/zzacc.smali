.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzacc;
.super Ljava/lang/RuntimeException;
.source "com.google.firebase:firebase-auth@@20.0.4"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabd;)V
    .locals 0

    .line 1
    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
