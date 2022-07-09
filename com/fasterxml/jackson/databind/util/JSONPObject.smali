.class public Lcom/fasterxml/jackson/databind/util/JSONPObject;
.super Ljava/lang/Object;
.source "JSONPObject.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


# instance fields
.field protected final _function:Ljava/lang/String;

.field protected final _serializationType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/JSONPObject;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "asType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_function:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    .line 46
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 47
    return-void
.end method


# virtual methods
.method public getFunction()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_function:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_function:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 69
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 71
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeNull(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_2

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, "override":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 79
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;->instance()Lcom/fasterxml/jackson/core/JsonpCharacterEscapes;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 83
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_serializationType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v3, :cond_3

    .line 84
    invoke-virtual {p2, v3, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 86
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/JSONPObject;->_value:Ljava/lang/Object;

    invoke-virtual {v1, v3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_1
    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 94
    .end local v0    # "override":Z
    :cond_4
    :goto_2
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V

    .line 95
    return-void

    .line 89
    .restart local v0    # "override":Z
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 90
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 92
    :cond_5
    throw v1
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 0
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p3, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/JSONPObject;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 61
    return-void
.end method
