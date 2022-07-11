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


# direct methods
.method static MyMadeUpMethod([JIJ)V
    .locals 16

    const v0, 0x0

    const v1, 0x1

    const v2, 0x2

    const v3, 0x3

    const v4, 0x4

    const v5, 0x5

    const v6, 0x6

    const v7, 0x7

    const-wide v8, 0x1

    const-wide v10, 0x1

    const-wide v12, 0x1
    
    new-instance v1, Ljava/net/URL;

    const-string v2, "www.google.com"
    
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    
    new-instance v14, Landroid/graphics/Rect;

    new-instance v15, Ljava/util/ArrayList;

    # interesting part coming up next!

    invoke-static {v1}, Ledu/fandm/enovak/MockClass;->OtherMethod(I)I

    invoke-static {v2}, Ledu/fandm/enovak/MockClass;->OtherMethod(I)I

    move-result v3

    return-void

.end method

.method static OtherMethod(I)I
    .locals 0
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    sput p0, Ledu/fandm/enovak/MockClass;->RANDOM_INT:I

    return p0

.end method
