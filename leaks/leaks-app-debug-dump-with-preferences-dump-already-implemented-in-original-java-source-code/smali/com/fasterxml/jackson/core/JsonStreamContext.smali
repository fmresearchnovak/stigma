.class public abstract Lcom/fasterxml/jackson/core/JsonStreamContext;
.super Ljava/lang/Object;
.source "JsonStreamContext.java"


# static fields
.field public static final TYPE_ARRAY:I = 0x1

.field public static final TYPE_OBJECT:I = 0x2

.field public static final TYPE_ROOT:I


# instance fields
.field protected _index:I

.field protected _type:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "index"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    .line 79
    iput p2, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    .line 80
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonStreamContext;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/core/JsonStreamContext;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget v0, p1, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    .line 73
    iget v0, p1, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    .line 74
    return-void
.end method


# virtual methods
.method public final getCurrentIndex()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public abstract getCurrentName()Ljava/lang/String;
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 1

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEntryCount()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
.end method

.method public getStartLocation(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1
    .param p1, "srcRef"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object v0
.end method

.method public final getTypeDesc()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    packed-switch v0, :pswitch_data_0

    .line 133
    const-string v0, "?"

    return-object v0

    .line 131
    :pswitch_0
    const-string v0, "OBJECT"

    return-object v0

    .line 130
    :pswitch_1
    const-string v0, "ARRAY"

    return-object v0

    .line 129
    :pswitch_2
    const-string v0, "ROOT"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasCurrentIndex()Z
    .locals 1

    .line 173
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCurrentName()Z
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPathSegment()Z
    .locals 2

    .line 195
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->hasCurrentName()Z

    move-result v0

    return v0

    .line 197
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->hasCurrentIndex()Z

    move-result v0

    return v0

    .line 200
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final inArray()Z
    .locals 2

    .line 102
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final inObject()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final inRoot()Z
    .locals 1

    .line 111
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pathAsPointer()Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1

    .line 259
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/core/JsonPointer;->forPath(Lcom/fasterxml/jackson/core/JsonStreamContext;Z)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    return-object v0
.end method

.method public pathAsPointer(Z)Lcom/fasterxml/jackson/core/JsonPointer;
    .locals 1
    .param p1, "includeRoot"    # Z

    .line 274
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->forPath(Lcom/fasterxml/jackson/core/JsonStreamContext;Z)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public startLocation(Lcom/fasterxml/jackson/core/io/ContentReference;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1
    .param p1, "srcRef"    # Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 292
    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 319
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    packed-switch v1, :pswitch_data_0

    .line 330
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "currentName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 333
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 324
    .end local v1    # "currentName":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    goto :goto_1

    .line 321
    :pswitch_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    goto :goto_1

    .line 337
    .restart local v1    # "currentName":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    :goto_0
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    .end local v1    # "currentName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public typeDesc()Ljava/lang/String;
    .locals 1

    .line 146
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonStreamContext;->_type:I

    packed-switch v0, :pswitch_data_0

    .line 151
    const-string v0, "?"

    return-object v0

    .line 149
    :pswitch_0
    const-string v0, "Object"

    return-object v0

    .line 148
    :pswitch_1
    const-string v0, "Array"

    return-object v0

    .line 147
    :pswitch_2
    const-string v0, "root"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
