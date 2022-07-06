.class public Lcom/microsoft/office/lenssdk/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# methods
.method private static getRealPath(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
 

    .line 178
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v6:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v7:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v8:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v9:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v6, p0
    
    move-object/16 v7, p1
    
    move-object/16 v8, p2
    
    move-object/16 v9, p3
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    # IFT INSTRUCTIONS ADDED BY STIGMA FOR SINK
    
    const/16 v10, 0x0
    
    sget v11, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v0:F
    
    add-float v10, v10, v11
    
    sget v11, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v1:F
    
    add-float v10, v10, v11
    
    sget v11, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v2:F
    
    add-float v10, v10, v11
    
    sget v11, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v3:F
    
    add-float v10, v10, v11
    
    sget v11, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v4:F
    
    add-float v10, v10, v11
    
    sget v11, Lnet/stigmastorage/StorageClass1;->com_microsoft_office_lenssdk_utils_FileUtils_getRealPath_v5:F
    
    add-float v10, v10, v11
    
    
    const/16 v11, 0x0
    
    cmpg-float v11, v10, v11
    
    if-eqz v11, :stigma_jump_label_0
    
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    
    move-result-object v10
    
    const-string v11, "STIGMA"
    
    invoke-static {v11, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    const-string v10, "LEAK OCCURING!"
    
    invoke-static {v11, v10},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    
    :stigma_jump_label_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA FOR SINK
    
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    
.end method

