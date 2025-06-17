.class Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# methods
.method static binarySearch([JIJ)I
    .locals 10
    .param p0, "array"    # [J
    .param p1, "size"    # I
    .param p2, "value"    # J

    .line 65
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v6, p0
    
    move/16 v7, p1
    
    move-wide/16 v8, p2
    
    
    # INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    const/4 v0, 0x0

    .line 66
    .local v0, "lo":I
    add-int/lit8 v1, v7, -0x1

    .line 68
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 69
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 70
    .local v2, "mid":I
    aget-wide v3, v6, v2

    .line 72
    .local v3, "midVal":J
    cmp-long v5, v3, v8

    if-gez v5, :cond_0

    .line 73
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 74
    :cond_0
    cmp-long v5, v3, v8

    if-lez v5, :cond_1

    .line 75
    add-int/lit8 v1, v2, -0x1

    .line 79
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :goto_1
    goto :goto_0

    .line 77
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":J
    :cond_1
    return v2

    .line 80
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :cond_2
    not-int v2, v0

    return v2
.end method
