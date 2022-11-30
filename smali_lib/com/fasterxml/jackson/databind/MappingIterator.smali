.class public Lcom/fasterxml/jackson/databind/MappingIterator;
.super Ljava/lang/Object;
.source "MappingIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field protected static final EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/MappingIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/MappingIterator<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final STATE_CLOSED:I = 0x0

.field protected static final STATE_HAS_VALUE:I = 0x3

.field protected static final STATE_MAY_HAVE_VALUE:I = 0x2

.field protected static final STATE_NEED_RESYNC:I = 0x1


# instance fields
.field protected final _closeParser:Z

.field protected final _context:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field protected final _deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final _parser:Lcom/fasterxml/jackson/core/JsonParser;

.field protected final _seqContext:Lcom/fasterxml/jackson/core/JsonStreamContext;

.field protected _state:I

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _updatedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    new-instance v7, Lcom/fasterxml/jackson/databind/MappingIterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/MappingIterator;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JsonDeserializer;ZLjava/lang/Object;)V

    sput-object v7, Lcom/fasterxml/jackson/databind/MappingIterator;->EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/MappingIterator;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JsonDeserializer;ZLjava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p3, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p5, "managedParser"    # Z
    .param p6, "valueToUpdate"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    .local p4, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 123
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    .line 124
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 125
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 126
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_closeParser:Z

    .line 127
    const/4 v0, 0x0

    if-nez p6, :cond_0

    .line 128
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;

    .line 143
    :goto_0
    if-nez p2, :cond_1

    .line 144
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_seqContext:Lcom/fasterxml/jackson/core/JsonStreamContext;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    goto :goto_2

    .line 147
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    .line 148
    .local v0, "sctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    if-eqz p5, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 156
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_4

    .line 157
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getParent()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v0

    .line 160
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_4
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_seqContext:Lcom/fasterxml/jackson/core/JsonStreamContext;

    .line 161
    const/4 v1, 0x2

    iput v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    .line 163
    .end local v0    # "sctxt":Lcom/fasterxml/jackson/core/JsonStreamContext;
    :goto_2
    return-void
.end method

.method public static emptyIterator()Lcom/fasterxml/jackson/databind/MappingIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/fasterxml/jackson/databind/MappingIterator<",
            "TT;>;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/fasterxml/jackson/databind/MappingIterator;->EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/MappingIterator;

    return-object v0
.end method


# virtual methods
.method protected _handleIOException(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/IOException;",
            ")TR;"
        }
    .end annotation

    .line 420
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected _handleMappingException(Lcom/fasterxml/jackson/databind/JsonMappingException;)Ljava/lang/Object;
    .locals 2
    .param p1, "e"    # Lcom/fasterxml/jackson/databind/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JsonMappingException;",
            ")TR;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw v0
.end method

.method protected _resync()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    .line 392
    .local v0, "p":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_seqContext:Lcom/fasterxml/jackson/core/JsonStreamContext;

    if-ne v1, v2, :cond_0

    .line 393
    return-void

    .line 397
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 398
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 403
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 405
    :cond_2
    if-nez v1, :cond_5

    .line 406
    return-void

    .line 404
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 399
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_seqContext:Lcom/fasterxml/jackson/core/JsonStreamContext;

    if-ne v2, v3, :cond_5

    .line 400
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V

    .line 401
    return-void

    .line 408
    .end local v1    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_5
    :goto_3
    goto :goto_0
.end method

.method protected _throwNoSuchElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .line 412
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    iget v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    .line 216
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    .line 220
    :cond_0
    return-void
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    .line 379
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1

    .line 354
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    return-object v0
.end method

.method public getParserSchema()Lcom/fasterxml/jackson/core/FormatSchema;
    .locals 1

    .line 365
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getSchema()Lcom/fasterxml/jackson/core/FormatSchema;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 186
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->hasNextValue()Z

    move-result v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingIterator;->_handleIOException(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 188
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingIterator;->_handleMappingException(Lcom/fasterxml/jackson/databind/JsonMappingException;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public hasNextValue()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    iget v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 261
    return v1

    .line 238
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->_resync()V

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    if-nez v0, :cond_0

    .line 242
    return v2

    .line 244
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 245
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_3

    .line 246
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_3

    .line 249
    :cond_1
    iput v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    .line 250
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_closeParser:Z

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    .line 253
    :cond_2
    return v2

    .line 256
    :cond_3
    const/4 v2, 0x3

    iput v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    .line 257
    return v1

    .line 236
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->nextValue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingIterator;->_handleIOException(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingIterator;->_handleMappingException(Lcom/fasterxml/jackson/databind/JsonMappingException;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    iget v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->hasNextValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->_throwNoSuchElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->_throwNoSuchElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 282
    .local v0, "nextState":I
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 285
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v2, v3, v4, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .restart local v1    # "value":Ljava/lang/Object;, "TT;"
    :goto_1
    const/4 v0, 0x2

    .line 289
    nop

    .line 291
    iput v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    .line 296
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V

    .line 289
    return-object v1

    .line 291
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    iput v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_state:I

    .line 296
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V

    .line 297
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public readAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "-TT;>;>(TC;)TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    .local p1, "results":Ljava/util/Collection;, "TC;"
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->hasNextValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->nextValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_0
    return-object p1
.end method

.method public readAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingIterator;->readAll(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readAll(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List<",
            "-TT;>;>(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    .local p1, "resultList":Ljava/util/List;, "TL;"
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->hasNextValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->nextValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_0
    return-object p1
.end method

.method public remove()V
    .locals 1

    .line 209
    .local p0, "this":Lcom/fasterxml/jackson/databind/MappingIterator;, "Lcom/fasterxml/jackson/databind/MappingIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
