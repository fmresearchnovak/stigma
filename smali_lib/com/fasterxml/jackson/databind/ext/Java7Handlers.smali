.class public abstract Lcom/fasterxml/jackson/databind/ext/Java7Handlers;
.super Ljava/lang/Object;
.source "Java7Handlers.java"


# static fields
.field private static final IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Handlers;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "impl":Lcom/fasterxml/jackson/databind/ext/Java7Handlers;
    :try_start_0
    const-string v1, "com.fasterxml.jackson.databind.ext.Java7HandlersImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 24
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ext/Java7Handlers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 31
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 32
    :goto_0
    sput-object v0, Lcom/fasterxml/jackson/databind/ext/Java7Handlers;->IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Handlers;

    .line 33
    .end local v0    # "impl":Lcom/fasterxml/jackson/databind/ext/Java7Handlers;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/fasterxml/jackson/databind/ext/Java7Handlers;
    .locals 1

    .line 36
    sget-object v0, Lcom/fasterxml/jackson/databind/ext/Java7Handlers;->IMPL:Lcom/fasterxml/jackson/databind/ext/Java7Handlers;

    return-object v0
.end method


# virtual methods
.method public abstract getClassJavaNioFilePath()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getDeserializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSerializerForJavaNioFilePath(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end method
