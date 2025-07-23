.class public Ledu/fandm/enovak/SlicingDebugClass;
.super Ljava/lang/Object;
.source "SlicingDebugClass.java"


# static fields
.field private static final MY_INSTANCE_VAR:I = 0x1

.field private static final PERMS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private host:Ljava/lang/String;

.field private imeiNumber:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const-class v0, Ledu/fandm/enovak/leaks/Main;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.INTERNET"

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move v3, v0

    move-result-object v0

    sput-object v0, Ledu/fandm/enovak/leaks/Main;->PERMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method