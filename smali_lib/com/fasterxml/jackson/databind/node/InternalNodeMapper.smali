.class final Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;
.super Ljava/lang/Object;
.source "InternalNodeMapper.java"


# static fields
.field private static final JSON_MAPPER:Lcom/fasterxml/jackson/databind/json/JsonMapper;

.field private static final NODE_READER:Lcom/fasterxml/jackson/databind/ObjectReader;

.field private static final PRETTY_WRITER:Lcom/fasterxml/jackson/databind/ObjectWriter;

.field private static final STD_WRITER:Lcom/fasterxml/jackson/databind/ObjectWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->JSON_MAPPER:Lcom/fasterxml/jackson/databind/json/JsonMapper;

    .line 20
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->writer()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->STD_WRITER:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 21
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->writer()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->withDefaultPrettyPrinter()Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->PRETTY_WRITER:Lcom/fasterxml/jackson/databind/ObjectWriter;

    .line 24
    const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->NODE_READER:Lcom/fasterxml/jackson/databind/ObjectReader;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToNode([B)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p0, "json"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->NODE_READER:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public static nodeToPrettyString(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .line 38
    :try_start_0
    sget-object v0, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->PRETTY_WRITER:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static nodeToString(Lcom/fasterxml/jackson/databind/JsonNode;)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .line 30
    :try_start_0
    sget-object v0, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->STD_WRITER:Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueToBytes(Ljava/lang/Object;)[B
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/fasterxml/jackson/databind/node/InternalNodeMapper;->JSON_MAPPER:Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
