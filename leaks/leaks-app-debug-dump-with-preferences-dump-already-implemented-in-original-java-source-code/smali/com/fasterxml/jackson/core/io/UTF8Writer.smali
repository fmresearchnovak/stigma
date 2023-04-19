.class public final Lcom/fasterxml/jackson/core/io/UTF8Writer;
.super Ljava/io/Writer;
.source "UTF8Writer.java"


# static fields
.field static final SURR1_FIRST:I = 0xd800

.field static final SURR1_LAST:I = 0xdbff

.field static final SURR2_FIRST:I = 0xdc00

.field static final SURR2_LAST:I = 0xdfff


# instance fields
.field private final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field private _out:Ljava/io/OutputStream;

.field private _outBuffer:[B

.field private final _outBufferEnd:I

.field private _outPtr:I

.field private _surrogate:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 30
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 32
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocWriteEncodingBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 39
    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 41
    return-void
.end method

.method protected static illegalSurrogate(I)V
    .locals 2
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static illegalSurrogateDesc(I)Ljava/lang/String;
    .locals 3
    .param p0, "code"    # I

    .line 380
    const-string v0, "Illegal character point (0x"

    const v1, 0x10ffff

    if-le p0, v1, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to output; max is 0x10FFFF as per RFC 4627"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    const v1, 0xd800

    if-lt p0, v1, :cond_2

    .line 384
    const v0, 0xdbff

    const-string v1, ")"

    if-gt p0, v0, :cond_1

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched first part of surrogate pair (0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unmatched second part of surrogate pair (0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 390
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 48
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 56
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 57
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 61
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    .line 63
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 64
    .local v3, "buf":[B
    if-eqz v3, :cond_1

    .line 65
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 66
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseWriteEncodingBuffer([B)V

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 73
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 74
    .local v1, "code":I
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 75
    if-lez v1, :cond_2

    .line 76
    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 79
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "code":I
    .end local v3    # "buf":[B
    :cond_2
    return-void
.end method

.method protected convertSurrogate(I)I
    .locals 4
    .param p1, "secondPart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 365
    .local v0, "firstPart":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 368
    const v1, 0xdc00

    if-lt p1, v1, :cond_0

    const v2, 0xdfff

    if-gt p1, v2, :cond_0

    .line 371
    const/high16 v2, 0x10000

    const v3, 0xd800

    sub-int v3, v0, v3

    shl-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    sub-int v1, p1, v1

    add-int/2addr v3, v1

    return v3

    .line 369
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken surrogate pair: first char 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", second 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; illegal combination"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 86
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    if-lez v1, :cond_0

    .line 87
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 88
    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 92
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result p1

    goto :goto_0

    .line 205
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    .line 207
    const v0, 0xdbff

    if-le p1, v0, :cond_1

    .line 208
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 211
    :cond_1
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 212
    return-void

    .line 215
    :cond_2
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    if-lt v0, v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 217
    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 220
    :cond_3
    const/16 v0, 0x80

    if-ge p1, v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_2

    .line 223
    :cond_4
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 224
    .local v1, "ptr":I
    const/16 v2, 0x800

    if-ge p1, v2, :cond_5

    .line 225
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .local v3, "ptr":I
    shr-int/lit8 v4, p1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 226
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    goto :goto_1

    .line 227
    :cond_5
    const v2, 0xffff

    if-gt p1, v2, :cond_6

    .line 228
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v4, p1, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 229
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 230
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    move v1, v3

    goto :goto_1

    .line 232
    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    :cond_6
    const v2, 0x10ffff

    if-le p1, v2, :cond_7

    .line 233
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 235
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v4, p1, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 236
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 237
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 238
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 240
    :goto_1
    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 242
    .end local v1    # "ptr":I
    :goto_2
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(Ljava/lang/String;II)V

    .line 248
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 254
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 255
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 257
    :cond_0
    return-void

    .line 261
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v0, :cond_2

    .line 262
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 263
    .local p2, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 264
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    move p2, v0

    .line 268
    .end local v0    # "off":I
    .local p2, "off":I
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 269
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 270
    .local v1, "outBuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 273
    .local v2, "outBufLast":I
    add-int/2addr p3, p2

    .line 276
    :goto_0
    if-ge p2, p3, :cond_e

    .line 280
    if-lt v0, v2, :cond_3

    .line 281
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 282
    const/4 v0, 0x0

    .line 285
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 287
    .local p2, "c":I
    const/16 v4, 0x80

    if-ge p2, v4, :cond_7

    .line 288
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    int-to-byte v6, p2

    aput-byte v6, v1, v0

    .line 290
    sub-int v0, p3, v3

    .line 291
    .local v0, "maxInCount":I
    sub-int v6, v2, v5

    .line 293
    .local v6, "maxOutCount":I
    if-le v0, v6, :cond_4

    .line 294
    move v0, v6

    .line 296
    :cond_4
    add-int v7, v0, v3

    move v0, p2

    move p2, v3

    .line 299
    .end local v3    # "off":I
    .local v0, "c":I
    .local v7, "maxInCount":I
    .local p2, "off":I
    :goto_1
    if-lt p2, v7, :cond_5

    .line 300
    move v0, v5

    goto :goto_0

    .line 302
    :cond_5
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 303
    if-lt v0, v4, :cond_6

    .line 304
    move p2, v0

    move v0, v5

    goto :goto_2

    .line 306
    :cond_6
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "outPtr":I
    .local p2, "outPtr":I
    int-to-byte v8, v0

    aput-byte v8, v1, v5

    move v5, p2

    move p2, v3

    goto :goto_1

    .line 311
    .end local v6    # "maxOutCount":I
    .end local v7    # "maxInCount":I
    .local v0, "outPtr":I
    .local p2, "c":I
    :cond_7
    :goto_2
    const/16 v5, 0x800

    if-ge p2, v5, :cond_8

    .line 312
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v5    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 313
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    move p2, v3

    goto :goto_3

    .line 316
    :cond_8
    const v5, 0xd800

    if-lt p2, v5, :cond_d

    const v5, 0xdfff

    if-le p2, v5, :cond_9

    goto :goto_4

    .line 323
    :cond_9
    const v5, 0xdbff

    if-le p2, v5, :cond_a

    .line 324
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 325
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 327
    :cond_a
    iput p2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 329
    if-lt v3, p3, :cond_b

    .line 330
    move p2, v3

    goto :goto_5

    .line 332
    :cond_b
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "off":I
    .local v5, "off":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result p2

    .line 333
    const v3, 0x10ffff

    if-le p2, v3, :cond_c

    .line 334
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 335
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 337
    :cond_c
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPtr":I
    .local v3, "outPtr":I
    shr-int/lit8 v6, p2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 338
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v6, p2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 339
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v3    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 340
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v0    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move p2, v5

    .line 342
    .end local v5    # "off":I
    .local p2, "off":I
    :goto_3
    goto/16 :goto_0

    .line 317
    .local v3, "off":I
    .local p2, "c":I
    :cond_d
    :goto_4
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    shr-int/lit8 v6, p2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 318
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 319
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v5    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 320
    move p2, v3

    move v0, v5

    goto/16 :goto_0

    .line 343
    .end local v3    # "off":I
    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    .local p2, "off":I
    :cond_e
    :goto_5
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 344
    return-void
.end method

.method public write([C)V
    .locals 2
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write([CII)V

    .line 99
    return-void
.end method

.method public write([CII)V
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 106
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 107
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    .line 109
    :cond_0
    return-void

    .line 113
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    if-lez v0, :cond_2

    .line 114
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-char p2, p1, p2

    .line 115
    .local p2, "second":C
    add-int/lit8 p3, p3, -0x1

    .line 116
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->write(I)V

    move p2, v0

    .line 120
    .end local v0    # "off":I
    .local p2, "off":I
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 121
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBuffer:[B

    .line 122
    .local v1, "outBuf":[B
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outBufferEnd:I

    .line 125
    .local v2, "outBufLast":I
    add-int/2addr p3, p2

    .line 128
    :goto_0
    if-ge p2, p3, :cond_e

    .line 132
    if-lt v0, v2, :cond_3

    .line 133
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_out:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 134
    const/4 v0, 0x0

    .line 137
    :cond_3
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char p2, p1, p2

    .line 139
    .local p2, "c":I
    const/16 v4, 0x80

    if-ge p2, v4, :cond_7

    .line 140
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    int-to-byte v6, p2

    aput-byte v6, v1, v0

    .line 142
    sub-int v0, p3, v3

    .line 143
    .local v0, "maxInCount":I
    sub-int v6, v2, v5

    .line 145
    .local v6, "maxOutCount":I
    if-le v0, v6, :cond_4

    .line 146
    move v0, v6

    .line 148
    :cond_4
    add-int v7, v0, v3

    move v0, p2

    move p2, v3

    .line 151
    .end local v3    # "off":I
    .local v0, "c":I
    .local v7, "maxInCount":I
    .local p2, "off":I
    :goto_1
    if-lt p2, v7, :cond_5

    .line 152
    move v0, v5

    goto :goto_0

    .line 154
    :cond_5
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .restart local v3    # "off":I
    aget-char v0, p1, p2

    .line 155
    if-lt v0, v4, :cond_6

    .line 156
    move p2, v0

    move v0, v5

    goto :goto_2

    .line 158
    :cond_6
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "outPtr":I
    .local p2, "outPtr":I
    int-to-byte v8, v0

    aput-byte v8, v1, v5

    move v5, p2

    move p2, v3

    goto :goto_1

    .line 163
    .end local v6    # "maxOutCount":I
    .end local v7    # "maxInCount":I
    .local v0, "outPtr":I
    .local p2, "c":I
    :cond_7
    :goto_2
    const/16 v5, 0x800

    if-ge p2, v5, :cond_8

    .line 164
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v5    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 165
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    move p2, v3

    goto :goto_3

    .line 168
    :cond_8
    const v5, 0xd800

    if-lt p2, v5, :cond_d

    const v5, 0xdfff

    if-le p2, v5, :cond_9

    goto :goto_4

    .line 175
    :cond_9
    const v5, 0xdbff

    if-le p2, v5, :cond_a

    .line 176
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 177
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 179
    :cond_a
    iput p2, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_surrogate:I

    .line 181
    if-lt v3, p3, :cond_b

    .line 182
    move p2, v3

    goto :goto_5

    .line 184
    :cond_b
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "off":I
    .local v5, "off":I
    aget-char v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->convertSurrogate(I)I

    move-result p2

    .line 185
    const v3, 0x10ffff

    if-le p2, v3, :cond_c

    .line 186
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 187
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogate(I)V

    .line 189
    :cond_c
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPtr":I
    .local v3, "outPtr":I
    shr-int/lit8 v6, p2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 190
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v6, p2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    .line 191
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v3    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 192
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "outPtr":I
    .restart local v0    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    move p2, v5

    .line 194
    .end local v5    # "off":I
    .local p2, "off":I
    :goto_3
    goto/16 :goto_0

    .line 169
    .local v3, "off":I
    .local p2, "c":I
    :cond_d
    :goto_4
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .local v5, "outPtr":I
    shr-int/lit8 v6, p2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v1, v0

    .line 170
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v6, p2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 171
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local v5    # "outPtr":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 172
    move p2, v3

    move v0, v5

    goto/16 :goto_0

    .line 195
    .end local v3    # "off":I
    .end local v5    # "outPtr":I
    .restart local v0    # "outPtr":I
    .local p2, "off":I
    :cond_e
    :goto_5
    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF8Writer;->_outPtr:I

    .line 196
    return-void
.end method
