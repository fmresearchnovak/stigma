.class Lcom/google/firebase/components/CycleDetector;
.super Ljava/lang/Object;
.source "CycleDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/CycleDetector$ComponentNode;,
        Lcom/google/firebase/components/CycleDetector$Dep;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static detect(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;)V"
        }
    .end annotation

    .line 100
    .local p0, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    invoke-static {p0}, Lcom/google/firebase/components/CycleDetector;->toGraph(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 101
    .local v0, "graph":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-static {v0}, Lcom/google/firebase/components/CycleDetector;->getRoots(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 103
    .local v1, "roots":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    const/4 v2, 0x0

    .line 104
    .local v2, "numVisited":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 105
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 106
    .local v3, "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v2, v2, 0x1

    .line 109
    invoke-virtual {v3}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->getDependencies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 110
    .local v5, "dependent":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v5, v3}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->removeDependent(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V

    .line 111
    invoke-virtual {v5}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->isRoot()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v5    # "dependent":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_0
    goto :goto_1

    .line 115
    .end local v3    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_1
    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 120
    return-void

    .line 124
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "componentsInCycle":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 126
    .local v5, "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v5}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->isRoot()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->isLeaf()Z

    move-result v6

    if-nez v6, :cond_4

    .line 127
    invoke-virtual {v5}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->getComponent()Lcom/google/firebase/components/Component;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v5    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_4
    goto :goto_2

    .line 131
    :cond_5
    new-instance v4, Lcom/google/firebase/components/DependencyCycleException;

    invoke-direct {v4, v3}, Lcom/google/firebase/components/DependencyCycleException;-><init>(Ljava/util/List;)V

    throw v4
.end method

.method private static getRoots(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;"
        }
    .end annotation

    .line 182
    .local p0, "components":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v0, "roots":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 184
    .local v2, "component":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v2}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v2    # "component":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    return-object v0
.end method

.method private static toGraph(Ljava/util/List;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Lcom/google/firebase/components/CycleDetector$ComponentNode;",
            ">;"
        }
    .end annotation

    .line 135
    .local p0, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/Component<*>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 136
    .local v0, "componentIndex":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/components/CycleDetector$Dep;Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/components/Component;

    .line 137
    .local v2, "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    new-instance v4, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    invoke-direct {v4, v2}, Lcom/google/firebase/components/CycleDetector$ComponentNode;-><init>(Lcom/google/firebase/components/Component;)V

    .line 138
    .local v4, "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->getProvidedInterfaces()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 139
    .local v6, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Lcom/google/firebase/components/CycleDetector$Dep;

    invoke-virtual {v2}, Lcom/google/firebase/components/Component;->isValue()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    invoke-direct {v7, v6, v8, v3}, Lcom/google/firebase/components/CycleDetector$Dep;-><init>(Ljava/lang/Class;ZLcom/google/firebase/components/CycleDetector$1;)V

    .line 140
    .local v7, "cmp":Lcom/google/firebase/components/CycleDetector$Dep;
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 141
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 144
    .local v8, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v7}, Lcom/google/firebase/components/CycleDetector$Dep;->access$100(Lcom/google/firebase/components/CycleDetector$Dep;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    .line 145
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v3, v5

    .line 146
    const-string v5, "Multiple components provide %s."

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_2
    :goto_2
    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v6    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "cmp":Lcom/google/firebase/components/CycleDetector$Dep;
    .end local v8    # "nodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    goto :goto_1

    .line 150
    .end local v2    # "component":Lcom/google/firebase/components/Component;, "Lcom/google/firebase/components/Component<*>;"
    .end local v4    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_3
    goto :goto_0

    .line 152
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 153
    .local v2, "componentNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 154
    .local v5, "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v5}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->getComponent()Lcom/google/firebase/components/Component;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/components/Component;->getDependencies()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/components/Dependency;

    .line 155
    .local v7, "dependency":Lcom/google/firebase/components/Dependency;
    invoke-virtual {v7}, Lcom/google/firebase/components/Dependency;->isDirectInjection()Z

    move-result v8

    if-nez v8, :cond_5

    .line 156
    goto :goto_5

    .line 159
    :cond_5
    new-instance v8, Lcom/google/firebase/components/CycleDetector$Dep;

    .line 160
    invoke-virtual {v7}, Lcom/google/firebase/components/Dependency;->getInterface()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7}, Lcom/google/firebase/components/Dependency;->isSet()Z

    move-result v10

    invoke-direct {v8, v9, v10, v3}, Lcom/google/firebase/components/CycleDetector$Dep;-><init>(Ljava/lang/Class;ZLcom/google/firebase/components/CycleDetector$1;)V

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 161
    .local v8, "depComponents":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    if-nez v8, :cond_6

    .line 162
    goto :goto_5

    .line 164
    :cond_6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/components/CycleDetector$ComponentNode;

    .line 165
    .local v10, "depComponent":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    invoke-virtual {v5, v10}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->addDependency(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V

    .line 166
    invoke-virtual {v10, v5}, Lcom/google/firebase/components/CycleDetector$ComponentNode;->addDependent(Lcom/google/firebase/components/CycleDetector$ComponentNode;)V

    .line 167
    .end local v10    # "depComponent":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    goto :goto_6

    .line 168
    .end local v7    # "dependency":Lcom/google/firebase/components/Dependency;
    .end local v8    # "depComponents":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    :cond_7
    goto :goto_5

    .line 169
    .end local v5    # "node":Lcom/google/firebase/components/CycleDetector$ComponentNode;
    :cond_8
    goto :goto_4

    .line 170
    .end local v2    # "componentNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    :cond_9
    goto :goto_3

    .line 172
    :cond_a
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 173
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 174
    .local v3, "componentNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 175
    .end local v3    # "componentNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/components/CycleDetector$ComponentNode;>;"
    goto :goto_7

    .line 177
    :cond_b
    return-object v1
.end method
