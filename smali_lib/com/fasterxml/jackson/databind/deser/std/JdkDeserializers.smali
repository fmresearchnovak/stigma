.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.super Ljava/lang/Object;
.source "JdkDeserializers.java"


# static fields
.field private static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/util/UUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-class v3, Ljava/lang/StackTraceElement;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-class v3, Ljava/nio/ByteBuffer;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-class v3, Ljava/lang/Void;

    aput-object v3, v0, v1

    .line 29
    .local v0, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->types()[Ljava/lang/Class;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 31
    .end local v0    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 35
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    move-result-object v0

    .line 37
    .local v0, "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 38
    return-object v0

    .line 40
    :cond_0
    const-class v1, Ljava/util/UUID;

    if-ne p0, v1, :cond_1

    .line 41
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;-><init>()V

    return-object v1

    .line 43
    :cond_1
    const-class v1, Ljava/lang/StackTraceElement;

    if-ne p0, v1, :cond_2

    .line 44
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;-><init>()V

    return-object v1

    .line 46
    :cond_2
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p0, v1, :cond_3

    .line 47
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/AtomicBooleanDeserializer;-><init>()V

    return-object v1

    .line 49
    :cond_3
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne p0, v1, :cond_4

    .line 50
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/AtomicIntegerDeserializer;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/AtomicIntegerDeserializer;-><init>()V

    return-object v1

    .line 52
    :cond_4
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p0, v1, :cond_5

    .line 53
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/AtomicLongDeserializer;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/AtomicLongDeserializer;-><init>()V

    return-object v1

    .line 55
    :cond_5
    const-class v1, Ljava/nio/ByteBuffer;

    if-ne p0, v1, :cond_6

    .line 56
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/std/ByteBufferDeserializer;-><init>()V

    return-object v1

    .line 58
    :cond_6
    const-class v1, Ljava/lang/Void;

    if-ne p0, v1, :cond_7

    .line 59
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/NullifyingDeserializer;

    return-object v1

    .line 62
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasDeserializerFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 67
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
