.class public final Lcom/google/android/gms/common/util/Base64Utils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeUrlSafe(Ljava/lang/String;)[B
    .locals 1

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeUrlSafeNoPadding(Ljava/lang/String;)[B
    .locals 1

    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x0

    return-object p0

    .line 10
    :cond_0
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .line 11
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafe([B)Ljava/lang/String;
    .locals 1

    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrlSafeNoPadding([B)Ljava/lang/String;
    .locals 1

    .line 17
    if-nez p0, :cond_0

    .line 18
    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
