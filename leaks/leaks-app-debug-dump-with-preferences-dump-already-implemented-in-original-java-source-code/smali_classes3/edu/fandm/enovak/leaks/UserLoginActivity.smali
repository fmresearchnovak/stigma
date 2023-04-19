.class public Ledu/fandm/enovak/leaks/UserLoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UserLoginActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/UserLoginActivity;->setContentView(I)V

    .line 29
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 31
    .local v0, "fbAuth":Lcom/google/firebase/auth/FirebaseAuth;
    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Ledu/fandm/enovak/leaks/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 32
    .local v1, "reg":Landroid/widget/Button;
    new-instance v2, Ledu/fandm/enovak/leaks/UserLoginActivity$1;

    invoke-direct {v2, p0, v0}, Ledu/fandm/enovak/leaks/UserLoginActivity$1;-><init>(Ledu/fandm/enovak/leaks/UserLoginActivity;Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v2, 0x7f070045

    invoke-virtual {p0, v2}, Ledu/fandm/enovak/leaks/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 57
    .local v2, "log":Landroid/widget/Button;
    new-instance v3, Ledu/fandm/enovak/leaks/UserLoginActivity$2;

    invoke-direct {v3, p0, v0}, Ledu/fandm/enovak/leaks/UserLoginActivity$2;-><init>(Ledu/fandm/enovak/leaks/UserLoginActivity;Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method
