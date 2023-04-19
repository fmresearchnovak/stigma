.class public Ledu/fandm/enovak/leaks/SimpleLeak;
.super Landroidx/appcompat/app/AppCompatActivity;
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
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

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

.method private experiment7()V
    .locals 2

    .line 43
    sget-object v0, Ledu/fandm/enovak/leaks/SimpleLeak;->TAG:Ljava/lang/String;

    const-string v1, "output: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method private getData(I)I
    .locals 1
    .param p1, "x"    # I

    .line 47
    add-int/lit8 v0, p1, 0x38

    return v0
.end method

.method private testTryCatch()V
    .locals 6

    .line 51
    const/16 v0, 0xf

    .line 52
    .local v0, "numerator":I
    const/4 v1, 0x0

    .line 54
    .local v1, "denominator":I
    const/4 v2, 0x0

    .line 56
    .local v2, "ans":I
    :try_start_0
    div-int v3, v0, v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "ae":Ljava/lang/ArithmeticException;
    const/4 v2, 0x2

    .line 61
    .end local v3    # "ae":Ljava/lang/ArithmeticException;
    :goto_0
    sget-object v3, Ledu/fandm/enovak/leaks/SimpleLeak;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "division answer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method


# virtual methods
.method public IMEI_LEAK(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 67
    new-instance v0, Ledu/fandm/enovak/leaks/SimpleLeak$1;

    invoke-direct {v0, p0}, Ledu/fandm/enovak/leaks/SimpleLeak$1;-><init>(Ledu/fandm/enovak/leaks/SimpleLeak;)V

    .line 111
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    return-void
.end method

.method public TooManyRegisters(IJD)V
    .locals 16
    .param p1, "a"    # I
    .param p2, "b"    # J
    .param p4, "c"    # D

    .line 115
    const/4 v0, 0x6

    .line 116
    .local v0, "d":I
    const/4 v1, 0x7

    .line 117
    .local v1, "e":I
    const/16 v2, 0x8

    .line 118
    .local v2, "f":I
    const/16 v3, 0x9

    .line 119
    .local v3, "g":I
    const/16 v4, 0xa

    .line 120
    .local v4, "h":I
    const/16 v5, 0xb

    .line 121
    .local v5, "i":I
    const/16 v6, 0xc

    .line 122
    .local v6, "j":I
    const/16 v7, 0xd

    .line 123
    .local v7, "k":I
    const/16 v8, 0xe

    .line 124
    .local v8, "l":I
    const/16 v9, 0xf

    .line 125
    .local v9, "m":I
    const/16 v10, 0x10

    .line 126
    .local v10, "n":I
    const/16 v11, 0x11

    .line 129
    .local v11, "o":I
    sget-object v12, Ledu/fandm/enovak/leaks/SimpleLeak;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "a: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v14, p1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "  b: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v14, p2

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  c: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v14, p4

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "d: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  e: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  f: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "g: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  h: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  i: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "j: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  k: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  l: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "m: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  n: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  o: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

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

    move-result-object v1

    const/16 v2, 0xf

    invoke-direct {p0, v2}, Ledu/fandm/enovak/leaks/SimpleLeak;->getData(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v3, 0x5

    const-wide/32 v4, 0x19c500f2

    const-wide v6, 0x4030c7ae147ae148L    # 16.78

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ledu/fandm/enovak/leaks/SimpleLeak;->TooManyRegisters(IJD)V

    .line 35
    invoke-direct {p0}, Ledu/fandm/enovak/leaks/SimpleLeak;->testTryCatch()V

    .line 37
    invoke-direct {p0}, Ledu/fandm/enovak/leaks/SimpleLeak;->experiment7()V

    .line 39
    return-void
.end method
