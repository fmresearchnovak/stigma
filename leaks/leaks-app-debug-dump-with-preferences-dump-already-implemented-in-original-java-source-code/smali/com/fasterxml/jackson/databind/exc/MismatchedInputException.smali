.class public Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "MismatchedInputException.java"


# instance fields
.field protected _targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "targetType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 49
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->rawClass(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->_targetType:Ljava/lang/Class;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 43
    .local p3, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 44
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->_targetType:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "targetType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "msg"    # Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    invoke-direct {v0, p0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;"
        }
    .end annotation

    .line 63
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    invoke-direct {v0, p0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;
    .locals 2
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTargetType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->_targetType:Ljava/lang/Class;

    return-object v0
.end method

.method public setTargetType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;
    .locals 1
    .param p1, "t"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 67
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;->_targetType:Ljava/lang/Class;

    .line 68
    return-object p0
.end method
