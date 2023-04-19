.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzae;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@20.0.4"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzp;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzad;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzad;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzae;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzad;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzae;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzp;

    return-void
.end method

.method public static zza(C)Lcom/google/android/gms/internal/firebase-auth-api/zzae;
    .locals 2

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzm;

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzm;-><init>(C)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzae;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzz;

    .line 1
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzp;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzae;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzad;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzae;
    .locals 3

    .line 1
    const-string p0, "[.-]"

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzs;

    move-result-object p0

    .line 2
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzs;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase-auth-api/zzr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzt;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzt;->zza:Ljava/util/regex/Matcher;

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzae;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzab;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzs;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzae;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzad;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 5
    const-string p0, "The pattern may not match the empty string: %s"

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaf;->zzd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/firebase-auth-api/zzae;)Lcom/google/android/gms/internal/firebase-auth-api/zzp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzae;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzp;

    return-object p0
.end method


# virtual methods
.method public final zzc(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzae;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzad;

    .line 1
    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzad;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzae;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
