.class final Ledu/enovak/random_method1_cropped;;
.method public leakPasswd(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 181
    const v0, 0x7f070050

    # this following is not valid code

    int-to-long v5, v5

    # the next instruction implicitly destroys the long stored in v5
    # this behavior was found in the Wealthfront app

    add-long v6, v0, v5

    return-void
.end method