.class public Ledu/fandm/enovak/leaks/SimpleLeak;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SimpleLeak.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public blah:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Ledu/fandm/enovak/leaks/SimpleLeak;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledu/fandm/enovak/leaks/SimpleLeak;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Ledu/fandm/enovak/leaks/SimpleLeak;->blah:I

    return-void
.end method

.method static synthetic access$000(Ledu/fandm/enovak/leaks/SimpleLeak;I)I
    .locals 1
    .param p0, "x0"    # Ledu/fandm/enovak/leaks/SimpleLeak;
    .param p1, "x1"    # I

    .line 18
    invoke-direct {p0, p1}, Ledu/fandm/enovak/leaks/SimpleLeak;->getData(I)I

    move-result v0

    return v0
.end method

.method private getData(I)I
    .locals 1
    .param p1, "x"    # I

    .line 38
    add-int/lit8 v0, p1, 0x38

    return v0
.end method


# virtual methods
.method public IMEI_LEAK(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 43
    new-instance v0, Ledu/fandm/enovak/leaks/SimpleLeak$1;

    invoke-direct {v0, p0}, Ledu/fandm/enovak/leaks/SimpleLeak$1;-><init>(Ledu/fandm/enovak/leaks/SimpleLeak;)V

    .line 87
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/SimpleLeak;->setContentView(I)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/SimpleLeak;->IMEI_LEAK(Landroid/view/View;)V

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Ledu/fandm/enovak/leaks/SimpleLeak;->blah:I

    .line 32
    sget-object v0, Ledu/fandm/enovak/leaks/SimpleLeak;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    invoke-direct {p0, v2}, Ledu/fandm/enovak/leaks/SimpleLeak;->getData(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method
