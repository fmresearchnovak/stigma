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
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
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
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v11, p0
    
    move/16 v12, p1
    
    move/16 v13, p2
    
    move/16 v14, p3
    
    move/16 v15, p4
    
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v1, 0x0
    
    sput v1, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v0, Landroid/view/animation/AnimationSet;

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1139
    .local v0, "set":Landroid/view/animation/AnimationSet;
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v10:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v6:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v6, 0x1

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v7:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/high16 v7, 0x3f000000    # 0.5f

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v8:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v8, 0x1

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v9:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/high16 v9, 0x3f000000    # 0.5f

    
    # INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v10:F
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v1, v10

    
    # INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v12:F
    
    sput v3, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v2:F
    
    # INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v2, v12

    
    # INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v13:F
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v3, v13

    
    # INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v12:F
    
    sput v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_FragmentManagerImpl_makeOpenCloseAnimation_v4:F
    
    # INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v4, v12

    move v5, v13

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1141
    .local v1, "scale":Landroid/view/animation/ScaleAnimation;
    sget-object v2, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1142
    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1143
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v14, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    # custom lines written to exhibit the case "external method WITH subsequent move-result"

    invoke-direct {v4, v14, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-result v0

    # end of custom lines

    .line 1145
    .local v4, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v5, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    invoke-virtual {v4, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1147
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object v2
.end method
