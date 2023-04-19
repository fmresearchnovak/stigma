.class public Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "ValueInstantiationException.java"


# instance fields
.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 37
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 30
    invoke-direct {p0, p1, p2, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 32
    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 47
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/ValueInstantiationException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method
