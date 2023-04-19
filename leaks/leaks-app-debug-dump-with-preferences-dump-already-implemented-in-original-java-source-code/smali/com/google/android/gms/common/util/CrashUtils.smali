.class public final Lcom/google/android/gms/common/util/CrashUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# static fields
.field private static final zzgv:[Ljava/lang/String;

.field private static zzgw:Landroid/os/DropBoxManager;

.field private static zzgx:Z

.field private static zzgy:I

.field private static zzgz:I

.field private static zzha:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    const-string v0, "android."

    const-string v1, "com.android."

    const-string v2, "dalvik."

    const-string v3, "java."

    const-string v4, "javax."

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgv:[Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgw:Landroid/os/DropBoxManager;

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgx:Z

    .line 13
    const/4 v1, -0x1

    sput v1, Lcom/google/android/gms/common/util/CrashUtils;->zzgy:I

    .line 14
    sput v0, Lcom/google/android/gms/common/util/CrashUtils;->zzgz:I

    .line 15
    sput v0, Lcom/google/android/gms/common/util/CrashUtils;->zzha:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1

    .line 2
    const/high16 v0, 0x20000000

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .locals 1

    .line 3
    const/4 p2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p2

    .line 6
    :catch_0
    move-exception p0

    .line 7
    nop

    .line 8
    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    return p2
.end method
