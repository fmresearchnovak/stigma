.class final Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;
.super Ljava/lang/Object;
.source "MapperBuilder.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->secureGetServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/ServiceLoader<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$classLoader:Ljava/lang/ClassLoader;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;->val$classLoader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;->run()Ljava/util/ServiceLoader;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/util/ServiceLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ServiceLoader<",
            "TT;>;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;->val$classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;->val$clazz:Ljava/lang/Class;

    .line 385
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;->val$clazz:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0
.end method
