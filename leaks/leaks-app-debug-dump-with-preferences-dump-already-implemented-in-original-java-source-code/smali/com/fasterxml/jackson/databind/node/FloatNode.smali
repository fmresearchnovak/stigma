.class public Lcom/fasterxml/jackson/databind/node/FloatNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "FloatNode.java"


# instance fields
.field protected final _value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "v"    # F

    .line 29
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return-void
.end method

.method public static valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;
    .locals 1
    .param p0, "v"    # F

    .line 31
    new-instance v0, Lcom/fasterxml/jackson/databind/node/FloatNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 1

    .line 100
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 39
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canConvertToExactIntegral()Z
    .locals 2

    .line 66
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0
.end method

.method public canConvertToInt()Z
    .locals 2

    .line 57
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x4f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canConvertToLong()Z
    .locals 2

    .line 61
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    const/high16 v1, -0x21000000

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x5f000000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .line 91
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .line 88
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 119
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 120
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;

    if-eqz v2, :cond_3

    .line 123
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/databind/node/FloatNode;

    iget v2, v2, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    .line 124
    .local v2, "otherValue":F
    iget v3, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 126
    .end local v2    # "otherValue":F
    :cond_3
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    return v0
.end method

.method public isFloat()Z
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public isFloatingPointNumber()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 107
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public longValue()J
    .locals 2

    .line 82
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    .locals 1

    .line 42
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    return-object v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 1

    .line 72
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 112
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 113
    return-void
.end method

.method public shortValue()S
    .locals 1

    .line 76
    iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method
