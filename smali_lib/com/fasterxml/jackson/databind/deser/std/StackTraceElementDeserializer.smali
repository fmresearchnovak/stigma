.class public Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "StackTraceElementDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<",
        "Ljava/lang/StackTraceElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    const-class v0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected constructValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "lineNumber"    # I
    .param p6, "moduleName"    # Ljava/lang/String;
    .param p7, "moduleVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->constructValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method protected constructValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "lineNumber"    # I
    .param p6, "moduleName"    # Ljava/lang/String;
    .param p7, "moduleVersion"    # Ljava/lang/String;
    .param p8, "classLoaderName"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/StackTraceElement;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/StackTraceElement;
    .locals 20
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 23
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_c

    .line 24
    const-string v1, ""

    .local v1, "className":Ljava/lang/String;
    const-string v2, ""

    .local v2, "methodName":Ljava/lang/String;
    const-string v3, ""

    .line 26
    .local v3, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "moduleName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 27
    .local v5, "moduleVersion":Ljava/lang/String;
    const/4 v6, 0x0

    .line 28
    .local v6, "classLoaderName":Ljava/lang/String;
    const/4 v7, -0x1

    move-object v12, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    .line 30
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "moduleName":Ljava/lang/String;
    .end local v5    # "moduleVersion":Ljava/lang/String;
    .end local v6    # "classLoaderName":Ljava/lang/String;
    .local v12, "className":Ljava/lang/String;
    .local v13, "methodName":Ljava/lang/String;
    .local v14, "fileName":Ljava/lang/String;
    .local v15, "moduleName":Ljava/lang/String;
    .local v16, "moduleVersion":Ljava/lang/String;
    .local v17, "classLoaderName":Ljava/lang/String;
    .local v18, "lineNumber":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextValue()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object/from16 v19, v1

    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .local v19, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v0, :cond_b

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "propName":Ljava/lang/String;
    const-string v1, "className"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .end local v12    # "className":Ljava/lang/String;
    .restart local v1    # "className":Ljava/lang/String;
    goto/16 :goto_1

    .line 35
    .end local v1    # "className":Ljava/lang/String;
    .restart local v12    # "className":Ljava/lang/String;
    :cond_0
    const-string v1, "classLoaderName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    .end local v17    # "classLoaderName":Ljava/lang/String;
    .local v1, "classLoaderName":Ljava/lang/String;
    goto/16 :goto_1

    .line 37
    .end local v1    # "classLoaderName":Ljava/lang/String;
    .restart local v17    # "classLoaderName":Ljava/lang/String;
    :cond_1
    const-string v1, "fileName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .end local v14    # "fileName":Ljava/lang/String;
    .local v1, "fileName":Ljava/lang/String;
    goto/16 :goto_1

    .line 39
    .end local v1    # "fileName":Ljava/lang/String;
    .restart local v14    # "fileName":Ljava/lang/String;
    :cond_2
    const-string v1, "lineNumber"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    move/from16 v18, v1

    .end local v18    # "lineNumber":I
    .local v1, "lineNumber":I
    goto :goto_1

    .line 43
    .end local v1    # "lineNumber":I
    .restart local v18    # "lineNumber":I
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->_parseIntPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v1

    move/from16 v18, v1

    .end local v18    # "lineNumber":I
    .restart local v1    # "lineNumber":I
    goto :goto_1

    .line 45
    .end local v1    # "lineNumber":I
    .restart local v18    # "lineNumber":I
    :cond_4
    const-string v1, "methodName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .end local v13    # "methodName":Ljava/lang/String;
    .local v1, "methodName":Ljava/lang/String;
    goto :goto_1

    .line 47
    .end local v1    # "methodName":Ljava/lang/String;
    .restart local v13    # "methodName":Ljava/lang/String;
    :cond_5
    const-string v1, "nativeMethod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 49
    :cond_6
    const-string v1, "moduleName"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    .end local v15    # "moduleName":Ljava/lang/String;
    .local v1, "moduleName":Ljava/lang/String;
    goto :goto_1

    .line 51
    .end local v1    # "moduleName":Ljava/lang/String;
    .restart local v15    # "moduleName":Ljava/lang/String;
    :cond_7
    const-string v1, "moduleVersion"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    .end local v16    # "moduleVersion":Ljava/lang/String;
    .local v1, "moduleVersion":Ljava/lang/String;
    goto :goto_1

    .line 53
    .end local v1    # "moduleVersion":Ljava/lang/String;
    .restart local v16    # "moduleVersion":Ljava/lang/String;
    :cond_8
    const-string v1, "declaringClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 54
    const-string v1, "format"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 58
    :cond_9
    iget-object v1, v9, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v9, v10, v11, v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    :cond_a
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 61
    .end local v0    # "propName":Ljava/lang/String;
    move-object/from16 v0, v19

    goto/16 :goto_0

    .line 62
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move/from16 v5, v18

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->constructValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0

    .line 64
    .end local v12    # "className":Ljava/lang/String;
    .end local v13    # "methodName":Ljava/lang/String;
    .end local v14    # "fileName":Ljava/lang/String;
    .end local v15    # "moduleName":Ljava/lang/String;
    .end local v16    # "moduleVersion":Ljava/lang/String;
    .end local v17    # "classLoaderName":Ljava/lang/String;
    .end local v18    # "lineNumber":I
    .end local v19    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_c
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_e

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v11, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 66
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 67
    .local v1, "value":Ljava/lang/StackTraceElement;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_d

    .line 68
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->handleMissingEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 70
    :cond_d
    return-object v1

    .line 72
    .end local v1    # "value":Ljava/lang/StackTraceElement;
    :cond_e
    iget-object v1, v9, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v11, v1, v10}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    return-object v1
.end method
