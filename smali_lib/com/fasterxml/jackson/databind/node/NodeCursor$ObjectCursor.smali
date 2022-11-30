.class public final Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;
.super Lcom/fasterxml/jackson/databind/node/NodeCursor;
.source "NodeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/node/NodeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ObjectCursor"
.end annotation


# instance fields
.field protected _contents:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field protected _needEntry:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V
    .locals 1
    .param p1, "n"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p2, "p"    # Lcom/fasterxml/jackson/databind/node/NodeCursor;

    .line 197
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/node/NodeCursor;-><init>(ILcom/fasterxml/jackson/databind/node/NodeCursor;)V

    .line 198
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->fields()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_contents:Ljava/util/Iterator;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_needEntry:Z

    .line 200
    return-void
.end method


# virtual methods
.method public currentNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor;->getParent()Lcom/fasterxml/jackson/databind/node/NodeCursor;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3

    .line 206
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_needEntry:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 208
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_currentName:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    .line 210
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 212
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_index:I

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_needEntry:Z

    .line 214
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_contents:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    .line 215
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :goto_0
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_currentName:Ljava/lang/String;

    .line 216
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 218
    :cond_2
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_needEntry:Z

    .line 219
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->_current:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method public startArray()Lcom/fasterxml/jackson/databind/node/NodeCursor;
    .locals 2

    .line 228
    new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ArrayCursor;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V

    return-object v0
.end method

.method public startObject()Lcom/fasterxml/jackson/databind/node/NodeCursor;
    .locals 2

    .line 231
    new-instance v0, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;->currentNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/node/NodeCursor$ObjectCursor;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/node/NodeCursor;)V

    return-object v0
.end method
