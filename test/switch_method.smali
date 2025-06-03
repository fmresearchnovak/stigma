.class final Ledu/enovak/switch_method;
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .locals 2

    .param p1, "item"    # Landroid/view/MenuItem;

    .line 120

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128

    :pswitch_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/fandm/enovak/leaks/SimpleLeak;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129

    .local v0, "i":Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122

    .end local v0    # "i":Landroid/content/Intent;

    :pswitch_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/fandm/enovak/leaks/SettingsAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123

    .restart local v0    # "i":Landroid/content/Intent;

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V

    .line 124

    nop

    .line 133

    .end local v0    # "i":Landroid/content/Intent;

    :goto_0

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x7f070056
        :pswitch_1
        :pswitch_0
    .end packed-switch
    
.end method