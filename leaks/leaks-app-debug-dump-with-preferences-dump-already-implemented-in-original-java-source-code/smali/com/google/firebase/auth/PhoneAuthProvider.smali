.class public Lcom/google/firebase/auth/PhoneAuthProvider;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;,
        Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    }
.end annotation


# static fields
.field public static final PHONE_SIGN_IN_METHOD:Ljava/lang/String; = "phone"

.field public static final PROVIDER_ID:Ljava/lang/String; = "phone"


# instance fields
.field private zza:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method private constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthProvider;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method

.method public static getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 0
    .param p0, "verificationId"    # Ljava/lang/String;
    .param p1, "smsCode"    # Ljava/lang/String;

    .line 1
    .end local p0    # "verificationId":Ljava/lang/String;
    .end local p1    # "smsCode":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/google/firebase/auth/PhoneAuthProvider;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/firebase/auth/PhoneAuthProvider;

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/PhoneAuthProvider;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;
    .locals 1
    .param p0, "firebaseAuth"    # Lcom/google/firebase/auth/FirebaseAuth;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/firebase/auth/PhoneAuthProvider;

    .line 2
    .end local p0    # "firebaseAuth":Lcom/google/firebase/auth/FirebaseAuth;
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/PhoneAuthProvider;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method public static verifyPhoneNumber(Lcom/google/firebase/auth/PhoneAuthOptions;)V
    .locals 1
    .param p0, "options"    # Lcom/google/firebase/auth/PhoneAuthOptions;

    .line 1
    .end local p0    # "options":Lcom/google/firebase/auth/PhoneAuthOptions;
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthOptions;->zza()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzl(Lcom/google/firebase/auth/PhoneAuthOptions;)V

    return-void
.end method


# virtual methods
.method public verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p6, "callbacks"    # Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .end local p0    # "this":Lcom/google/firebase/auth/PhoneAuthProvider;
    .end local p1    # "phoneNumber":Ljava/lang/String;
    .end local p2    # "timeout":J
    .end local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p5    # "activity":Landroid/app/Activity;
    .end local p6    # "callbacks":Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthProvider;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthOptions;->newBuilder(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setTimeout(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    .line 6
    invoke-virtual {v0, p5}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setActivity(Landroid/app/Activity;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    .line 7
    invoke-virtual {v0, p6}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setCallbacks(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->build()Lcom/google/firebase/auth/PhoneAuthOptions;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Lcom/google/firebase/auth/PhoneAuthOptions;)V

    return-void
.end method

.method public verifyPhoneNumber(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p6, "callbacks"    # Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .param p7, "forceResendingToken"    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .end local p0    # "this":Lcom/google/firebase/auth/PhoneAuthProvider;
    .end local p1    # "phoneNumber":Ljava/lang/String;
    .end local p2    # "timeout":J
    .end local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    .end local p5    # "activity":Landroid/app/Activity;
    .end local p6    # "callbacks":Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .end local p7    # "forceResendingToken":Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthProvider;->zza:Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    invoke-static {v0}, Lcom/google/firebase/auth/PhoneAuthOptions;->newBuilder(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setTimeout(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    .line 13
    invoke-virtual {v0, p5}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setActivity(Landroid/app/Activity;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    .line 14
    invoke-virtual {v0, p6}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setCallbacks(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    if-eqz p7, :cond_0

    .line 15
    invoke-virtual {v0, p7}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->setForceResendingToken(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/PhoneAuthOptions$Builder;

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/PhoneAuthOptions$Builder;->build()Lcom/google/firebase/auth/PhoneAuthOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->verifyPhoneNumber(Lcom/google/firebase/auth/PhoneAuthOptions;)V

    return-void
.end method
