.class public Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;
.super Ljava/lang/Object;
.source "SimpleObjectIdResolver.java"

# interfaces
.implements Lcom/fasterxml/jackson/annotation/ObjectIdResolver;


# instance fields
.field protected _items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindItem(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
    .param p2, "ob"    # Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;->_items:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;->_items:Ljava/util/Map;

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    .local v0, "old":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 27
    if-ne v0, p2, :cond_1

    .line 28
    return-void

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already had POJO for id ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    .end local v0    # "old":Ljava/lang/Object;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;->_items:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Z
    .locals 2
    .param p1, "resolverType"    # Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newForDeserialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    .locals 1
    .param p1, "context"    # Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;

    invoke-direct {v0}, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;-><init>()V

    return-object v0
.end method

.method public resolveId(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    .line 39
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/SimpleObjectIdResolver;->_items:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
