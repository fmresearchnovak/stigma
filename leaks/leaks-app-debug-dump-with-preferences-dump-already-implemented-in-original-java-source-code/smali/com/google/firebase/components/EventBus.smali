.class Lcom/google/firebase/components/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"

# interfaces
.implements Lcom/google/firebase/events/Subscriber;
.implements Lcom/google/firebase/events/Publisher;


# instance fields
.field private final defaultExecutor:Ljava/util/concurrent/Executor;

.field private final handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/firebase/events/EventHandler<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/events/Event<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "defaultExecutor"    # Ljava/util/concurrent/Executor;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/EventBus;->pendingEvents:Ljava/util/Queue;

    .line 53
    iput-object p1, p0, Lcom/google/firebase/components/EventBus;->defaultExecutor:Ljava/util/concurrent/Executor;

    .line 54
    return-void
.end method

.method private declared-synchronized getHandlers(Lcom/google/firebase/events/Event;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/events/Event<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/firebase/events/EventHandler<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation

    .local p1, "event":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<*>;"
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/events/Event;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 77
    .local v0, "handlers":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;Ljava/util/concurrent/Executor;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .end local p0    # "this":Lcom/google/firebase/components/EventBus;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 75
    .end local v0    # "handlers":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;Ljava/util/concurrent/Executor;>;"
    .end local p1    # "event":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<*>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic lambda$publish$0(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)V
    .locals 1
    .param p0, "handlerData"    # Ljava/util/Map$Entry;
    .param p1, "casted"    # Lcom/google/firebase/events/Event;

    .line 71
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/events/EventHandler;

    invoke-interface {v0, p1}, Lcom/google/firebase/events/EventHandler;->handle(Lcom/google/firebase/events/Event;)V

    return-void
.end method


# virtual methods
.method enablePublishingAndFlushPending()V
    .locals 3

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "pending":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/google/firebase/events/Event<*>;>;"
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/components/EventBus;->pendingEvents:Ljava/util/Queue;

    if-eqz v1, :cond_0

    .line 124
    move-object v0, v1

    .line 125
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/components/EventBus;->pendingEvents:Ljava/util/Queue;

    .line 127
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/events/Event;

    .line 130
    .local v2, "event":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<*>;"
    invoke-virtual {p0, v2}, Lcom/google/firebase/components/EventBus;->publish(Lcom/google/firebase/events/Event;)V

    .line 131
    .end local v2    # "event":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<*>;"
    goto :goto_0

    .line 133
    :cond_1
    return-void

    .line 127
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public publish(Lcom/google/firebase/events/Event;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/events/Event<",
            "*>;)V"
        }
    .end annotation

    .line 58
    .local p1, "event":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<*>;"
    invoke-static {p1}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->pendingEvents:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-direct {p0, p1}, Lcom/google/firebase/components/EventBus;->getHandlers(Lcom/google/firebase/events/Event;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    .local v1, "handlerData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;Ljava/util/concurrent/Executor;>;"
    move-object v2, p1

    .line 71
    .local v2, "casted":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lcom/google/firebase/components/EventBus$$Lambda$1;->lambdaFactory$(Ljava/util/Map$Entry;Lcom/google/firebase/events/Event;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    .end local v1    # "handlerData":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;Ljava/util/concurrent/Executor;>;"
    .end local v2    # "casted":Lcom/google/firebase/events/Event;, "Lcom/google/firebase/events/Event<Ljava/lang/Object;>;"
    goto :goto_0

    .line 73
    :cond_1
    return-void

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/events/EventHandler<",
            "-TT;>;)V"
        }
    .end annotation

    .line 97
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->defaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/components/EventBus;->subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V

    .line 98
    return-void
.end method

.method public declared-synchronized subscribe(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/events/EventHandler;)V
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/events/EventHandler<",
            "-TT;>;)V"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    monitor-enter p0

    .line 83
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p3}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local p0    # "this":Lcom/google/firebase/components/EventBus;
    :cond_0
    move-object v0, p3

    .line 92
    .local v0, "casted":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "casted":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;"
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unsubscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/events/EventHandler<",
            "-TT;>;)V"
        }
    .end annotation

    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p2}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 106
    monitor-exit p0

    return-void

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    .local v0, "handlers":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;Ljava/util/concurrent/Executor;>;"
    move-object v1, p2

    .line 113
    .local v1, "casted":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;"
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/google/firebase/components/EventBus;->handlerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local p0    # "this":Lcom/google/firebase/components/EventBus;
    :cond_1
    monitor-exit p0

    return-void

    .line 101
    .end local v0    # "handlers":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;Ljava/util/concurrent/Executor;>;"
    .end local v1    # "casted":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<Ljava/lang/Object;>;"
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "handler":Lcom/google/firebase/events/EventHandler;, "Lcom/google/firebase/events/EventHandler<-TT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
