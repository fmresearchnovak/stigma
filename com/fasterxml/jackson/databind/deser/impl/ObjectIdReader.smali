.class public Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.super Ljava/lang/Object;
.source "ObjectIdReader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _idType:Lcom/fasterxml/jackson/databind/JavaType;

.field public final generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;"
        }
    .end annotation
.end field

.field public final idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field public final propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

.field public final resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V
    .locals 0
    .param p1, "t"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p5, "idProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p6, "resolver"    # Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ")V"
        }
    .end annotation

    .line 50
    .local p3, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .local p4, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_idType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 52
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 53
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 54
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .line 55
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 56
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 57
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
    .locals 8
    .param p0, "idType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p1, "propName"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "idProp"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p5, "resolver"    # Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;"
        }
    .end annotation

    .line 68
    .local p2, "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .local p3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    new-instance v7, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V

    return-object v7
.end method


# virtual methods
.method public getDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-object v0
.end method

.method public getIdType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_idType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public isValidReferencePropertyName(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parser"    # Lcom/fasterxml/jackson/core/JsonParser;

    .line 112
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->isValidReferencePropertyName(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public maySerializeAsObject()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->maySerializeAsObject()Z

    move-result v0

    return v0
.end method

.method public readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
