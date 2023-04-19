.class public Lcom/fasterxml/jackson/core/util/Separators;
.super Ljava/lang/Object;
.source "Separators.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final arrayValueSeparator:C

.field private final objectEntrySeparator:C

.field private final objectFieldValueSeparator:C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    const/16 v0, 0x3a

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1, v1}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    .line 28
    return-void
.end method

.method public constructor <init>(CCC)V
    .locals 0
    .param p1, "objectFieldValueSeparator"    # C
    .param p2, "objectEntrySeparator"    # C
    .param p3, "arrayValueSeparator"    # C

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-char p1, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    .line 33
    iput-char p2, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    .line 34
    iput-char p3, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    .line 35
    return-void
.end method

.method public static createDefaultInstance()Lcom/fasterxml/jackson/core/util/Separators;
    .locals 1

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/Separators;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getArrayValueSeparator()C
    .locals 1

    .line 61
    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    return v0
.end method

.method public getObjectEntrySeparator()C
    .locals 1

    .line 57
    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    return v0
.end method

.method public getObjectFieldValueSeparator()C
    .locals 1

    .line 53
    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    return v0
.end method

.method public withArrayValueSeparator(C)Lcom/fasterxml/jackson/core/util/Separators;
    .locals 3
    .param p1, "sep"    # C

    .line 48
    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    iget-char v1, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    iget-char v2, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    invoke-direct {v0, v1, v2, p1}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    :goto_0
    return-object v0
.end method

.method public withObjectEntrySeparator(C)Lcom/fasterxml/jackson/core/util/Separators;
    .locals 3
    .param p1, "sep"    # C

    .line 43
    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    iget-char v1, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    iget-char v2, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    invoke-direct {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    :goto_0
    return-object v0
.end method

.method public withObjectFieldValueSeparator(C)Lcom/fasterxml/jackson/core/util/Separators;
    .locals 3
    .param p1, "sep"    # C

    .line 38
    iget-char v0, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectFieldValueSeparator:C

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/Separators;

    iget-char v1, p0, Lcom/fasterxml/jackson/core/util/Separators;->objectEntrySeparator:C

    iget-char v2, p0, Lcom/fasterxml/jackson/core/util/Separators;->arrayValueSeparator:C

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/util/Separators;-><init>(CCC)V

    :goto_0
    return-object v0
.end method
