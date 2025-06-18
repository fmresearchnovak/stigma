.class Ledu/fandm/enovak/MockClass;
.super Ljava/lang/Object;
.source "MockClass.java"


# static fields
.field static final INTS_ARRAY:[I

.field static final RANDOM_LONG:J

.field static RANDOM_INT:I

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# instance fields
.field private host:Ljava/lang/String;

.field private imeiNumber:Ljava/lang/String;


# methods
.method static MyMadeUpMethod([JIJ)V
    .locals 20

    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v16:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_p1:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v17:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_p2:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v18:F
    
    sget v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_p3:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v19:F
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v16, p0
    
    move/16 v17, p1
    
    move-wide/16 v18, p2
    
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v1, 0x0
    
    sput v1, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v0:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v0, 0x0

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v1:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v1, 0x1

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v2:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v2, 0x2

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v3:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v3, 0x3

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v4:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v4, 0x4

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v5:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v5, 0x5

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v6:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v6, 0x6

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v7:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v7, 0x7

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v10, 0x0
    
    sput v10, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v8:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-wide v8, 0x1

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v12, 0x0
    
    sput v12, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v10:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-wide v10, 0x1

    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v14, 0x0
    
    sput v14, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v12:F
    
    # INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-wide v12, 0x1

    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    const v15, 0x0
    
    sput v15, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_MyMadeUpMethod_v14:F
    
    # INSTRUCTIONS ADDED BY STIGMA for NEW-INSTANCE
    
    new-instance v14, Landroid/graphics/Rect;

    new-instance v15, Ljava/util/ArrayList;

    # interesting part coming up next!

    invoke-static {v1}, Ledu/fandm/enovak/MockClass;->OtherMethod(I)I

    invoke-static {v2}, Ledu/fandm/enovak/MockClass;->OtherMethod(I)I

    move-result v3

    return-void

.end method

.method static OtherMethod(I)I
    .locals 4

    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_OtherMethod_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_OtherMethod_v0:F
    
    
    # INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move/16 v0, p0
    
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # INSTRUCTIONS ADDED BY STIGMA for SPUT
    
    sget v1, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_OtherMethod_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass__RANDOM_INT:F
    
    # INSTRUCTIONS ADDED BY STIGMA for SPUT
    
    sput v0, Ledu/fandm/enovak/MockClass;->RANDOM_INT:I

    
    # INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    sget v1, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_OtherMethod_v0:F
    
    sput v1, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_MockClass_return_field:F
    
    # INSTRUCTIONS ADDED BY STIGMA for RETURN
    
    return v0

.end method

