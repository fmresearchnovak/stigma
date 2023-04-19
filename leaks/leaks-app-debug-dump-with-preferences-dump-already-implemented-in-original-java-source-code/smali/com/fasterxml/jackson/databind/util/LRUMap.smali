.class public Lcom/fasterxml/jackson/databind/util/LRUMap;
.super Ljava/lang/Object;
.source "LRUMap.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/LookupCache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/databind/util/LookupCache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _jdkSerializeMaxEntries:I

.field protected final transient _map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected final transient _maxEntries:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "initialEntries"    # I
    .param p2, "maxEntries"    # I

    .line 35
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    .line 39
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    .line 97
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 76
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_1

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    .line 49
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_1

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    .line 66
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .line 104
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_jdkSerializeMaxEntries:I

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 79
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
