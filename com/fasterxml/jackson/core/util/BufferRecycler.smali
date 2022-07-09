.class public Lcom/fasterxml/jackson/core/util/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# static fields
.field public static final BYTE_BASE64_CODEC_BUFFER:I = 0x3

.field private static final BYTE_BUFFER_LENGTHS:[I

.field public static final BYTE_READ_IO_BUFFER:I = 0x0

.field public static final BYTE_WRITE_CONCAT_BUFFER:I = 0x2

.field public static final BYTE_WRITE_ENCODING_BUFFER:I = 0x1

.field private static final CHAR_BUFFER_LENGTHS:[I

.field public static final CHAR_CONCAT_BUFFER:I = 0x1

.field public static final CHAR_NAME_COPY_BUFFER:I = 0x3

.field public static final CHAR_TEXT_BUFFER:I = 0x2

.field public static final CHAR_TOKEN_BUFFER:I


# instance fields
.field protected final _byteBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "[B>;"
        }
    .end annotation
.end field

.field protected final _charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler;->BYTE_BUFFER_LENGTHS:[I

    .line 77
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->CHAR_BUFFER_LENGTHS:[I

    return-void

    :array_0
    .array-data 4
        0x1f40
        0x1f40
        0x7d0
        0x7d0
    .end array-data

    :array_1
    .array-data 4
        0xfa0
        0xfa0
        0xc8
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    const/4 v0, 0x4

    invoke-direct {p0, v0, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;-><init>(II)V

    .line 97
    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1
    .param p1, "bbCount"    # I
    .param p2, "cbCount"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 111
    return-void
.end method


# virtual methods
.method public final allocByteBuffer(I)[B
    .locals 1
    .param p1, "ix"    # I

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(II)[B

    move-result-object v0

    return-object v0
.end method

.method public allocByteBuffer(II)[B
    .locals 3
    .param p1, "ix"    # I
    .param p2, "minSize"    # I

    .line 129
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->byteBufferLength(I)I

    move-result v0

    .line 130
    .local v0, "DEF_SIZE":I
    if-ge p2, v0, :cond_0

    .line 131
    move p2, v0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 134
    .local v1, "buffer":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-ge v2, p2, :cond_2

    .line 135
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->balloc(I)[B

    move-result-object v1

    .line 137
    :cond_2
    return-object v1
.end method

.method public final allocCharBuffer(I)[C
    .locals 1
    .param p1, "ix"    # I

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(II)[C

    move-result-object v0

    return-object v0
.end method

.method public allocCharBuffer(II)[C
    .locals 3
    .param p1, "ix"    # I
    .param p2, "minSize"    # I

    .line 155
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->charBufferLength(I)I

    move-result v0

    .line 156
    .local v0, "DEF_SIZE":I
    if-ge p2, v0, :cond_0

    .line 157
    move p2, v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    .line 160
    .local v1, "buffer":[C
    if-eqz v1, :cond_1

    array-length v2, v1

    if-ge v2, p2, :cond_2

    .line 161
    :cond_1
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->calloc(I)[C

    move-result-object v1

    .line 163
    :cond_2
    return-object v1
.end method

.method protected balloc(I)[B
    .locals 1
    .param p1, "size"    # I

    .line 190
    new-array v0, p1, [B

    return-object v0
.end method

.method protected byteBufferLength(I)I
    .locals 1
    .param p1, "ix"    # I

    .line 177
    sget-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->BYTE_BUFFER_LENGTHS:[I

    aget v0, v0, p1

    return v0
.end method

.method protected calloc(I)[C
    .locals 1
    .param p1, "size"    # I

    .line 191
    new-array v0, p1, [C

    return-object v0
.end method

.method protected charBufferLength(I)I
    .locals 1
    .param p1, "ix"    # I

    .line 181
    sget-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->CHAR_BUFFER_LENGTHS:[I

    aget v0, v0, p1

    return v0
.end method

.method public releaseByteBuffer(I[B)V
    .locals 1
    .param p1, "ix"    # I
    .param p2, "buffer"    # [B

    .line 141
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 142
    return-void
.end method

.method public releaseCharBuffer(I[C)V
    .locals 1
    .param p1, "ix"    # I
    .param p2, "buffer"    # [C

    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 168
    return-void
.end method
