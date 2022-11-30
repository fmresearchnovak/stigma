.class public final synthetic Lcom/fasterxml/jackson/databind/deser/NullValueProvider$-CC;
.super Ljava/lang/Object;
.source "NullValueProvider.java"


# direct methods
.method public static $default$getAbsentValue(Lcom/fasterxml/jackson/databind/deser/NullValueProvider;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 52
    invoke-interface {p0, p1}, Lcom/fasterxml/jackson/databind/deser/NullValueProvider;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
