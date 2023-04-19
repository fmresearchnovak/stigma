.class public Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# static fields
.field private static zaam:I


# instance fields
.field private zaan:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaam:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaan:I

    .line 3
    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .locals 2

    .line 4
    sget v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaam:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaan:I

    mul-int v0, v0, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaan:I

    .line 5
    return-object p0
.end method

.method public hash()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaan:I

    return v0
.end method

.method public final zaa(Z)Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;
    .locals 2

    .line 6
    sget v0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaam:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaan:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/HashAccumulator;->zaan:I

    .line 7
    return-object p0
.end method
