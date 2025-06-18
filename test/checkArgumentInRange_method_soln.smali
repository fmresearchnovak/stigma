.class public Landroid/support/v4/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# methods
.method public static checkArgumentInRange(JJJLjava/lang/String;)J
    .locals 10
    .param p0, "value"    # J
    .param p2, "lower"    # J
    .param p4, "upper"    # J
    .param p6, "valueName"    # Ljava/lang/String;

    .line 338
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v6:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v7:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v8:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v9:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_p4:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v10:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_p5:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v11:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_p6:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v12:F
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-wide/16 v6, p0
    
    move-wide/16 v8, p2
    
    move-wide/16 v10, p4
    
    move-object/16 v12, p6
    
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v0, 0x2

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v1, 0x1

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v2:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v2, 0x0

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v3, 0x3

    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v8:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v14, v15
    
    if-eqz v15, :stigma_jump_label_1
    
    const-string v5, "STIGMA"
    
    const-string v13, "Implicit flow involving sensitive data!"
    
    invoke-static {v5, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v13
    
    invoke-static {v5, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_1
    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    cmp-long v4, v6, v8

    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v4:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v14, v15
    
    if-eqz v15, :stigma_jump_label_2
    
    const-string v5, "STIGMA"
    
    const-string v13, "Implicit flow involving sensitive data!"
    
    invoke-static {v5, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v13
    
    invoke-static {v5, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_2
    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-ltz v4, :cond_1

    .line 342
    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v10:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v14, v15
    
    if-eqz v15, :stigma_jump_label_4
    
    const-string v5, "STIGMA"
    
    const-string v13, "Implicit flow involving sensitive data!"
    
    invoke-static {v5, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v13
    
    invoke-static {v5, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_4
    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    cmp-long v4, v6, v10

    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v4:F
    
    const/16 v15, 0x0
    
    cmpl-float v15, v14, v15
    
    if-eqz v15, :stigma_jump_label_5
    
    const-string v5, "STIGMA"
    
    const-string v13, "Implicit flow involving sensitive data!"
    
    invoke-static {v5, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v13
    
    invoke-static {v5, v13},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_5
    
    # INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end
    
    if-gtz v4, :cond_0

    .line 348
    
    # INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v6:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_return_field:F
    
    # INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return-wide v6
    :cond_0
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v4:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v4, Ljava/lang/IllegalArgumentException;

    
    # INSTRUCTIONS ADDED BY STIGMA for SGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->java_util_Locale__US:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v5:F
    
    # INSTRUCTIONS ADDED BY STIGMA for SGET
    
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-ARRAY
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-ARRAY
    
    new-array v3, v3, [Ljava/lang/Object;

    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v12:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    aput-object v12, v3, v2

    .line 345
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v8:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v9:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v2:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    
    move-result-object v2

    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v2:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    aput-object v2, v3, v1

    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v10:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v11:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    
    move-result-object v1

    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v1:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    aput-object v1, v3, v0

    .line 344
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-string v0, "%s is out of range of [%d, %d] (too high)"

    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v5:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v0:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v5, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    
    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 339
    :cond_1
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v4:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v4, Ljava/lang/IllegalArgumentException;

    
    # INSTRUCTIONS ADDED BY STIGMA for SGET
    
    sget v13, Lnet/stigmastorage/StorageClass1;->java_util_Locale__US:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v5:F
    
    # INSTRUCTIONS ADDED BY STIGMA for SGET
    
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-ARRAY
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-ARRAY
    
    new-array v3, v3, [Ljava/lang/Object;

    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v12:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    aput-object v12, v3, v2

    .line 341
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v8:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v9:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v2:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    
    move-result-object v2

    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v2:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    aput-object v2, v3, v1

    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v10:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v11:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    
    move-result-object v1

    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    sget v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v1:F
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for APUT
    
    aput-object v1, v3, v0

    .line 340
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v13, 0x0
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-string v0, "%s is out of range of [%d, %d] (too low)"

    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v13, 0x0
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v5:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v0:F
    
    add-float v13, v13, v14
    
    sget v14, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v3:F
    
    add-float v13, v13, v14
    
    sput v13, Lnet/stigmastorage/StorageClass1;->android_support_v4_util_Preconditions_checkArgumentInRange_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v5, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    
    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
