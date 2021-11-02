.class public Ledu/fandm/enovak/leaks/DoubleMoveResultTestClass;
.super Ljava/lang/Object;
.source "does_not_exist.java"

# direct methods
.method public putExtraData(Landroid/support/v4/app/SupportActivity$ExtraData;)V
    .locals 2
    .param p1, "extraData"    # Landroid/support/v4/app/SupportActivity$ExtraData;

    .line 69
    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method