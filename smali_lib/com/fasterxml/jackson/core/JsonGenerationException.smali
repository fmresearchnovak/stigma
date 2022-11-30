.class public Lcom/fasterxml/jackson/core/JsonGenerationException;
.super Lcom/fasterxml/jackson/core/exc/StreamWriteException;
.source "JsonGenerationException.java"


# static fields
.field private static final serialVersionUID:J = 0x7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/exc/StreamWriteException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/exc/StreamWriteException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 43
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/exc/StreamWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;
    .param p3, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/exc/StreamWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 49
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "rootCause"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/exc/StreamWriteException;-><init>(Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .param p1, "rootCause"    # Ljava/lang/Throwable;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/exc/StreamWriteException;-><init>(Ljava/lang/Throwable;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getProcessor()Lcom/fasterxml/jackson/core/JsonGenerator;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    return-object v0
.end method

.method public bridge synthetic getProcessor()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerationException;->getProcessor()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    return-object v0
.end method

.method public withGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/JsonGenerationException;
    .locals 0
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 64
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerationException;->_processor:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 65
    return-object p0
.end method

.method public bridge synthetic withGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/exc/StreamWriteException;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerationException;->withGenerator(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/JsonGenerationException;

    move-result-object p1

    return-object p1
.end method
