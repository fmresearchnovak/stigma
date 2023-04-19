.class public Lcom/fasterxml/jackson/databind/node/ShortNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "ShortNode.java"


# instance fields
.field protected final _value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .param p1, "v"    # S

    .line 27
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput-short p1, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return-void
.end method

.method public static valueOf(S)Lcom/fasterxml/jackson/databind/node/ShortNode;
    .locals 1
    .param p0, "l"    # S

    .line 29
    new-instance v0, Lcom/fasterxml/jackson/databind/node/ShortNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/ShortNode;-><init>(S)V

    return-object v0
.end method


# virtual methods
.method public asBoolean(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .line 85
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 80
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 37
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 76
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToInt()Z
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public canConvertToLong()Z
    .locals 1

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 73
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .line 70
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 99
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 100
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/ShortNode;

    if-eqz v2, :cond_3

    .line 101
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/databind/node/ShortNode;

    iget-short v2, v2, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    iget-short v3, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 103
    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 67
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 108
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 61
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method

.method public isIntegralNumber()Z
    .locals 1

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public isShort()Z
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 64
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .line 40
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .line 54
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V

    .line 93
    return-void
.end method

.method public shortValue()S
    .locals 1

    .line 58
    iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S

    return v0
.end method
