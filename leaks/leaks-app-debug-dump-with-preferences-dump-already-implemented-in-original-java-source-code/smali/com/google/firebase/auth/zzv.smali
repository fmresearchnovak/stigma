.class final synthetic Lcom/google/firebase/auth/zzv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field static final zza:Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/auth/zzv;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzv;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/zzv;->zza:Lcom/google/firebase/components/ComponentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/google/firebase/auth/FirebaseAuthRegistrar;->zza:I

    const-class v0, Lcom/google/firebase/FirebaseApp;

    .line 1
    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    .line 2
    new-instance v0, Lcom/google/firebase/auth/internal/zzv;

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/internal/zzv;-><init>(Lcom/google/firebase/FirebaseApp;)V

    return-object v0
.end method
