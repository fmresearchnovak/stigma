.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"


# methods
.method findReferenceChild(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 13

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v9:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v10:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v11:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v12:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p4:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v13:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_p5:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v14:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v9, p0
    
    move-object/16 v10, p1
    
    move-object/16 v11, p2
    
    move/16 v12, p3
    
    move/16 v13, p4
    
    move/16 v14, p5
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v12:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move v5, v12

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v15, 0x0
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v0, 0x0

    :goto_1  # v0 comes in with value of v6 from line 16, which is an object

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v15, 0x0
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v1, 0x1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v9:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_getChildAt_p0:F
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_getChildAt_p1:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v9, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;
    
    move-result-object v6
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_return_field:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE-RESULT
    

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for MOVE
    
    move-object v0, v6

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v3, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v6:F
    
    const/16 v4, 0x0
    
    cmpl-float v4, v3, v4
    
    if-eqz v4, :stigma_jump_label_0
    
    const-string v15, "STIGMA"
    
    const-string v2, "Implicit flow involving sensitive data!"
    
    invoke-static {v15, v2},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v2
    
    invoke-static {v15, v2},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-eqz v6, :cond_1

    goto :goto_1
    :cond_1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_findReferenceChild_v5:F
    
    sput v15, Lnet/stigmastorage/StorageClass1;->android_support_v7_widget_LinearLayoutManager_return_field:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-object v5
.end method
