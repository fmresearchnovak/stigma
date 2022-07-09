.class abstract Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/JsonNode;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final _supportsUpdates:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "supportsUpdates"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 211
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_supportsUpdates:Ljava/lang/Boolean;

    .line 212
    return-void
.end method


# virtual methods
.method protected final _deserializeAnyScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    .line 560
    .local v0, "nodeF":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 581
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v1

    .line 576
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromEmbedded(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    return-object v1

    .line 574
    :pswitch_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v1

    return-object v1

    .line 572
    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v1

    return-object v1

    .line 570
    :pswitch_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v1

    return-object v1

    .line 568
    :pswitch_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    return-object v1

    .line 566
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromInt(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    return-object v1

    .line 564
    :pswitch_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v1

    return-object v1

    .line 562
    :pswitch_8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final _deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 19
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "nodeFactory"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .param p4, "stack"    # Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;",
            "Lcom/fasterxml/jackson/databind/node/ContainerNode<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/node/ContainerNode<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    .local p5, "root":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v0, p5

    .line 431
    .local v0, "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getDeserializationFeatures()I

    move-result v1

    sget v2, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->F_MASK_INT_COERCIONS:I

    and-int v12, v1, v2

    .line 435
    .local v12, "intCoercionFeats":I
    :goto_0
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_5

    .line 436
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 437
    .local v1, "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v2

    move-object v15, v0

    move-object v7, v1

    move-object v6, v2

    .line 440
    .end local v0    # "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    .end local v1    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v6, "propName":Ljava/lang/String;
    .local v7, "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v15, "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    :goto_1
    if-eqz v6, :cond_4

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 443
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_0

    .line 444
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v16, v0

    goto :goto_2

    .line 443
    :cond_0
    move-object/from16 v16, v0

    .line 446
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .local v16, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 491
    :pswitch_0
    move-object v8, v6

    move-object v14, v7

    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v8, "propName":Ljava/lang/String;
    .local v14, "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeRareScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    move-object v7, v0

    .local v0, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto/16 :goto_5

    .line 488
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v8    # "propName":Ljava/lang/String;
    .end local v14    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local v6    # "propName":Ljava/lang/String;
    .restart local v7    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :pswitch_1
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    .line 489
    .restart local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v8, v6

    move-object v14, v7

    move-object v7, v0

    goto/16 :goto_5

    .line 485
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_2
    invoke-virtual {v10, v13}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    .line 486
    .restart local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v8, v6

    move-object v14, v7

    move-object v7, v0

    goto/16 :goto_5

    .line 482
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_3
    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    .line 483
    .restart local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v8, v6

    move-object v14, v7

    move-object v7, v0

    goto/16 :goto_5

    .line 479
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_4
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 480
    .restart local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v8, v6

    move-object v14, v7

    move-object v7, v0

    goto/16 :goto_5

    .line 476
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_5
    invoke-virtual {v8, v9, v12, v10}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromInt(Lcom/fasterxml/jackson/core/JsonParser;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 477
    .restart local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v8, v6

    move-object v14, v7

    move-object v7, v0

    goto/16 :goto_5

    .line 473
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    .line 474
    .restart local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v8, v6

    move-object v14, v7

    move-object v7, v0

    goto/16 :goto_5

    .line 462
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_7
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v13

    .line 463
    .local v13, "newOb":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-virtual {v7, v6, v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v14

    .line 464
    .local v14, "old":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v14, :cond_1

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v6

    move-object v5, v7

    move-object v8, v6

    .end local v6    # "propName":Ljava/lang/String;
    .restart local v8    # "propName":Ljava/lang/String;
    move-object v6, v14

    move-object/from16 v17, v14

    move-object v14, v7

    .end local v7    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v14, "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v17, "old":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V

    goto :goto_3

    .line 464
    .end local v8    # "propName":Ljava/lang/String;
    .end local v17    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v6    # "propName":Ljava/lang/String;
    .restart local v7    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v14, "old":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1
    move-object v8, v6

    move-object/from16 v17, v14

    move-object v14, v7

    .line 468
    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local v8    # "propName":Ljava/lang/String;
    .local v14, "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local v17    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_3
    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->push(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    .line 469
    move-object v0, v13

    .line 471
    .end local v13    # "newOb":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .end local v15    # "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    .end local v17    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    .local v0, "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    move-object/from16 v4, p0

    goto/16 :goto_a

    .line 449
    .end local v0    # "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    .end local v8    # "propName":Ljava/lang/String;
    .end local v14    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local v6    # "propName":Ljava/lang/String;
    .restart local v7    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local v15    # "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    :pswitch_8
    move-object v8, v6

    move-object v14, v7

    const/4 v7, 0x1

    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local v8    # "propName":Ljava/lang/String;
    .restart local v14    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    .line 450
    .local v6, "newOb":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual {v14, v8, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    .line 451
    .restart local v17    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v17, :cond_2

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v8

    move-object v5, v14

    move-object/from16 v18, v6

    .end local v6    # "newOb":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v18, "newOb":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V

    goto :goto_4

    .line 451
    .end local v18    # "newOb":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local v6    # "newOb":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :cond_2
    move-object/from16 v18, v6

    .line 455
    .end local v6    # "newOb":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .restart local v18    # "newOb":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :goto_4
    invoke-virtual {v11, v15}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->push(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    .line 456
    move-object/from16 v0, v18

    .end local v14    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v0, "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    move-object/from16 v15, v18

    .line 458
    move-object v7, v0

    goto :goto_7

    .line 493
    .end local v0    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .end local v17    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v18    # "newOb":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v7, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v14    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :goto_5
    invoke-virtual {v14, v8, v7}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v17

    .line 494
    .restart local v17    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v17, :cond_3

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v8

    move-object v5, v14

    move-object/from16 v6, v17

    move-object/from16 v18, v7

    .end local v7    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    .local v18, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V

    goto :goto_6

    .line 494
    .end local v18    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v7    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_3
    move-object/from16 v18, v7

    .line 440
    .end local v7    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v16    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v17    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_6
    move-object v7, v14

    .end local v14    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .local v7, "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    move-object/from16 v8, p0

    .end local v8    # "propName":Ljava/lang/String;
    .local v6, "propName":Ljava/lang/String;
    goto/16 :goto_1

    :cond_4
    move-object v8, v6

    move-object v14, v7

    .line 500
    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "currObject":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    move-object/from16 v4, p0

    move-object v0, v15

    goto :goto_9

    .line 502
    .end local v15    # "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    .local v0, "curr":Lcom/fasterxml/jackson/databind/node/ContainerNode;, "Lcom/fasterxml/jackson/databind/node/ContainerNode<*>;"
    :cond_5
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 506
    .local v1, "currArray":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 507
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v2, :cond_6

    .line 508
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 510
    :cond_6
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 542
    :pswitch_9
    const/4 v3, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {p0 .. p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeRareScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 543
    goto :goto_8

    .line 539
    :pswitch_a
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 540
    goto :goto_8

    .line 536
    :pswitch_b
    invoke-virtual {v10, v13}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 537
    goto :goto_8

    .line 533
    :pswitch_c
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 534
    goto :goto_8

    .line 530
    :pswitch_d
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 531
    goto :goto_8

    .line 527
    :pswitch_e
    const/4 v3, 0x1

    move-object/from16 v4, p0

    invoke-virtual {v4, v9, v12, v10}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromInt(Lcom/fasterxml/jackson/core/JsonParser;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 528
    goto :goto_8

    .line 524
    :pswitch_f
    const/4 v3, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 525
    goto :goto_8

    .line 522
    :pswitch_10
    move-object/from16 v4, p0

    .line 550
    .end local v1    # "currArray":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_9
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->popOrNull()Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    goto :goto_a

    .line 517
    .restart local v1    # "currArray":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .restart local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_11
    move-object/from16 v4, p0

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->push(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 519
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 520
    goto :goto_a

    .line 512
    :pswitch_12
    move-object/from16 v4, p0

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;->push(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V

    .line 513
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 514
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 515
    nop

    .line 551
    .end local v1    # "currArray":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .end local v2    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_a
    if-nez v0, :cond_7

    .line 552
    return-object p5

    .line 551
    :cond_7
    move-object v8, v4

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_9
        :pswitch_11
        :pswitch_10
        :pswitch_9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected final _deserializeObjectAtName(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 13
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "nodeFactory"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .param p4, "stack"    # Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v8

    .line 303
    .local v8, "node":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 304
    .local v9, "key":Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_2

    .line 306
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 307
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v10, v0

    goto :goto_1

    .line 307
    :cond_0
    move-object v10, v0

    .line 310
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .local v10, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_1
    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeAnyScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    move-object v11, v0

    .local v0, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_2

    .line 316
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_1
    nop

    .line 317
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v6

    .line 316
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    .line 318
    .restart local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v11, v0

    goto :goto_2

    .line 312
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_2
    nop

    .line 313
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    .line 312
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v0

    .line 314
    .restart local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object v11, v0

    .line 322
    .end local v0    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    .local v11, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_2
    invoke-virtual {v8, v9, v11}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v12

    .line 323
    .local v12, "old":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v12, :cond_1

    .line 324
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v9

    move-object v5, v8

    move-object v6, v12

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V

    .line 304
    .end local v10    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v11    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v12    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 328
    :cond_2
    return-object v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final _deserializeRareScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentTokenId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 599
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0

    .line 594
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromEmbedded(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0

    .line 592
    :sswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0

    .line 590
    :sswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method protected final _fromEmbedded(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    .line 672
    .local v0, "nodeF":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v1

    .line 674
    .local v1, "ob":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 675
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v2

    return-object v2

    .line 677
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 678
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, [B

    if-ne v2, v3, :cond_1

    .line 679
    move-object v3, v1

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v3

    return-object v3

    .line 682
    :cond_1
    instance-of v3, v1, Lcom/fasterxml/jackson/databind/util/RawValue;

    if-eqz v3, :cond_2

    .line 683
    move-object v3, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/util/RawValue;

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->rawValueNode(Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v3

    return-object v3

    .line 685
    :cond_2
    instance-of v3, v1, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v3, :cond_3

    .line 687
    move-object v3, v1

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v3

    .line 690
    :cond_3
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v3

    return-object v3
.end method

.method protected final _fromFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "nodeFactory"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    .line 651
    .local v0, "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_0

    .line 652
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v1

    return-object v1

    .line 654
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v1

    return-object v1

    .line 660
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v1

    return-object v1

    .line 662
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_3

    .line 663
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v1

    return-object v1

    .line 665
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v1

    return-object v1
.end method

.method protected final _fromInt(Lcom/fasterxml/jackson/core/JsonParser;ILcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "coercionFeatures"    # I
    .param p3, "nodeFactory"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    if-eqz p2, :cond_1

    .line 606
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    return-object v0

    .line 609
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    return-object v0

    .line 611
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    .line 612
    .local v0, "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_2

    .line 613
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v1

    return-object v1

    .line 615
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_3

    .line 616
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v1

    return-object v1

    .line 618
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v1

    return-object v1
.end method

.method protected final _fromInt(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "nodeFactory"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getDeserializationFeatures()I

    move-result v0

    .line 626
    .local v0, "feats":I
    sget v1, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->F_MASK_INT_COERCIONS:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 627
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .local v1, "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    goto :goto_0

    .line 629
    .end local v1    # "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_LONG_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    .restart local v1    # "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    goto :goto_0

    .line 632
    .end local v1    # "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v1

    .restart local v1    # "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    goto :goto_0

    .line 635
    .end local v1    # "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v1

    .line 637
    .restart local v1    # "nt":Lcom/fasterxml/jackson/core/JsonParser$NumberType;
    :goto_0
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v1, v2, :cond_3

    .line 638
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v2

    return-object v2

    .line 640
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v1, v2, :cond_4

    .line 641
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v2

    return-object v2

    .line 643
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v2

    return-object v2
.end method

.method protected _handleDuplicateField(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "nodeFactory"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .param p4, "fieldName"    # Ljava/lang/String;
    .param p5, "objectNode"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .param p6, "oldValue"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p7, "newValue"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_READING_DUP_TREE_KEY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const-string v2, "Duplicate field \'%s\' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled"

    invoke-virtual {p2, v0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/StreamReadCapability;->DUPLICATE_PROPERTIES:Lcom/fasterxml/jackson/core/StreamReadCapability;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/core/StreamReadCapability;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {p6}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    move-object v0, p6

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {v0, p7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 279
    invoke-virtual {p5, p4, p6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 282
    .local v0, "arr":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-virtual {v0, p6}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 283
    invoke-virtual {v0, p7}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 284
    invoke-virtual {p5, p4, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 287
    .end local v0    # "arr":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :cond_2
    :goto_0
    return-void
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCachable()Z
    .locals 1

    .line 232
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    .line 225
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Untyped:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method

.method public supportsUpdate(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 236
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_supportsUpdates:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final updateObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "node"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .param p4, "stack"    # Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartObjectToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 344
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0

    .line 347
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->currentName()Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0    # "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v7

    .line 350
    .local v7, "nodeFactory":Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    :goto_1
    if-eqz v0, :cond_6

    .line 352
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    .line 355
    .local v8, "t":Lcom/fasterxml/jackson/core/JsonToken;
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    .line 356
    .local v9, "old":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v9, :cond_3

    .line 357
    instance-of v1, v9, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_2

    .line 360
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v1, :cond_3

    .line 361
    move-object v1, v9

    check-cast v1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->updateObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 362
    .local v1, "newValue":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eq v1, v9, :cond_5

    .line 363
    invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto/16 :goto_3

    .line 367
    .end local v1    # "newValue":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_2
    instance-of v1, v9, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v1, :cond_3

    .line 370
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v1, :cond_3

    .line 373
    move-object v6, v9

    check-cast v6, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    .line 375
    goto :goto_3

    .line 379
    :cond_3
    if-nez v8, :cond_4

    .line 380
    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 383
    :cond_4
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 408
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeRareScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .local v1, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_2

    .line 405
    .end local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_1
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v1

    .line 406
    .restart local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_2

    .line 402
    .end local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v1

    .line 403
    .restart local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_2

    .line 399
    .end local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v1

    .line 400
    .restart local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_2

    .line 396
    .end local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_4
    invoke-virtual {p0, p1, p2, v7}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_fromInt(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 397
    .restart local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_2

    .line 393
    .end local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v1

    .line 394
    .restart local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_2

    .line 389
    .end local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_6
    nop

    .line 390
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v6

    .line 389
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v1

    .line 391
    .restart local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    goto :goto_2

    .line 385
    .end local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :pswitch_7
    nop

    .line 386
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v6

    .line 385
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_deserializeContainerNoRecursion(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$ContainerStack;Lcom/fasterxml/jackson/databind/node/ContainerNode;)Lcom/fasterxml/jackson/databind/node/ContainerNode;

    move-result-object v1

    .line 387
    .restart local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    nop

    .line 419
    :goto_2
    invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 350
    .end local v1    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v8    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v9    # "old":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 421
    :cond_6
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
