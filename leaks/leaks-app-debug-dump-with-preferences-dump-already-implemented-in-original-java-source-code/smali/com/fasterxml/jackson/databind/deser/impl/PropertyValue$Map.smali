.class final Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;
.super Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Map"
.end annotation


# instance fields
.field final _key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "next"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 105
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;->_key:Ljava/lang/Object;

    .line 106
    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;)V
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;->_key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;->value:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
