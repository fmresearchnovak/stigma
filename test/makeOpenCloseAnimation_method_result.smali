.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

# methods
# methods
.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startScale"    # F
    .param p2, "endScale"    # F
    .param p3, "startAlpha"    # F
    .param p4, "endAlpha"    # F

    .line 1138
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v11:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v12:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v13:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v14:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_p4:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v15:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v11, p0
    
    move/16 v12, p1
    
    move/16 v13, p2
    
    move/16 v14, p3
    
    move/16 v15, p4
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v1, 0x0
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v0, Landroid/view/animation/AnimationSet;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1139
    .local v0, "set":Landroid/view/animation/AnimationSet;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v10:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v6, 0x1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v7:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/high16 v7, 0x3f000000    # 0.5f

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v8:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v8, 0x1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v9:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/high16 v9, 0x3f000000    # 0.5f

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v10:F
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v1, v10

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v12:F
    
    sput v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v2, v12

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v13:F
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v3:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v3, v13

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v12:F
    
    sput v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v4, v12

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v13:F
    
    sput v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    
    move-object/16 v11, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    move v5, v13

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    move/16 v17, v12
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1141
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    
    move-object/16 v11, v16
    move/16 v12, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SGET
    
    sget v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl__DECELERATE_QUINT:F
    
    sput v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SGET
    
    
    move-object/16 v11, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    sget-object v2, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    move/16 v17, v12
    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1142
    
    move-object/16 v11, v16
    move/16 v12, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v11, 0x0
    
    sput v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    
    move-object/16 v11, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    const-wide/16 v2, 0xdc

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    move/16 v17, v12
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1143
    
    move-object/16 v11, v16
    move/16 v12, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    move/16 v17, v12
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    
    move-object/16 v11, v16
    move/16 v12, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v11, 0x0
    
    sput v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v4:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    
    move-object/16 v11, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    move/16 v17, v12
    invoke-direct {v4, v14, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    # custom lines written to exhibit the case "external method WITH subsequent move-result"

    
    move-object/16 v11, v16
    move/16 v12, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    move/16 v17, v12
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v11, 0x0
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v4:F
    
    add-float v11, v11, v12
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v14:F
    
    add-float v11, v11, v12
    
    sget v12, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v15:F
    
    add-float v11, v11, v12
    
    sput v11, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-direct {v4, v14, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
    
    move-result v0
    
    move-object/16 v11, v16
    move/16 v12, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    

    # end of custom lines

    .line 1145
    .local v4, "alpha":Landroid/view/animation/AlphaAnimation;
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SGET
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl__DECELERATE_CUBIC:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SGET
    
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    sget-object v5, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    move-object/16 v17, v11
    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    
    move/16 v0, v16
    move-object/16 v11, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    move-object/16 v17, v11
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1147
    
    move/16 v0, v16
    move-object/16 v11, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    move/16 v17, v12
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    
    move-object/16 v11, v16
    move/16 v12, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v0, 0x0
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move-object/16 v16, v11
    move/16 v17, v12
    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    
    move-object/16 v11, v16
    move/16 v12, v17
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    move/16 v16, v0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    
    move/16 v0, v16
    # IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers
    
    return-object v2
.end method
