.class final Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;
.super Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Any"
.end annotation


# instance fields
.field final _property:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

.field final _propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;)V
    .locals 0
    .param p1, "next"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .param p4, "propName"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 81
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->_property:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 82
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->_propertyName:Ljava/lang/String;

    .line 83
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

    .line 89
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->_property:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->_propertyName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Any;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
