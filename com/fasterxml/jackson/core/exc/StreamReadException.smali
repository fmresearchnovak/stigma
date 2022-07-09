.class public abstract Lcom/fasterxml/jackson/core/exc/StreamReadException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "StreamReadException.java"


# static fields
.field static final serialVersionUID:J = 0x2L


# instance fields
.field protected transient _processor:Lcom/fasterxml/jackson/core/JsonParser;

.field protected _requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;

    .line 30
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 31
    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/JsonParser;

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .line 41
    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/JsonParser;

    .line 42
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p4, "rootCause"    # Ljava/lang/Throwable;

    .line 47
    invoke-direct {p0, p2, p3, p4}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .line 48
    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/JsonParser;

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/Throwable;

    .line 35
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .line 36
    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/JsonParser;

    .line 37
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p3, "rootCause"    # Ljava/lang/Throwable;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 109
    invoke-super {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nRequest payload : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/RequestPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method public getProcessor()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_processor:Lcom/fasterxml/jackson/core/JsonParser;

    return-object v0
.end method

.method public bridge synthetic getProcessor()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/exc/StreamReadException;->getProcessor()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPayload()Lcom/fasterxml/jackson/core/util/RequestPayload;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    return-object v0
.end method

.method public getRequestPayloadAsString()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/RequestPayload;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract withParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/exc/StreamReadException;
.end method

.method public abstract withRequestPayload(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/exc/StreamReadException;
.end method
