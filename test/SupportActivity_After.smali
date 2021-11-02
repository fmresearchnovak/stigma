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
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v1, p0
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, v1, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 56
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, v1, Landroid/support/v4/app/SupportActivity;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 132
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 122
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v2, p0
    
    move-object/16 v3, p1
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    invoke-virtual {v2}, Landroid/support/v4/app/SupportActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0, v3}, Landroid/support/v4/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    return v1

    .line 126
    :cond_0
    invoke-static {v2, v0, v2, v3}, Landroid/support/v4/view/KeyEventDispatcher;->dispatchKeyEvent(Landroid/support/v4/view/KeyEventDispatcher$Component;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
