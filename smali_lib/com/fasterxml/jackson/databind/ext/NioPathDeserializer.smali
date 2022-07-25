.class public Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "NioPathDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final areWindowsFilePathsSupported:Z

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "isWindowsRootFound":Z
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 31
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 32
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 30
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    sput-boolean v0, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;->areWindowsFilePathsSupported:Z

    .line 38
    .end local v0    # "isWindowsRootFound":Z
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    const-class v0, Ljava/nio/file/Path;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JacksonException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/nio/file/Path;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-class v0, Ljava/nio/file/Path;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_1

    .line 53
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 56
    :cond_1
    sget-boolean v2, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;->areWindowsFilePathsSupported:Z

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    .line 58
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    return-object v1

    .line 64
    :cond_2
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    .local v1, "uri":Ljava/net/URI;
    nop

    .line 69
    :try_start_1
    invoke-static {v1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/file/FileSystemNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 84
    :catchall_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    return-object v3

    .line 70
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 72
    .local v2, "cause":Ljava/nio/file/FileSystemNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "scheme":Ljava/lang/String;
    const-class v4, Ljava/nio/file/spi/FileSystemProvider;

    invoke-static {v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/spi/FileSystemProvider;

    .line 75
    .local v5, "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v5}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 76
    invoke-virtual {v5, v1}, Ljava/nio/file/spi/FileSystemProvider;->getPath(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v4

    return-object v4

    .line 78
    .end local v5    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    :cond_3
    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v4, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v4

    .line 80
    .end local v3    # "scheme":Ljava/lang/String;
    :catchall_1
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2, v4, v0, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    return-object v4

    .line 65
    .end local v1    # "uri":Ljava/net/URI;
    .end local v2    # "cause":Ljava/nio/file/FileSystemNotFoundException;
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/net/URISyntaxException;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ext/NioPathDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    return-object v2
.end method
