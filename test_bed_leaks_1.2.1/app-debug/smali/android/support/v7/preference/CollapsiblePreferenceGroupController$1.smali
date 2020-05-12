.class Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createExpandButton(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

.field final synthetic val$group:Landroid/support/v7/preference/PreferenceGroup;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    .line 144
    iput-object p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    iput-object p2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->val$group:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 147
    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->val$group:Landroid/support/v7/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 148
    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    iget-object v0, v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    .line 149
    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->val$group:Landroid/support/v7/preference/PreferenceGroup;

    .line 150
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getOnExpandButtonClickListener()Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;

    move-result-object v0

    .line 151
    .local v0, "listener":Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Landroid/support/v7/preference/PreferenceGroup$OnExpandButtonClickListener;->onExpandButtonClick()V

    .line 154
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
