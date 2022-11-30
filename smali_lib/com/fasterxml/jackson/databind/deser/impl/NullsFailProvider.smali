.class public Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;
.super Ljava/lang/Object;
.source "NullsFailProvider.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _name:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 22
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 23
    return-void
.end method

.method public static constructForProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;
    .locals 1
    .param p0, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 26
    invoke-interface {p0}, Lcom/fasterxml/jackson/databind/BeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->constructForProperty(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;

    move-result-object v0

    return-object v0
.end method

.method public static constructForProperty(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;
    .locals 2
    .param p0, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 31
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;

    invoke-interface {p0}, Lcom/fasterxml/jackson/databind/BeanProperty;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static constructForRootValue(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;
    .locals 2
    .param p0, "t"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method


# virtual methods
.method public synthetic getAbsentValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/NullValueProvider$-CC;->$default$getAbsentValue(Lcom/fasterxml/jackson/databind/deser/NullValueProvider;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNullAccessPattern()Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 1

    .line 41
    sget-object v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->DYNAMIC:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object v0
.end method

.method public getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->_name:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsFailProvider;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;->from(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidNullException;

    move-result-object v0

    throw v0
.end method
