.class public Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
.super Lcom/fasterxml/jackson/core/TSFBuilder;
.source "JsonFactoryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/TSFBuilder<",
        "Lcom/fasterxml/jackson/core/JsonFactory;",
        "Lcom/fasterxml/jackson/core/JsonFactoryBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field protected _characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field protected _maximumNonEscapedChar:I

.field protected _quoteChar:C

.field protected _rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TSFBuilder;-><init>()V

    .line 32
    const/16 v0, 0x22

    iput-char v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_quoteChar:C

    .line 36
    sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_maximumNonEscapedChar:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .line 41
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/TSFBuilder;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    .line 32
    const/16 v0, 0x22

    iput-char v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_quoteChar:C

    .line 42
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory;->getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 43
    iget-object v0, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    .line 44
    iget v0, p1, Lcom/fasterxml/jackson/core/JsonFactory;->_maximumNonEscapedChar:I

    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_maximumNonEscapedChar:I

    .line 45
    return-void
.end method


# virtual methods
.method public build()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 236
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/JsonFactoryBuilder;)V

    return-object v0
.end method

.method public characterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 0
    .param p1, "esc"    # Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 142
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 143
    return-object p0
.end method

.method public characterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .param p2, "state"    # Z

    .line 88
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .param p2, "state"    # Z

    .line 128
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic configure(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->configure(Lcom/fasterxml/jackson/core/json/JsonReadFeature;Z)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic configure(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->configure(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;Z)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyDisable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    .line 74
    return-object p0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 4
    .param p1, "first"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 79
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyDisable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    .line 80
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 81
    .local v2, "f":Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyEnable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    .line 80
    .end local v2    # "f":Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 113
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyDisable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 114
    return-object p0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 4
    .param p1, "first"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 119
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyDisable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 120
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 121
    .local v2, "f":Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyDisable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 120
    .end local v2    # "f":Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-object p0
.end method

.method public bridge synthetic disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->disable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->disable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 57
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyEnable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    .line 58
    return-object p0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 4
    .param p1, "first"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 63
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyEnable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    .line 65
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 66
    .local v2, "f":Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyEnable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)V

    .line 65
    .end local v2    # "f":Lcom/fasterxml/jackson/core/json/JsonReadFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 95
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v0

    .line 96
    .local v0, "old":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyEnable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 99
    :cond_0
    return-object p0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 4
    .param p1, "first"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 104
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyEnable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 105
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 106
    .local v2, "f":Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_legacyEnable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    .line 105
    .end local v2    # "f":Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object p0
.end method

.method public bridge synthetic enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->enable(Lcom/fasterxml/jackson/core/json/JsonReadFeature;[Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/TSFBuilder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->enable(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;

    move-result-object p1

    return-object p1
.end method

.method public highestNonEscapedChar()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_maximumNonEscapedChar:I

    return v0
.end method

.method public highestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 1
    .param p1, "maxNonEscaped"    # I

    .line 195
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_maximumNonEscapedChar:I

    .line 196
    return-object p0
.end method

.method public quoteChar()C
    .locals 1

    .line 231
    iget-char v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_quoteChar:C

    return v0
.end method

.method public quoteChar(C)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 2
    .param p1, "ch"    # C

    .line 217
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    .line 220
    iput-char p1, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_quoteChar:C

    .line 221
    return-object p0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use Unicode characters up to 0x7F as quote characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 0
    .param p1, "sep"    # Lcom/fasterxml/jackson/core/SerializableString;

    .line 170
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    .line 171
    return-object p0
.end method

.method public rootValueSeparator(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonFactoryBuilder;
    .locals 1
    .param p1, "sep"    # Ljava/lang/String;

    .line 156
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    .line 157
    return-object p0
.end method

.method public rootValueSeparator()Lcom/fasterxml/jackson/core/SerializableString;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactoryBuilder;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    return-object v0
.end method
