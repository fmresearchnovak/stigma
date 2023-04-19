.class public Lcom/fasterxml/jackson/core/exc/InputCoercionException;
.super Lcom/fasterxml/jackson/core/exc/StreamReadException;
.source "InputCoercionException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _inputType:Lcom/fasterxml/jackson/core/JsonToken;

.field protected final _targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Class;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "inputType"    # Lcom/fasterxml/jackson/core/JsonToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 40
    .local p4, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/exc/StreamReadException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    .line 41
    iput-object p3, p0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->_inputType:Lcom/fasterxml/jackson/core/JsonToken;

    .line 42
    iput-object p4, p0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->_targetType:Ljava/lang/Class;

    .line 43
    return-void
.end method


# virtual methods
.method public getInputType()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->_inputType:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public getTargetType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->_targetType:Ljava/lang/Class;

    return-object v0
.end method

.method public withParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/exc/InputCoercionException;
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;

    .line 53
    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->_processor:Lcom/fasterxml/jackson/core/JsonParser;

    .line 54
    return-object p0
.end method

.method public bridge synthetic withParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/exc/StreamReadException;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->withParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/exc/InputCoercionException;

    move-result-object p1

    return-object p1
.end method

.method public withRequestPayload(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/exc/InputCoercionException;
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/util/RequestPayload;

    .line 59
    iput-object p1, p0, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    .line 60
    return-object p0
.end method

.method public bridge synthetic withRequestPayload(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/exc/StreamReadException;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/exc/InputCoercionException;->withRequestPayload(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/exc/InputCoercionException;

    move-result-object p1

    return-object p1
.end method
