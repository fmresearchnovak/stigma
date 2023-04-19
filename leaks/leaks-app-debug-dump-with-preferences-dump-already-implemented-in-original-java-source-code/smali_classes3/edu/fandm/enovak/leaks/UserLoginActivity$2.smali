.class Ledu/fandm/enovak/leaks/UserLoginActivity$2;
.super Ljava/lang/Object;
.source "UserLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/fandm/enovak/leaks/UserLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

.field final synthetic val$fbAuth:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Ledu/fandm/enovak/leaks/UserLoginActivity;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0
    .param p1, "this$0"    # Ledu/fandm/enovak/leaks/UserLoginActivity;

    .line 57
    iput-object p1, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

    iput-object p2, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->val$fbAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 61
    iget-object v0, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Ledu/fandm/enovak/leaks/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "email":Ljava/lang/String;
    iget-object v1, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->this$0:Ledu/fandm/enovak/leaks/UserLoginActivity;

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Ledu/fandm/enovak/leaks/UserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "password":Ljava/lang/String;
    iget-object v2, p0, Ledu/fandm/enovak/leaks/UserLoginActivity$2;->val$fbAuth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 66
    .local v2, "s":Lcom/google/android/gms/tasks/Task;
    new-instance v3, Ledu/fandm/enovak/leaks/UserLoginActivity$2$1;

    invoke-direct {v3, p0}, Ledu/fandm/enovak/leaks/UserLoginActivity$2$1;-><init>(Ledu/fandm/enovak/leaks/UserLoginActivity$2;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 79
    return-void
.end method
