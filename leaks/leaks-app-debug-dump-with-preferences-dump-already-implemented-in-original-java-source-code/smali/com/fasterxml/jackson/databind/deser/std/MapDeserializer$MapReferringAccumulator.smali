.class final Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
.super Ljava/lang/Object;
.source "MapDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MapReferringAccumulator"
.end annotation


# instance fields
.field private _accumulator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;",
            ">;"
        }
    .end annotation
.end field

.field private _result:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 866
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_accumulator:Ljava/util/List;

    .line 867
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_valueType:Ljava/lang/Class;

    .line 868
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_result:Ljava/util/Map;

    .line 869
    return-void
.end method


# virtual methods
.method public handleUnresolvedReference(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    .locals 2
    .param p1, "reference"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .param p2, "key"    # Ljava/lang/Object;

    .line 883
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_valueType:Ljava/lang/Class;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;-><init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 884
    .local v0, "id":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 873
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_result:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;

    .line 877
    .local v0, "ref":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->next:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .end local v0    # "ref":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;
    :goto_0
    return-void
.end method

.method public resolveForwardReference(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_accumulator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 894
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->_result:Ljava/util/Map;

    .line 895
    .local v1, "previous":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 896
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;

    .line 897
    .local v2, "ref":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->hasId(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 898
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 899
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->key:Ljava/lang/Object;

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v3, v2, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->next:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 901
    return-void

    .line 903
    :cond_0
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;->next:Ljava/util/Map;

    .line 904
    .end local v2    # "ref":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;
    goto :goto_0

    .line 906
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to resolve a forward reference with id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] that wasn\'t previously seen as unresolved."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
