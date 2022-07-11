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
    .locals 18

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v16, p0
    
    move/16 v17, p1
    
    move-wide/16 v18, p2
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
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

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for constructor / <init>
    
    new-instance v14, Lcom/fasterxml/jackson/databind/ObjectMapper;
    
    invoke-direct {v14}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
    
    move-object/16 v15, v3
    
    :try_start_stigma_0
    invoke-virtual {v14, v15}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    
    move-result-object v15
    
    const-string v14, "STIGMA JSON"
    
    invoke-static {v14, v15},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_stigma_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_stigma_0 .. :try_end_stigma_0} :catch_stigma_0
    
    :catch_stigma_0
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for constructor / <init>
    
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
    .locals 2
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move/16 v0, p0
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    sput v0, Ledu/fandm/enovak/MockClass;->RANDOM_INT:I

    return v0

.end method

