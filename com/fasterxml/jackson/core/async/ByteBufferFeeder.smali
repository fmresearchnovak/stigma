.class public interface abstract Lcom/fasterxml/jackson/core/async/ByteBufferFeeder;
.super Ljava/lang/Object;
.source "ByteBufferFeeder.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/async/NonBlockingInputFeeder;


# virtual methods
.method public abstract feedInput(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
