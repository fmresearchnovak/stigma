.class public abstract Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "StdScalarDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 20
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<",
            "*>;)V"
        }
    .end annotation

    .line 23
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    .local p3, "intoValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleBadMerge(Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyAccessPattern()Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 1

    .line 55
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->CONSTANT:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object v0
.end method

.method public getNullAccessPattern()Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 1

    .line 48
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->ALWAYS_NULL:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object v0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    .line 33
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 42
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<TT;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
