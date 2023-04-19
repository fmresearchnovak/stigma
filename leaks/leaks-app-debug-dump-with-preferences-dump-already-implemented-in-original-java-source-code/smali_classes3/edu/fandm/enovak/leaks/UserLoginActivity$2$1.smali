.class Ledu/fandm/enovak/leaks/UserLoginActivity$2$1;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/fandm/enovak/leaks/UserLoginActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$2;


# direct methods
.method constructor <init>(Ledu/fandm/enovak/leaks/UserLoginActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Ledu/fandm/enovak/leaks/UserLoginActivity$2;

    .line 66
    iput-object p1, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$2;

    iget-object v0, v0, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->val$fbAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 71
    .local v0, "user":Lcom/google/firebase/auth/FirebaseUser;
    iget-object v1, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$2;

    iget-object v1, v1, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

    invoke-virtual {v1}, Ledu/fandm/enovak/leaks/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "Login Successful!"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 72
    iget-object v1, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$2;

    iget-object v1, v1, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Ledu/fandm/enovak/leaks/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, "tv":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login Successful!\nUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .end local v0    # "user":Lcom/google/firebase/auth/FirebaseUser;
    .end local v1    # "tv":Landroid/widget/TextView;
    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$2;

    iget-object v0, v0, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

    invoke-virtual {v0}, Ledu/fandm/enovak/leaks/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Failed to login :("

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    :goto_0
    return-void
.end method
