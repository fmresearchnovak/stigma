.class public Lcom/fasterxml/jackson/databind/JsonMappingException;
.super Lcom/fasterxml/jackson/databind/DatabindException;
.source "JsonMappingException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;
    }
.end annotation


# static fields
.field static final MAX_REFS_TO_LIST:I = 0x3e8

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field protected _path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation
.end field

.field protected transient _processor:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 1
    .param p1, "processor"    # Ljava/io/Closeable;
    .param p2, "msg"    # Ljava/lang/String;

    .line 233
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/DatabindException;-><init>(Ljava/lang/String;)V

    .line 234
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_processor:Ljava/io/Closeable;

    .line 235
    instance-of v0, p1, Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz v0, :cond_0

    .line 239
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 241
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0
    .param p1, "processor"    # Ljava/io/Closeable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;

    .line 261
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/DatabindException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 262
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_processor:Ljava/io/Closeable;

    .line 263
    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "processor"    # Ljava/io/Closeable;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "problem"    # Ljava/lang/Throwable;

    .line 247
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/DatabindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_processor:Ljava/io/Closeable;

    .line 250
    instance-of v0, p3, Lcom/fasterxml/jackson/core/JacksonException;

    if-eqz v0, :cond_0

    .line 251
    move-object v0, p3

    check-cast v0, Lcom/fasterxml/jackson/core/JacksonException;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JacksonException;->getLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    goto :goto_0

    .line 252
    :cond_0
    instance-of v0, p1, Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz v0, :cond_1

    .line 253
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    .line 255
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DatabindException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DatabindException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p3, "rootCause"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/DatabindException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "rootCause"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DatabindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3
    .param p0, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p1, "msg"    # Ljava/lang/String;

    .line 283
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .param p0, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "problem"    # Ljava/lang/Throwable;

    .line 290
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;

    .line 269
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "problem"    # Ljava/lang/Throwable;

    .line 276
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "msg"    # Ljava/lang/String;

    .line 297
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 304
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p1, "msg"    # Ljava/lang/String;

    .line 311
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "problem"    # Ljava/lang/Throwable;

    .line 321
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getGenerator()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4
    .param p0, "src"    # Ljava/io/IOException;

    .line 335
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 338
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 336
    const-string v2, "Unexpected IOException (of type %s): %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 335
    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "ref"    # Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    .line 375
    instance-of v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-eqz v0, :cond_0

    .line 376
    move-object v0, p0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    .local v0, "jme":Lcom/fasterxml/jackson/databind/JsonMappingException;
    goto :goto_0

    .line 379
    .end local v0    # "jme":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :cond_0
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_2
    const/4 v1, 0x0

    .line 386
    .local v1, "proc":Ljava/io/Closeable;
    instance-of v2, p0, Lcom/fasterxml/jackson/core/JacksonException;

    if-eqz v2, :cond_3

    .line 387
    move-object v2, p0

    check-cast v2, Lcom/fasterxml/jackson/core/JacksonException;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JacksonException;->getProcessor()Ljava/lang/Object;

    move-result-object v2

    .line 388
    .local v2, "proc0":Ljava/lang/Object;
    instance-of v3, v2, Ljava/io/Closeable;

    if-eqz v3, :cond_3

    .line 389
    move-object v1, v2

    check-cast v1, Ljava/io/Closeable;

    .line 392
    .end local v2    # "proc0":Ljava/lang/Object;
    :cond_3
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v2, v1, v0, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 394
    .end local v1    # "proc":Ljava/io/Closeable;
    .local v0, "jme":Lcom/fasterxml/jackson/databind/JsonMappingException;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 395
    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "refFrom"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .line 363
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .param p0, "src"    # Ljava/lang/Throwable;
    .param p1, "refFrom"    # Ljava/lang/Object;
    .param p2, "refFieldName"    # Ljava/lang/String;

    .line 351
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _appendPathDesc(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 528
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 529
    return-void

    .line 531
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 532
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    const-string v1, "->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 538
    :cond_2
    return-void
.end method

.method protected _buildMessage()Ljava/lang/String;
    .locals 3

    .line 498
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/DatabindException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 500
    return-object v0

    .line 502
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const-string v2, " (through reference chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getPathReference(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 510
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_buildMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_buildMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 419
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPathReference()Ljava/lang/String;
    .locals 1

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getPathReference(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathReference(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_appendPathDesc(Ljava/lang/StringBuilder;)V

    .line 436
    return-object p1
.end method

.method public getProcessor()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 479
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_processor:Ljava/io/Closeable;

    return-object v0
.end method

.method public prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V
    .locals 2
    .param p1, "r"    # Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    .line 459
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 467
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 469
    :cond_1
    return-void
.end method

.method public prependPath(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .line 454
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 455
    return-void
.end method

.method public prependPath(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 445
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    .line 446
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 402
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 403
    return-object p0
.end method
