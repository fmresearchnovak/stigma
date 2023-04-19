.class final Landroidx/preference/CollapsiblePreferenceGroupController;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasExpandablePreference:Z

.field final mPreferenceGroupAdapter:Landroidx/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroup;Landroidx/preference/PreferenceGroupAdapter;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroidx/preference/PreferenceGroup;
    .param p2, "preferenceGroupAdapter"    # Landroidx/preference/PreferenceGroupAdapter;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 42
    iput-object p2, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroidx/preference/PreferenceGroupAdapter;

    .line 43
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    .locals 4
    .param p1, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;)",
            "Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;"
        }
    .end annotation

    .line 142
    .local p2, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    new-instance v0, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;

    iget-object v1, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 144
    .local v0, "preference":Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    new-instance v1, Landroidx/preference/CollapsiblePreferenceGroupController$1;

    invoke-direct {v1, p0, p1}, Landroidx/preference/CollapsiblePreferenceGroupController$1;-><init>(Landroidx/preference/CollapsiblePreferenceGroupController;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v0, v1}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    return-object v0
.end method

.method private createInnerVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 12
    .param p1, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "visiblePreferenceCount":I
    nop

    .line 60
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 61
    .local v0, "hasExpandablePreference":Z
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v2, "visiblePreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v3, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 65
    .local v4, "groupSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_b

    .line 66
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    .line 68
    .local v6, "preference":Landroidx/preference/Preference;
    invoke-virtual {v6}, Landroidx/preference/Preference;->isVisible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 69
    goto :goto_7

    .line 72
    :cond_1
    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    goto :goto_1

    .line 76
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_3
    :goto_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_2
    instance-of v7, v6, Landroidx/preference/PreferenceGroup;

    if-nez v7, :cond_4

    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_7

    .line 85
    :cond_4
    move-object v7, v6

    check-cast v7, Landroidx/preference/PreferenceGroup;

    .line 86
    .local v7, "innerGroup":Landroidx/preference/PreferenceGroup;
    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v8

    if-nez v8, :cond_5

    .line 87
    goto :goto_7

    .line 91
    :cond_5
    invoke-direct {p0, v7}, Landroidx/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v8

    .line 92
    .local v8, "innerList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    if-eqz v0, :cond_7

    iget-boolean v9, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-nez v9, :cond_6

    goto :goto_3

    .line 93
    :cond_6
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Nested expand buttons are not supported!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 96
    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/preference/Preference;

    .line 97
    .local v10, "inner":Landroidx/preference/Preference;
    if-eqz v0, :cond_9

    .line 98
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v11

    if-ge v1, v11, :cond_8

    goto :goto_5

    .line 101
    :cond_8
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 99
    :cond_9
    :goto_5
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_6
    nop

    .end local v10    # "inner":Landroidx/preference/Preference;
    add-int/lit8 v1, v1, 0x1

    .line 104
    goto :goto_4

    .line 65
    .end local v6    # "preference":Landroidx/preference/Preference;
    .end local v7    # "innerGroup":Landroidx/preference/PreferenceGroup;
    .end local v8    # "innerList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 109
    .end local v5    # "i":I
    :cond_b
    if-eqz v0, :cond_c

    .line 110
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v5

    if-le v1, v5, :cond_c

    .line 111
    invoke-direct {p0, p1, v3}, Landroidx/preference/CollapsiblePreferenceGroupController;->createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;

    move-result-object v5

    .line 112
    .local v5, "expandButton":Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v5    # "expandButton":Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    :cond_c
    iget-boolean v5, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    or-int/2addr v5, v0

    iput-boolean v5, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 115
    return-object v2
.end method


# virtual methods
.method public createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 1
    .param p1, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Landroidx/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .line 125
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method
