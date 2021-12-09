.class public Landroid/support/v4/app/SupportActivity;
.super Landroid/app/Activity;
.source "ComponentActivity.java"

# methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_onCreate_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_onCreate_v0:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_onCreate_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_onCreate_v1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v0, p0
    
    move-object/16 v1, p1
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    invoke-super {v0, v1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {v0}, Landroid/arch/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    .line 77
    return-void
.end method
