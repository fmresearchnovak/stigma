.class Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;
.super Ljava/lang/Object;
.source "ComponentDiscovery.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/ComponentDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataRegistrarNameRetriever"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final discoveryService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "discoveryService":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->discoveryService:Ljava/lang/Class;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/firebase/components/ComponentDiscovery$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Lcom/google/firebase/components/ComponentDiscovery$1;

    .line 104
    invoke-direct {p0, p1}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private getMetadata(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    const-string v0, "ComponentDiscovery"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 134
    .local v2, "manager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 135
    const-string v3, "Context has no PackageManager."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-object v1

    .line 138
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->discoveryService:Ljava/lang/Class;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x80

    .line 139
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 141
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_1

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->discoveryService:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no service info."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v1

    .line 145
    :cond_1
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 146
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "info":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Application info not found."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v1
.end method


# virtual methods
.method public retrieve(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->getMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "metadata":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 117
    const-string v1, "ComponentDiscovery"

    const-string v2, "Could not retrieve metadata, returning empty list of registrars."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v1, "registrarNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 124
    .local v4, "rawValue":Ljava/lang/Object;
    const-string v5, "com.google.firebase.components.ComponentRegistrar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.google.firebase.components:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "rawValue":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 128
    :cond_2
    return-object v1
.end method

.method public bridge synthetic retrieve(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 104
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->retrieve(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
