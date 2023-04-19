.class public final Lcom/google/android/gms/common/util/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# static fields
.field private static zzhn:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/zzb;->zzhn:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zzc(I)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 2
    return v0

    .line 3
    :cond_0
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method
