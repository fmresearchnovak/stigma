.class public Lcom/google/android/gms/common/internal/SignInButtonConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@17.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/SignInButtonConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zali:I

.field private final zaoc:[Lcom/google/android/gms/common/api/Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zapr:I

.field private final zaps:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/common/internal/zao;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zao;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zali:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zapr:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zaps:I

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zaoc:[Lcom/google/android/gms/common/api/Scope;

    .line 6
    return-void
.end method

.method public constructor <init>(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 1

    .line 7
    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getButtonSize()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zapr:I

    return v0
.end method

.method public getColorScheme()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zaps:I

    return v0
.end method

.method public getScopes()[Lcom/google/android/gms/common/api/Scope;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zaoc:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 12
    nop

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 14
    iget v1, p0, Lcom/google/android/gms/common/internal/SignInButtonConfig;->zali:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 15
    nop

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;->getButtonSize()I

    move-result v1

    .line 17
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 18
    nop

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;->getColorScheme()I

    move-result v1

    .line 20
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 21
    nop

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;->getScopes()[Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    .line 23
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 25
    return-void
.end method
