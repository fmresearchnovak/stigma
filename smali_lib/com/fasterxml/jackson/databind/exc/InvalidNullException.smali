.class public Lcom/fasterxml/jackson/databind/exc/InvalidNullException;
.super Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;
.source "InvalidNullException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _propertyName:Lcom/fasterxml/jackson/databind/PropertyName;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "pname"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .line 33
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    .line 34
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 35
    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidNullException;
    .locals 3
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    const-string v1, "<UNKNOWN>"

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->quotedOr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 40
    const-string v1, "Invalid `null` value encountered for property %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;

    invoke-direct {v1, p0, v0, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 43
    .local v1, "exc":Lcom/fasterxml/jackson/databind/exc/InvalidNullException;
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;->setTargetType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/MismatchedInputException;

    .line 46
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidNullException;->_propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    return-object v0
.end method
