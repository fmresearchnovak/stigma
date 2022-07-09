.class public Lcom/fasterxml/jackson/core/util/BufferRecyclers;
.super Ljava/lang/Object;
.source "BufferRecyclers.java"


# static fields
.field public static final SYSTEM_PROPERTY_TRACK_REUSABLE_BUFFERS:Ljava/lang/String; = "com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers"

.field private static final _bufferRecyclerTracker:Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;

.field protected static final _recyclerRef:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/fasterxml/jackson/core/util/BufferRecycler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "trackReusableBuffers":Z
    :try_start_0
    const-string v1, "true"

    const-string v2, "com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 43
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;->instance()Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sput-object v1, Lcom/fasterxml/jackson/core/util/BufferRecyclers;->_bufferRecyclerTracker:Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;

    .line 57
    .end local v0    # "trackReusableBuffers":Z
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecyclers;->_recyclerRef:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeAsUTF8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;
    .locals 4

    .line 67
    sget-object v0, Lcom/fasterxml/jackson/core/util/BufferRecyclers;->_recyclerRef:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 68
    .local v1, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lcom/fasterxml/jackson/core/util/BufferRecycler;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 70
    .local v2, "br":Lcom/fasterxml/jackson/core/util/BufferRecycler;
    :goto_0
    if-nez v2, :cond_2

    .line 71
    new-instance v3, Lcom/fasterxml/jackson/core/util/BufferRecycler;

    invoke-direct {v3}, Lcom/fasterxml/jackson/core/util/BufferRecycler;-><init>()V

    move-object v2, v3

    .line 72
    sget-object v3, Lcom/fasterxml/jackson/core/util/BufferRecyclers;->_bufferRecyclerTracker:Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;->wrapAndTrack(Lcom/fasterxml/jackson/core/util/BufferRecycler;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    goto :goto_1

    .line 75
    :cond_1
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v3

    .line 77
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 79
    :cond_2
    return-object v2
.end method

.method public static getJsonStringEncoder()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    return-object v0
.end method

.method public static quoteAsJsonText(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/lang/StringBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 166
    return-void
.end method

.method public static quoteAsJsonText(Ljava/lang/String;)[C
    .locals 1
    .param p0, "rawText"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v0

    return-object v0
.end method

.method public static quoteAsJsonUTF8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "rawText"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static releaseBuffers()I
    .locals 1

    .line 96
    sget-object v0, Lcom/fasterxml/jackson/core/util/BufferRecyclers;->_bufferRecyclerTracker:Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ThreadLocalBufferManager;->releaseBuffers()I

    move-result v0

    return v0

    .line 99
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
