.class public Lcom/fasterxml/jackson/databind/util/TypeKey;
.super Ljava/lang/Object;
.source "TypeKey.java"


# instance fields
.field protected _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _hashCode:I

.field protected _isTyped:Z

.field protected _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
    .locals 1
    .param p1, "key"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typed"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    .line 44
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    .line 45
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/TypeKey;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/util/TypeKey;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget v0, p1, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    .line 29
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    .line 30
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 31
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "typed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 34
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 37
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    .line 38
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Ljava/lang/Class;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    .line 39
    return-void
.end method

.method public static final typedHash(Lcom/fasterxml/jackson/databind/JavaType;)I
    .locals 1
    .param p0, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 61
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public static final typedHash(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 53
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final untypedHash(Lcom/fasterxml/jackson/databind/JavaType;)I
    .locals 1
    .param p0, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 57
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static final untypedHash(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 49
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 117
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 118
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 119
    return v0

    .line 121
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/databind/util/TypeKey;

    .line 122
    .local v2, "other":Lcom/fasterxml/jackson/databind/util/TypeKey;
    iget-boolean v3, v2, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    if-ne v3, v4, :cond_5

    .line 123
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 124
    iget-object v4, v2, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    if-ne v4, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v1, v2, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 128
    :cond_5
    return v0
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    return v0
.end method

.method public isTyped()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    return v0
.end method

.method public final resetTyped(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 79
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    .line 82
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    .line 83
    return-void
.end method

.method public final resetTyped(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 65
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 66
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    .line 68
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->typedHash(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    .line 69
    return-void
.end method

.method public final resetUntyped(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 86
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    .line 89
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Lcom/fasterxml/jackson/databind/JavaType;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    .line 90
    return-void
.end method

.method public final resetUntyped(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 72
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 73
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    .line 75
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/TypeKey;->untypedHash(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_hashCode:I

    .line 76
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    const-string v1, "}"

    const-string v2, ", typed? "

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_class:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/util/TypeKey;->_isTyped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
