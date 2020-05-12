.class Landroid/support/v14/preference/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v14/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/support/v14/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v14/preference/PreferenceFragment;

    .line 150
    iput-object p1, p0, Landroid/support/v14/preference/PreferenceFragment$2;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    iget-object v0, p0, Landroid/support/v14/preference/PreferenceFragment$2;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    iget-object v0, v0, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v14/preference/PreferenceFragment$2;->this$0:Landroid/support/v14/preference/PreferenceFragment;

    iget-object v1, v1, Landroid/support/v14/preference/PreferenceFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    .line 154
    return-void
.end method
