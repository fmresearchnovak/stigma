.class Ledu/fandm/enovak/leaks/UserLoginActivity$1$1;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/fandm/enovak/leaks/UserLoginActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$1;


# direct methods
.method constructor <init>(Ledu/fandm/enovak/leaks/UserLoginActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Ledu/fandm/enovak/leaks/UserLoginActivity$1;

    .line 41
    iput-object p1, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$1$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$1$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$1;

    iget-object v0, v0, Ledu/fandm/enovak/leaks/UserLoginActivity$1;->val$fbAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 46
    .local v0, "user":Lcom/google/firebase/auth/FirebaseUser;
    iget-object v1, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$1$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$1;

    iget-object v1, v1, Ledu/fandm/enovak/leaks/UserLoginActivity$1;->this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

    invoke-virtual {v1}, Ledu/fandm/enovak/leaks/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "New User Created!"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 47
    .end local v0    # "user":Lcom/google/firebase/auth/FirebaseUser;
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$1$1;->this$1:Ledu/fandm/enovak/leaks/UserLoginActivity$1;

    iget-object v0, v0, Ledu/fandm/enovak/leaks/UserLoginActivity$1;->this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

    invoke-virtual {v0}, Ledu/fandm/enovak/leaks/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Failed to create new user :("

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    :goto_0
    return-void
.end method
