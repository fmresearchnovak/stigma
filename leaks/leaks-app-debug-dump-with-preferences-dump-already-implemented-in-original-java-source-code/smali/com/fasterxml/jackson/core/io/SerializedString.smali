.class public Lcom/fasterxml/jackson/core/io/SerializedString;
.super Ljava/lang/Object;
.source "SerializedString.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/SerializableString;
.implements Ljava/io/Serializable;


# static fields
.field private static final JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _jdkSerializeValue:Ljava/lang/String;

.field protected _quotedChars:[C

.field protected _quotedUTF8Ref:[B

.field protected _unquotedUTF8Ref:[B

.field protected final _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null String illegal for SerializedString"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_jdkSerializeValue:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public appendQuoted([CI)I
    .locals 4
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I

    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 148
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 149
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 151
    :cond_0
    array-length v1, v0

    .line 152
    .local v1, "length":I
    add-int v2, p2, v1

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 153
    const/4 v2, -0x1

    return v2

    .line 155
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    return v1
.end method

.method public appendQuotedUTF8([BI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 161
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 162
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 163
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 165
    :cond_0
    array-length v1, v0

    .line 166
    .local v1, "length":I
    add-int v2, p2, v1

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 167
    const/4 v2, -0x1

    return v2

    .line 169
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    return v1
.end method

.method public appendUnquoted([CI)I
    .locals 4
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I

    .line 175
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 176
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 177
    .local v1, "length":I
    add-int v2, p2, v1

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 178
    const/4 v2, -0x1

    return v2

    .line 180
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 181
    return v1
.end method

.method public appendUnquotedUTF8([BI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 186
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 187
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 188
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 190
    :cond_0
    array-length v1, v0

    .line 191
    .local v1, "length":I
    add-int v2, p2, v1

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 192
    const/4 v2, -0x1

    return v2

    .line 194
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    return v1
.end method

.method public final asQuotedChars()[C
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 106
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 107
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 109
    :cond_0
    return-object v0
.end method

.method public final asQuotedUTF8()[B
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 120
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 121
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 123
    :cond_0
    return-object v0
.end method

.method public final asUnquotedUTF8()[B
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 133
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 134
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 136
    :cond_0
    return-object v0
.end method

.method public final charLength()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 262
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 263
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 265
    .local v0, "other":Lcom/fasterxml/jackson/core/io/SerializedString;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    iget-object v2, v0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 263
    .end local v0    # "other":Lcom/fasterxml/jackson/core/io/SerializedString;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public putQuotedUTF8(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 222
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 223
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 224
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 226
    :cond_0
    array-length v1, v0

    .line 227
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 228
    const/4 v2, -0x1

    return v2

    .line 230
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 231
    return v1
.end method

.method public putUnquotedUTF8(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 236
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 237
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 238
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 240
    :cond_0
    array-length v1, v0

    .line 241
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 242
    const/4 v2, -0x1

    return v2

    .line 244
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 245
    return v1
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .line 81
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_jdkSerializeValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public writeQuotedUTF8(Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 201
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 202
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 204
    :cond_0
    array-length v1, v0

    .line 205
    .local v1, "length":I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 206
    return v1
.end method

.method public writeUnquotedUTF8(Ljava/io/OutputStream;)I
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 212
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 213
    sget-object v1, Lcom/fasterxml/jackson/core/io/SerializedString;->JSON_ENCODER:Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 215
    :cond_0
    array-length v1, v0

    .line 216
    .local v1, "length":I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 217
    return v1
.end method
