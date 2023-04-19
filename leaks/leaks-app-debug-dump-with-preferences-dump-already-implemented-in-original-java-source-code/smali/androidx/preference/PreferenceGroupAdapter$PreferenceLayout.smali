.class Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mResId:I

.field mWidgetResId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;)V
    .locals 1
    .param p1, "other"    # Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iget v0, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    iput v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    .line 96
    iget v0, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    iput v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    .line 97
    iget-object v0, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 102
    instance-of v0, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return v1

    .line 105
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 106
    .local v0, "other":Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget v2, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    iget v3, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    iget v3, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 113
    const/16 v0, 0x11

    .line 114
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    add-int/2addr v1, v2

    .line 115
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    add-int/2addr v0, v2

    .line 116
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 117
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
