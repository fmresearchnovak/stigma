.class public final Lcom/google/android/gms/internal/base/zae;
.super Landroid/graphics/drawable/Drawable;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mAlpha:I

.field private mFrom:I

.field private zand:Z

.field private zanl:I

.field private zanm:J

.field private zann:I

.field private zano:I

.field private zanp:I

.field private zanq:Z

.field private zanr:Lcom/google/android/gms/internal/base/zah;

.field private zans:Landroid/graphics/drawable/Drawable;

.field private zant:Landroid/graphics/drawable/Drawable;

.field private zanu:Z

.field private zanv:Z

.field private zanw:Z

.field private zanx:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/base/zae;-><init>(Lcom/google/android/gms/internal/base/zah;)V

    .line 2
    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/base/zaf;->zace()Lcom/google/android/gms/internal/base/zaf;

    move-result-object p1

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Lcom/google/android/gms/internal/base/zah;

    iget v1, v0, Lcom/google/android/gms/internal/base/zah;->zaoa:I

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, v0, Lcom/google/android/gms/internal/base/zah;->zaoa:I

    .line 8
    if-nez p2, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/base/zaf;->zace()Lcom/google/android/gms/internal/base/zaf;

    move-result-object p2

    .line 10
    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Lcom/google/android/gms/internal/base/zah;

    iget v0, p1, Lcom/google/android/gms/internal/base/zah;->zaoa:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p2

    or-int/2addr p2, v0

    iput p2, p1, Lcom/google/android/gms/internal/base/zah;->zaoa:I

    .line 13
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/base/zah;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->zanl:I

    .line 16
    const/16 v1, 0xff

    iput v1, p0, Lcom/google/android/gms/internal/base/zae;->zano:I

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zand:Z

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/base/zah;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/base/zah;-><init>(Lcom/google/android/gms/internal/base/zah;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Lcom/google/android/gms/internal/base/zah;

    .line 20
    return-void
.end method

.method private final canConstantState()Z
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanu:Z

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanv:Z

    .line 58
    iput-boolean v1, p0, Lcom/google/android/gms/internal/base/zae;->zanu:Z

    .line 59
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanv:Z

    return v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 75
    nop

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->zanl:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 81
    :pswitch_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/base/zae;->zanm:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/base/zae;->zanm:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/base/zae;->zanp:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 83
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 84
    :goto_0
    if-eqz v1, :cond_1

    .line 85
    iput v2, p0, Lcom/google/android/gms/internal/base/zae;->zanl:I

    .line 86
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 87
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/base/zae;->zann:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v3, v2

    float-to-int v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    goto :goto_1

    .line 77
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/base/zae;->zanm:J

    .line 78
    nop

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->zanl:I

    .line 80
    const/4 v1, 0x0

    .line 88
    :cond_2
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    .line 89
    iget-boolean v2, p0, Lcom/google/android/gms/internal/base/zae;->zand:Z

    .line 90
    iget-object v3, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v4, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    .line 92
    if-eqz v1, :cond_6

    .line 93
    if-eqz v2, :cond_3

    if-nez v0, :cond_4

    .line 94
    :cond_3
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/base/zae;->zano:I

    if-ne v0, v1, :cond_5

    .line 96
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 97
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    :cond_5
    return-void

    .line 99
    :cond_6
    if-eqz v2, :cond_7

    .line 100
    iget v1, p0, Lcom/google/android/gms/internal/base/zae;->zano:I

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 101
    :cond_7
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    if-eqz v2, :cond_8

    .line 103
    iget v1, p0, Lcom/google/android/gms/internal/base/zae;->zano:I

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 104
    :cond_8
    if-lez v0, :cond_9

    .line 105
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 106
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    iget p1, p0, Lcom/google/android/gms/internal/base/zae;->zano:I

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 108
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->invalidateSelf()V

    .line 109
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .line 33
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Lcom/google/android/gms/internal/base/zah;

    iget v1, v1, Lcom/google/android/gms/internal/base/zah;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Lcom/google/android/gms/internal/base/zah;

    iget v1, v1, Lcom/google/android/gms/internal/base/zah;->zaoa:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/base/zae;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Lcom/google/android/gms/internal/base/zah;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/base/zah;->mChangingConfigurations:I

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zanr:Lcom/google/android/gms/internal/base/zah;

    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 2

    .line 51
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanw:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->zanx:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanw:Z

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->zanx:I

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_0
    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanq:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/base/zae;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/base/zae;->zanq:Z

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    :goto_0
    return-object p0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 46
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 28
    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    iget v1, p0, Lcom/google/android/gms/internal/base/zae;->zano:I

    if-ne v0, v1, :cond_0

    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    .line 36
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->zano:I

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->invalidateSelf()V

    .line 38
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zans:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 41
    return-void
.end method

.method public final startTransition(I)V
    .locals 1

    .line 68
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->mFrom:I

    .line 69
    iget v0, p0, Lcom/google/android/gms/internal/base/zae;->zano:I

    iput v0, p0, Lcom/google/android/gms/internal/base/zae;->zann:I

    .line 70
    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->mAlpha:I

    .line 71
    const/16 p1, 0xfa

    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->zanp:I

    .line 72
    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/base/zae;->zanl:I

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->invalidateSelf()V

    .line 74
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zae;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    return-void
.end method

.method public final zacd()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zae;->zant:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
