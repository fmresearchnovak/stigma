.class public Ledu/fandm/enovak/leaks/AdditionTest;
.super Ljava/lang/Object;
.source "AdditionTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AdditionTestFunction()V
    .locals 3

    .line 6
    const/4 v0, 0x4

    .line 7
    .local v0, "x":I
    const/16 v1, 0x9

    .line 8
    .local v1, "y":I
    add-int v2, v0, v1

    .line 9
    .local v2, "z":I
    return-void
.end method
