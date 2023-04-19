.class public final Lcom/fasterxml/jackson/databind/type/ClassStack;
.super Ljava/lang/Object;
.source "ClassStack.java"


# instance fields
.field protected final _current:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _parent:Lcom/fasterxml/jackson/databind/type/ClassStack;

.field private _selfRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;)V
    .locals 0
    .param p1, "parent"    # Lcom/fasterxml/jackson/databind/type/ClassStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 24
    .local p2, "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_parent:Lcom/fasterxml/jackson/databind/type/ClassStack;

    .line 26
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_current:Ljava/lang/Class;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 21
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/type/ClassStack;-><init>(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addSelfReference(Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;)V
    .locals 1
    .param p1, "ref"    # Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .line 42
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_selfRefs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_selfRefs:Ljava/util/ArrayList;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_selfRefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public child(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/ClassStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;"
        }
    .end annotation

    .line 33
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassStack;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/type/ClassStack;-><init>(Lcom/fasterxml/jackson/databind/type/ClassStack;Ljava/lang/Class;)V

    return-object v0
.end method

.method public find(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/ClassStack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/type/ClassStack;"
        }
    .end annotation

    .line 64
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_current:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_parent:Lcom/fasterxml/jackson/databind/type/ClassStack;

    .local v0, "curr":Lcom/fasterxml/jackson/databind/type/ClassStack;
    :goto_0
    if-eqz v0, :cond_2

    .line 66
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_current:Ljava/lang/Class;

    if-ne v1, p1, :cond_1

    .line 67
    return-object v0

    .line 65
    :cond_1
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_parent:Lcom/fasterxml/jackson/databind/type/ClassStack;

    goto :goto_0

    .line 70
    .end local v0    # "curr":Lcom/fasterxml/jackson/databind/type/ClassStack;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolveSelfReferences(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2
    .param p1, "resolved"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_selfRefs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .line 57
    .local v1, "ref":Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->setReference(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 58
    .end local v1    # "ref":Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ClassStack (self-refs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ClassStack;->_selfRefs:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const-string v2, "0"

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    move-object v1, p0

    .local v1, "curr":Lcom/fasterxml/jackson/databind/type/ClassStack;
    :goto_1
    if-eqz v1, :cond_1

    .line 81
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/fasterxml/jackson/databind/type/ClassStack;->_current:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/type/ClassStack;->_parent:Lcom/fasterxml/jackson/databind/type/ClassStack;

    goto :goto_1

    .line 83
    .end local v1    # "curr":Lcom/fasterxml/jackson/databind/type/ClassStack;
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
