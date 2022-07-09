.class public final Lcom/fasterxml/jackson/core/io/MergedStream;
.super Ljava/io/InputStream;
.source "MergedStream.java"


# instance fields
.field private _b:[B

.field private final _ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

.field private final _end:I

.field private final _in:Ljava/io/InputStream;

.field private _ptr:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 0
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "buf"    # [B
    .param p4, "start"    # I
    .param p5, "end"    # I

    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 27
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 28
    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    .line 29
    iput p4, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    .line 30
    iput p5, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    .line 31
    return-void
.end method

.method private _free()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    .line 114
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    .line 116
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v0, :cond_0

    .line 36
    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 44
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local p0    # "this":Lcom/fasterxml/jackson/core/io/MergedStream;
    :cond_0
    monitor-exit p0

    return-void

    .line 46
    .end local p1    # "readlimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v0, :cond_1

    .line 57
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 58
    .local v0, "c":I
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    if-lt v2, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    .line 61
    :cond_0
    return v0

    .line 63
    .end local v0    # "c":I
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/core/io/MergedStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v0, :cond_2

    .line 73
    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v1, v2

    .line 74
    .local v1, "avail":I
    if-le p3, v1, :cond_0

    .line 75
    move p3, v1

    .line 77
    :cond_0
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    .line 79
    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    if-lt v0, v2, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    .line 82
    :cond_1
    return p3

    .line 84
    .end local v1    # "avail":I
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local p0    # "this":Lcom/fasterxml/jackson/core/io/MergedStream;
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-wide/16 v0, 0x0

    .line 96
    .local v0, "count":J
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v2, :cond_1

    .line 97
    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v2, v3

    .line 99
    .local v2, "amount":I
    int-to-long v4, v2

    cmp-long v6, v4, p1

    if-lez v6, :cond_0

    .line 100
    long-to-int v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    .line 101
    return-wide p1

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    .line 104
    int-to-long v3, v2

    add-long/2addr v0, v3

    .line 105
    int-to-long v3, v2

    sub-long/2addr p1, v3

    .line 108
    .end local v2    # "amount":I
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 109
    :cond_2
    return-wide v0
.end method
