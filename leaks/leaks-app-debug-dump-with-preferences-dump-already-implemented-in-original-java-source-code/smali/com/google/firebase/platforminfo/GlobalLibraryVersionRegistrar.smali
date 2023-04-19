.class public Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;
.super Ljava/lang/Object;
.source "GlobalLibraryVersionRegistrar.java"


# static fields
.field private static volatile INSTANCE:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;


# instance fields
.field private final infos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/platforminfo/LibraryVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->infos:Ljava/util/Set;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;
    .locals 3

    .line 54
    sget-object v0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->INSTANCE:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    .line 55
    .local v0, "localRef":Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;
    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v2, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->INSTANCE:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    move-object v0, v2

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v2, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    invoke-direct {v2}, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;-><init>()V

    move-object v0, v2

    sput-object v2, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->INSTANCE:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;

    .line 61
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 63
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method getRegisteredVersions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/firebase/platforminfo/LibraryVersion;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->infos:Ljava/util/Set;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->infos:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sdkName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->infos:Ljava/util/Set;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->infos:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/google/firebase/platforminfo/LibraryVersion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/platforminfo/LibraryVersion;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
