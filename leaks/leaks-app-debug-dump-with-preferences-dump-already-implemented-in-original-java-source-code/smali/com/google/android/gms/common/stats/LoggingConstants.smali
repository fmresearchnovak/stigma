.class public final Lcom/google/android/gms/common/stats/LoggingConstants;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# static fields
.field public static final EXTRA_WAKE_LOCK_KEY:Ljava/lang/String; = "WAKE_LOCK_KEY"

.field private static LOG_LEVEL_OFF:I

.field public static final zzfo:Landroid/content/ComponentName;

.field private static zzfp:I

.field private static zzfq:I

.field private static zzfr:I

.field private static zzfs:I

.field private static zzft:I

.field private static zzfu:I

.field private static zzfv:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfo:Landroid/content/ComponentName;

    .line 3
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->LOG_LEVEL_OFF:I

    .line 4
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfp:I

    .line 5
    const/4 v1, 0x2

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfq:I

    .line 6
    const/4 v1, 0x4

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfr:I

    .line 7
    const/16 v1, 0x8

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfs:I

    .line 8
    const/16 v1, 0x10

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzft:I

    .line 9
    const/16 v1, 0x20

    sput v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfu:I

    .line 10
    sput v0, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfv:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
