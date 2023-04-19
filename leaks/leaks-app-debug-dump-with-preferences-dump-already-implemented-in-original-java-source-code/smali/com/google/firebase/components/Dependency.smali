.class public final Lcom/google/firebase/components/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# instance fields
.field private final anInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final injection:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "injection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 43
    .local p1, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "Null dependency anInterface."

    invoke-static {p1, v0}, Lcom/google/firebase/components/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 45
    iput p2, p0, Lcom/google/firebase/components/Dependency;->type:I

    .line 46
    iput p3, p0, Lcom/google/firebase/components/Dependency;->injection:I

    .line 47
    return-void
.end method

.method public static optional(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 50
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static optionalProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 62
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 54
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static requiredProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 66
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static setOf(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 58
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static setOfProvider(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/Dependency;"
        }
    .end annotation

    .line 70
    .local p0, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/Dependency;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 91
    instance-of v0, p1, Lcom/google/firebase/components/Dependency;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/components/Dependency;

    .line 93
    .local v0, "other":Lcom/google/firebase/components/Dependency;
    iget-object v2, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/firebase/components/Dependency;->type:I

    iget v3, v0, Lcom/google/firebase/components/Dependency;->type:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/firebase/components/Dependency;->injection:I

    iget v3, v0, Lcom/google/firebase/components/Dependency;->injection:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 95
    .end local v0    # "other":Lcom/google/firebase/components/Dependency;
    :cond_1
    return v1
.end method

.method public getInterface()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 100
    const v0, 0xf4243

    .line 101
    .local v0, "h":I
    iget-object v1, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 102
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 103
    iget v2, p0, Lcom/google/firebase/components/Dependency;->type:I

    xor-int/2addr v0, v2

    .line 104
    mul-int v0, v0, v1

    .line 105
    iget v1, p0, Lcom/google/firebase/components/Dependency;->injection:I

    xor-int/2addr v0, v1

    .line 106
    return v0
.end method

.method public isDirectInjection()Z
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/firebase/components/Dependency;->injection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequired()Z
    .locals 2

    .line 78
    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSet()Z
    .locals 2

    .line 82
    iget v0, p0, Lcom/google/firebase/components/Dependency;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependency{anInterface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/components/Dependency;->anInterface:Ljava/lang/Class;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    iget v1, p0, Lcom/google/firebase/components/Dependency;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "required"

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "optional"

    goto :goto_0

    :cond_1
    const-string v1, "set"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string v1, ", direct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/components/Dependency;->injection:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 117
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
