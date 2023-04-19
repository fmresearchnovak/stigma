.class public Lcom/fasterxml/jackson/databind/type/TypeBindings;
.super Ljava/lang/Object;
.source "TypeBindings.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;,
        Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field private static final NO_STRINGS:[Ljava/lang/String;

.field private static final NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _hashCode:I

.field private final _names:[Ljava/lang/String;

.field private final _types:[Lcom/fasterxml/jackson/databind/JavaType;

.field private final _unboundVariables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    .line 19
    new-array v0, v0, [Lcom/fasterxml/jackson/databind/JavaType;

    sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 21
    new-instance v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    sput-object v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "types"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "uvars"    # [Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    .line 55
    if-nez p2, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 56
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_3

    .line 59
    const/4 v0, 0x1

    .line 60
    .local v0, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v1, v1

    .local v1, "len":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 61
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 63
    .end local v1    # "len":I
    .end local v2    # "i":I
    :cond_2
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    .line 64
    iput v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_hashCode:I

    .line 65
    return-void

    .line 57
    .end local v0    # "h":I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatching names ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), types ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 7
    .param p1, "typeArg1"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .line 123
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;->paramsFor1(Ljava/lang/Class;)[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 124
    .local v0, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 125
    .local v2, "varLen":I
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 129
    new-instance v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    new-array v5, v3, [Ljava/lang/String;

    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v3, v3, [Lcom/fasterxml/jackson/databind/JavaType;

    aput-object p1, v3, v1

    const/4 v1, 0x0

    invoke-direct {v4, v5, v3, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v4

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create TypeBindings for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 1 type parameter: class expects "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 8
    .param p1, "typeArg1"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeArg2"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .line 136
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings$TypeParamStash;->paramsFor2(Ljava/lang/Class;)[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 137
    .local v0, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 138
    .local v2, "varLen":I
    :goto_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 142
    new-instance v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    new-array v5, v3, [Ljava/lang/String;

    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x1

    aget-object v7, v0, v6

    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    new-array v3, v3, [Lcom/fasterxml/jackson/databind/JavaType;

    aput-object p1, v3, v1

    aput-object p2, v3, v6

    const/4 v1, 0x0

    invoke-direct {v4, v5, v3, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v4

    .line 139
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create TypeBindings for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 2 type parameters: class expects "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static create(Ljava/lang/Class;Ljava/util/List;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .line 85
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "typeList":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_1

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 86
    :goto_1
    nop

    .line 87
    .local v0, "types":[Lcom/fasterxml/jackson/databind/JavaType;
    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    return-object v1
.end method

.method public static create(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 6
    .param p1, "types"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .line 92
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 93
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    goto :goto_0

    .line 94
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    aget-object v1, p1, v2

    aget-object v0, p1, v0

    invoke-static {p0, v1, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    return-object v0

    .line 96
    :pswitch_1
    aget-object v0, p1, v2

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    return-object v0

    .line 100
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 102
    .local v1, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_2

    .line 105
    :cond_1
    array-length v2, v1

    .line 106
    .local v2, "len":I
    new-array v3, v2, [Ljava/lang/String;

    .line 107
    .local v3, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 108
    aget-object v5, v1, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 103
    .end local v2    # "len":I
    .end local v3    # "names":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    :goto_2
    sget-object v3, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    .line 112
    .restart local v3    # "names":[Ljava/lang/String;
    :cond_3
    array-length v2, v3

    array-length v4, p1

    if-eq v2, v4, :cond_5

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create TypeBindings for class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type parameter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    if-ne v5, v0, :cond_4

    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, "s"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": class expects "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v2, 0x0

    invoke-direct {v0, v3, p1, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Ljava/util/List;Ljava/util/List;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .line 151
    .local p0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_STRINGS:[Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v0

    .line 152
    :cond_1
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-object v0
.end method

.method public static createIfNeeded(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 7
    .param p1, "typeArg1"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .line 164
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 165
    .local v0, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 166
    .local v2, "varLen":I
    :goto_0
    if-nez v2, :cond_1

    .line 167
    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-object v1

    .line 169
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 173
    new-instance v4, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    new-array v5, v3, [Ljava/lang/String;

    aget-object v6, v0, v1

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    new-array v3, v3, [Lcom/fasterxml/jackson/databind/JavaType;

    aput-object p1, v3, v1

    const/4 v1, 0x0

    invoke-direct {v4, v5, v3, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v4

    .line 170
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create TypeBindings for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 1 type parameter: class expects "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createIfNeeded(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 7
    .param p1, "types"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;"
        }
    .end annotation

    .line 184
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 185
    .local v0, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 188
    :cond_0
    if-nez p1, :cond_1

    .line 189
    sget-object p1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 191
    :cond_1
    array-length v1, v0

    .line 192
    .local v1, "len":I
    new-array v2, v1, [Ljava/lang/String;

    .line 193
    .local v2, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 194
    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "i":I
    :cond_2
    array-length v3, v2

    array-length v4, p1

    if-eq v3, v4, :cond_4

    .line 198
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create TypeBindings for class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type parameter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const-string v5, ""

    goto :goto_1

    :cond_3
    const-string v5, "s"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": class expects "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_4
    new-instance v3, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p1, v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v3

    .line 186
    .end local v1    # "len":I
    .end local v2    # "names":[Ljava/lang/String;
    :cond_5
    :goto_2
    sget-object v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-object v1
.end method

.method public static emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 1

    .line 68
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-object v0
.end method


# virtual methods
.method public asKey(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 317
    .local p1, "rawBase":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    iget v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_hashCode:I

    invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings$AsKey;-><init>(Ljava/lang/Class;[Lcom/fasterxml/jackson/databind/JavaType;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 349
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 350
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->hasClass(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 351
    return v2

    .line 353
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 354
    .local v1, "other":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v3, v3

    .line 355
    .local v3, "len":I
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 356
    return v2

    .line 358
    :cond_2
    iget-object v4, v1, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    .line 359
    .local v4, "otherTypes":[Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 360
    aget-object v6, v4, v5

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 361
    return v2

    .line 359
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 364
    .end local v5    # "i":I
    :cond_4
    return v0
.end method

.method public findBoundType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 231
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v2, v2, v0

    .line 233
    .local v2, "t":Lcom/fasterxml/jackson/databind/JavaType;
    instance-of v3, v2, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    if-eqz v3, :cond_0

    .line 234
    move-object v3, v2

    check-cast v3, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .line 235
    .local v3, "rrt":Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->getSelfReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 236
    .local v4, "t2":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v4, :cond_0

    .line 237
    move-object v2, v4

    .line 250
    .end local v3    # "rrt":Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
    .end local v4    # "t2":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    return-object v2

    .line 230
    .end local v2    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 269
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 270
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "index"    # I

    .line 277
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 278
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v1, v0

    if-nez v1, :cond_0

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasUnbound(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 299
    array-length v0, v0

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 300
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const/4 v1, 0x1

    return v1

    .line 305
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    return-object p0

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->EMPTY:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 329
    const-string v0, "<>"

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    array-length v2, v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 334
    if-lez v1, :cond_1

    .line 335
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "sig":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .end local v3    # "sig":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected typeParameterArray()[Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public withUnboundVariable(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_unboundVariables:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    .line 213
    .local v1, "len":I
    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 214
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    nop

    .line 215
    .local v0, "names":[Ljava/lang/String;
    aput-object p1, v0, v1

    .line 216
    new-instance v2, Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_names:[Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_types:[Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {v2, v3, v4, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>([Ljava/lang/String;[Lcom/fasterxml/jackson/databind/JavaType;[Ljava/lang/String;)V

    return-object v2
.end method
