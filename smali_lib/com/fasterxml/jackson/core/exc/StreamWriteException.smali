.class public abstract Lcom/fasterxml/jackson/core/exc/StreamWriteException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "StreamWriteException.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected transient _processor:Lcom/fasterxml/jackson/core/JsonGenerator;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 26
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 27
    iput-object p2, p0, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;
    .param p3, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .line 32
    iput-object p3, p0, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 21
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    iput-object p2, p0, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 23
    return-void
.end method


# virtual methods
.method public getProcessor()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object v0
.end method

.method public bridge synthetic getProcessor()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/exc/StreamWriteException;->getProcessor()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public abstract withGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/exc/StreamWriteException;
.end method
