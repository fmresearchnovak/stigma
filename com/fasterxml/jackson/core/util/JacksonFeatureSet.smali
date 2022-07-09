.class public final Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
.super Ljava/lang/Object;
.source "JacksonFeatureSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lcom/fasterxml/jackson/core/util/JacksonFeature;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected _enabled:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "bitmask"    # I

    .line 22
    .local p0, "this":Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;, "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    .line 24
    return-void
.end method

.method public static fromBitmask(I)Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
    .locals 1
    .param p0, "bitmask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/fasterxml/jackson/core/util/JacksonFeature;",
            ">(I)",
            "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<",
            "TF;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;-><init>(I)V

    return-object v0
.end method

.method public static fromDefaults([Lcom/fasterxml/jackson/core/util/JacksonFeature;)Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/fasterxml/jackson/core/util/JacksonFeature;",
            ">([TF;)",
            "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<",
            "TF;>;"
        }
    .end annotation

    .line 39
    .local p0, "allFeatures":[Lcom/fasterxml/jackson/core/util/JacksonFeature;, "[TF;"
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_2

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "flags":I
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 48
    .local v3, "f":Lcom/fasterxml/jackson/core/util/JacksonFeature;, "TF;"
    invoke-interface {v3}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->enabledByDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v3}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 47
    .end local v3    # "f":Lcom/fasterxml/jackson/core/util/JacksonFeature;, "TF;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;-><init>(I)V

    return-object v1

    .line 40
    .end local v0    # "flags":I
    :cond_2
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "desc":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    array-length v1, p0

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 41
    const-string v1, "Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public asBitmask()I
    .locals 1

    .line 104
    .local p0, "this":Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;, "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<TF;>;"
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/util/JacksonFeature;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;, "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<TF;>;"
    .local p1, "feature":Lcom/fasterxml/jackson/core/util/JacksonFeature;, "TF;"
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->getMask()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public with(Lcom/fasterxml/jackson/core/util/JacksonFeature;)Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<",
            "TF;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;, "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<TF;>;"
    .local p1, "feature":Lcom/fasterxml/jackson/core/util/JacksonFeature;, "TF;"
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 70
    .local v0, "newMask":I
    iget v1, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;-><init>(I)V

    :goto_0
    return-object v1
.end method

.method public without(Lcom/fasterxml/jackson/core/util/JacksonFeature;)Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<",
            "TF;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;, "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<TF;>;"
    .local p1, "feature":Lcom/fasterxml/jackson/core/util/JacksonFeature;, "TF;"
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 84
    .local v0, "newMask":I
    iget v1, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;-><init>(I)V

    :goto_0
    return-object v1
.end method
