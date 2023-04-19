.class final Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;
.super Lcom/google/firebase/platforminfo/LibraryVersion;
.source "AutoValue_LibraryVersion.java"


# instance fields
.field private final libraryName:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "libraryName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/platforminfo/LibraryVersion;-><init>()V

    .line 17
    if-eqz p1, :cond_1

    .line 20
    iput-object p1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    .line 21
    if-eqz p2, :cond_0

    .line 24
    iput-object p2, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 25
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null libraryName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 50
    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/platforminfo/LibraryVersion;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 54
    .local v1, "that":Lcom/google/firebase/platforminfo/LibraryVersion;
    iget-object v3, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/firebase/platforminfo/LibraryVersion;->getLibraryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 55
    invoke-virtual {v1}, Lcom/google/firebase/platforminfo/LibraryVersion;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    .line 57
    .end local v1    # "that":Lcom/google/firebase/platforminfo/LibraryVersion;
    :cond_2
    return v2
.end method

.method public getLibraryName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 64
    iget-object v2, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 65
    mul-int v0, v0, v1

    .line 66
    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 67
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibraryVersion{libraryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
