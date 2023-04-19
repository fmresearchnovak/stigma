.class public final Lcom/google/android/gms/common/images/zad;
.super Lcom/google/android/gms/common/images/zab;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private zanh:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zab;-><init>(Landroid/net/Uri;I)V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zad;->zanh:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zab;-><init>(Landroid/net/Uri;I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zad;->zanh:Ljava/lang/ref/WeakReference;

    .line 4
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 10
    instance-of v0, p1, Lcom/google/android/gms/common/images/zad;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    .line 13
    return v0

    .line 14
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/zad;

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/common/images/zad;->zanh:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/common/images/zad;->zanh:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 17
    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    .line 18
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    nop

    .line 19
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 9
    const/4 v0, 0x0

    return v0
.end method

.method protected final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 5

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/images/zad;->zanh:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 21
    if-eqz v0, :cond_8

    .line 22
    nop

    .line 23
    const/4 v1, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-eqz v2, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/internal/base/zak;

    if-eqz v3, :cond_1

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/base/zak;->zacf()I

    move-result v3

    .line 26
    iget v4, p0, Lcom/google/android/gms/common/images/zad;->zanb:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/google/android/gms/common/images/zad;->zanb:I

    if-eq v3, v4, :cond_8

    .line 27
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/images/zab;->zaa(ZZ)Z

    move-result p2

    .line 28
    nop

    .line 29
    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 30
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 31
    nop

    .line 32
    if-eqz v3, :cond_3

    .line 33
    instance-of v4, v3, Lcom/google/android/gms/internal/base/zae;

    if-eqz v4, :cond_2

    .line 34
    check-cast v3, Lcom/google/android/gms/internal/base/zae;

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/base/zae;->zacd()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    goto :goto_1

    .line 32
    :cond_3
    move-object v3, p3

    .line 38
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/base/zae;

    invoke-direct {v4, v3, p1}, Lcom/google/android/gms/internal/base/zae;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 39
    move-object p1, v4

    .line 40
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    instance-of v0, v0, Lcom/google/android/gms/internal/base/zak;

    if-eqz v0, :cond_7

    .line 42
    if-eqz p4, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/common/images/zad;->zamz:Lcom/google/android/gms/common/images/zaa;

    iget-object p3, p3, Lcom/google/android/gms/common/images/zaa;->uri:Landroid/net/Uri;

    .line 43
    :cond_5
    invoke-static {p3}, Lcom/google/android/gms/internal/base/zak;->zaa(Landroid/net/Uri;)V

    .line 44
    if-eqz v2, :cond_6

    iget v1, p0, Lcom/google/android/gms/common/images/zad;->zanb:I

    .line 45
    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/base/zak;->zai(I)V

    .line 46
    :cond_7
    if-eqz p2, :cond_8

    .line 47
    check-cast p1, Lcom/google/android/gms/internal/base/zae;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/base/zae;->startTransition(I)V

    .line 48
    :cond_8
    return-void
.end method
