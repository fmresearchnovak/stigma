 .class public Landroid/support/v4/app/SupportActivity;
.super Landroid/app/Activity;
.source "ComponentActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;
.implements Landroid/support/v4/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/SupportActivity$ExtraData;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/SupportActivity$ExtraData;",
            ">;",
            "Landroid/support/v4/app/SupportActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;


# methods
.method public constructor <init>()V
    .locals 5

    .line 46
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_init_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_init_v1:F
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v1, p0
    
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    .line 53
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_init_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    
    # INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_init_v0:F
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_v1_mExtraDataMap:F
    
    # INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    iput-object v0, v1, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 56
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v2, 0x0
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_init_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    
    # INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    sget v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_init_v0:F
    
    sput v2, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_v1_mLifecycleRegistry:F
    
    # INSTRUCTIONS ADDED BY STIGMA for IPUT
    
    iput-object v0, v1, Landroid/support/v4/app/SupportActivity;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 132
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 122
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v2:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v3:F
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v2, p0
    
    move-object/16 v3, p1
    
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v4, 0x0
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v2:F
    
    add-float v4, v4, v5
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v2}, Landroid/support/v4/app/SupportActivity;->getWindow()Landroid/view/Window;
    
    move-result-object v0

    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v4, 0x0
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v0:F
    
    add-float v4, v4, v5
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    
    move-result-object v0

    .line 123
    .local v0, "decor":Landroid/view/View;
    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v6, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v0:F
    
    const/16 v7, 0x0
    
    cmpl-float v7, v6, v7
    
    if-eqz v7, :stigma_jump_label_0
    
    const-string v4, "STIGMA"
    
    const-string v5, "Implicit flow involving sensitive data!"
    
    invoke-static {v4, v5},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v5
    
    invoke-static {v4, v5},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_0
    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v0, :cond_0

    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v4, 0x0
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v0:F
    
    add-float v4, v4, v5
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v3:F
    
    add-float v4, v4, v5
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v0, v3}, Landroid/support/v4/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    
    move-result v1

    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v6, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v1:F
    
    const/16 v7, 0x0
    
    cmpl-float v7, v6, v7
    
    if-eqz v7, :stigma_jump_label_1
    
    const-string v4, "STIGMA"
    
    const-string v5, "Implicit flow involving sensitive data!"
    
    invoke-static {v4, v5},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v5
    
    invoke-static {v4, v5},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_1
    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v1, :cond_0

    .line 124
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v4, 0x0
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v1, 0x1

    
    # INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v1:F
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_return_field:F
    
    # INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return v1
    :cond_0
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v4, 0x0
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v2:F
    
    add-float v4, v4, v5
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v0:F
    
    add-float v4, v4, v5
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v2:F
    
    add-float v4, v4, v5
    
    sget v5, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v3:F
    
    add-float v4, v4, v5
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v2, v0, v2, v3}, Landroid/support/v4/view/KeyEventDispatcher;->dispatchKeyEvent(Landroid/support/v4/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z
    
    move-result v1

    
    # INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_dispatchKeyEvent_v1:F
    
    sput v4, Lnet/stigmastorage/StorageClass1;->android_support_v4_app_SupportActivity_return_field:F
    
    # INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return v1
.end method
