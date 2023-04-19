.class public final Lcom/google/firebase/components/ComponentDiscovery;
.super Ljava/lang/Object;
.source "ComponentDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;,
        Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPONENT_KEY_PREFIX:Ljava/lang/String; = "com.google.firebase.components:"

.field private static final COMPONENT_SENTINEL_VALUE:Ljava/lang/String; = "com.google.firebase.components.ComponentRegistrar"

.field private static final TAG:Ljava/lang/String; = "ComponentDiscovery"


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/firebase/components/ComponentDiscovery;, "Lcom/google/firebase/components/ComponentDiscovery<TT;>;"
    .local p1, "context":Ljava/lang/Object;, "TT;"
    .local p2, "retriever":Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;, "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    .line 69
    return-void
.end method

.method public static forContext(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/ComponentDiscovery;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/google/firebase/components/ComponentDiscovery<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 62
    .local p1, "discoveryService":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    new-instance v0, Lcom/google/firebase/components/ComponentDiscovery;

    new-instance v1, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;-><init>(Ljava/lang/Class;Lcom/google/firebase/components/ComponentDiscovery$1;)V

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/components/ComponentDiscovery;-><init>(Ljava/lang/Object;Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;)V

    return-object v0
.end method

.method private static instantiate(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;"
        }
    .end annotation

    .line 77
    .local p0, "registrarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "Could not instantiate %s"

    const-string v1, "Could not instantiate %s."

    const-string v2, "ComponentDiscovery"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v3, "registrars":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/components/ComponentRegistrar;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 81
    .local v8, "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 82
    const-string v9, "Class %s is not an instance of %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v7

    const-string v11, "com.google.firebase.components.ComponentRegistrar"

    aput-object v11, v10, v6

    .line 84
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 82
    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    goto :goto_0

    .line 87
    :cond_0
    new-array v9, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/components/ComponentRegistrar;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    nop

    .end local v8    # "loadedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 96
    :catch_0
    move-exception v8

    .line 97
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 94
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v8

    .line 95
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 92
    :catch_2
    move-exception v8

    .line 93
    .local v8, "e":Ljava/lang/InstantiationException;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "e":Ljava/lang/InstantiationException;
    goto :goto_1

    .line 90
    :catch_3
    move-exception v8

    .line 91
    .local v8, "e":Ljava/lang/IllegalAccessException;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 88
    :catch_4
    move-exception v8

    .line 89
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v7

    const-string v7, "Class %s is not an found."

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    nop

    .line 99
    .end local v5    # "name":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 101
    :cond_1
    return-object v3
.end method


# virtual methods
.method public discover()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ">;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/firebase/components/ComponentDiscovery;, "Lcom/google/firebase/components/ComponentDiscovery<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/components/ComponentDiscovery;->retriever:Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;

    iget-object v1, p0, Lcom/google/firebase/components/ComponentDiscovery;->context:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;->retrieve(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/components/ComponentDiscovery;->instantiate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
