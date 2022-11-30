.class public Lcom/example/jsondumper/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/example/jsondumper/MainActivity;->setContentView(I)V

    .line 13
    new-instance v0, Lcom/example/jsondumper/Vegetable;

    const-string v1, "Tomato"

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {v0, v1, v2, v3}, Lcom/example/jsondumper/Vegetable;-><init>(Ljava/lang/String;D)V

    .line 14
    .local v0, "veg":Lcom/example/jsondumper/Vegetable;
    invoke-static {v0, p0}, Lcom/example/jsondumper/JSON_dumper;->json_dumper_func(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 15
    const-string v1, "Red"

    iput-object v1, v0, Lcom/example/jsondumper/Vegetable;->color:Ljava/lang/String;

    .line 16
    invoke-static {v0, p0}, Lcom/example/jsondumper/JSON_dumper;->json_dumper_func(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 17
    new-instance v1, Lcom/example/jsondumper/Vegetable;

    const-string v2, "Onion"

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    invoke-direct {v1, v2, v3, v4}, Lcom/example/jsondumper/Vegetable;-><init>(Ljava/lang/String;D)V

    .line 18
    .local v1, "veg2":Lcom/example/jsondumper/Vegetable;
    invoke-static {v1, p0}, Lcom/example/jsondumper/JSON_dumper;->json_dumper_func(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 19
    return-void
.end method
