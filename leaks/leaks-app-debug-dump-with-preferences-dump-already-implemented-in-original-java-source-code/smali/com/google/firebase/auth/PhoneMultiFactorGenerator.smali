.class public Lcom/google/firebase/auth/PhoneMultiFactorGenerator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# static fields
.field public static final FACTOR_ID:Ljava/lang/String; = "phone"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssertion(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/firebase/auth/PhoneMultiFactorAssertion;
    .locals 1
    .param p0, "phoneAuthCredential"    # Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 1
    .end local p0    # "phoneAuthCredential":Lcom/google/firebase/auth/PhoneAuthCredential;
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-object v0
.end method
