.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"


.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 9

    move v5, p3

    const/4 v0, 0x0

    :goto_1  # v0 comes in with value of v6 from line 16, which is an object

    const/4 v1, 0x1

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1

    return-object v5
.end method