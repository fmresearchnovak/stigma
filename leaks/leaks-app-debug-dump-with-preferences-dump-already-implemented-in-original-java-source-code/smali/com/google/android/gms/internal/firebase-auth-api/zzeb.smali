.class final Lcom/google/android/gms/internal/firebase-auth-api/zzeb;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzas;
.source "com.google.firebase:firebase-auth@@20.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzas<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaz;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzhr;",
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzhx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzhx;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzyy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyy;->zzp()[B

    move-result-object v1

    .line 4
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhr;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzhx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzhx;->zzb()I

    move-result p1

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzho;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 12
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    .line 10
    const-string v3, "HMACSHA224"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzei;I)V

    goto :goto_0

    .line 6
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    .line 7
    const-string v3, "HMACSHA512"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzei;I)V

    goto :goto_0

    .line 8
    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    .line 9
    const-string v3, "HMACSHA256"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzei;I)V

    goto :goto_0

    .line 7
    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    .line 8
    const-string v3, "HMACSHA384"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzei;I)V

    goto :goto_0

    .line 12
    :pswitch_4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;

    .line 11
    const-string v3, "HMACSHA1"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlb;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzei;I)V

    .line 7
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
