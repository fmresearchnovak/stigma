.class public Ledu/fandm/enovak/leaks/DoubleMoveResultTestClass;
.super Ljava/lang/Object;
.source "does_not_exist.java"

# methods
.method public putExtraData(Landroid/support/v4/app/SupportActivity$ExtraData;)V
    .locals 6
    .param p1, "extraData"    # Landroid/support/v4/app/SupportActivity$ExtraData;

    .line 69
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_DoubleMoveResultTestClass_putExtraData_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_DoubleMoveResultTestClass_putExtraData_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object/16 v2, p0
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_DoubleMoveResultTestClass_putExtraData_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_DoubleMoveResultTestClass_putExtraData_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object/16 v3, p1
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_v2_mExtraDataMap:F
    
    sput v4, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_DoubleMoveResultTestClass_putExtraData_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v0, v2, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v4, 0x0
    
    sget v5, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_DoubleMoveResultTestClass_putExtraData_v3:F
    
    add-float v4, v4, v5
    
    sput v4, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_DoubleMoveResultTestClass_putExtraData_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    
    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method
