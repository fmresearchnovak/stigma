.class public Lcom/microsoft/office/lenssdk/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


.method private static getRealPath(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
 

    .line 178
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    
.end method
