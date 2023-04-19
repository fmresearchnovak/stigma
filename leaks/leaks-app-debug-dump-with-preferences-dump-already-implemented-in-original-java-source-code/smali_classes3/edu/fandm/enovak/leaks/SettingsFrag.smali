.class public Ledu/fandm/enovak/leaks/SettingsFrag;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SettingsFrag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 10
    const/high16 v0, 0x7f0f0000

    invoke-virtual {p0, v0, p2}, Ledu/fandm/enovak/leaks/SettingsFrag;->setPreferencesFromResource(ILjava/lang/String;)V

    .line 11
    return-void
.end method
