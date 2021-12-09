.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"



# methods
.method public onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 14
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 139
    .local p0, "this":Landroid/support/v4/app/FragmentHostCallback;, "Landroid/support/v4/app/FragmentHostCallback<TE;>;"
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v10:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v11:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v12:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v13:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p4:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v14:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p5:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v15:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p6:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v16:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p7:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v17:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_p8:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v18:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v10, p0
    
    move-object/16 v11, p1
    
    move-object/16 v12, p2
    
    move/16 v13, p3
    
    move-object/16 v14, p4
    
    move/16 v15, p5
    
    move/16 v16, p6
    
    move/16 v17, p7
    
    move-object/16 v18, p8
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v1, 0x0
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v0, -0x1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v13:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v9, v13

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v0:F
    
    const/16 v4, 0x0
    
    cmpl-float v4, v3, v4
    
    if-eqz v4, :stigma_jump_label_1
    
    const-string v1, "STIGMA"
    
    const-string v2, "Implicit flow involving sensitive data!"
    
    invoke-static {v1, v2},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v2
    
    invoke-static {v1, v2},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-ne v9, v0, :cond_0

    .line 143
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v10:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v0, v10

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    sget v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_v0_mActivity:F
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for IGET
    
    iget-object v1, v0, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v12:F
    
    sput v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v2, v12

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v13:F
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v3, v13

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v14:F
    
    sput v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v4, v14

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v6, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v15:F
    
    sput v6, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v5, v15

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v7, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v16:F
    
    sput v7, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move/from16 v6, v16

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v8, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v17:F
    
    sput v8, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move/from16 v7, v17

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v19, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v18:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v0, v19
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move-object/from16 v8, v18

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v19, v0
    move-object/16 v20, v10
    invoke-static/range {v1 .. v8}, Landroid/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 145
    
    move-object/16 v0, v19
    move-object/16 v10, v20
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    return-void
    :cond_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v10:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v0, v10

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v1, Ljava/lang/IllegalStateException;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v3, 0x0
    
    sput v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentHostCallback_onStartIntentSenderFromFragment_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

