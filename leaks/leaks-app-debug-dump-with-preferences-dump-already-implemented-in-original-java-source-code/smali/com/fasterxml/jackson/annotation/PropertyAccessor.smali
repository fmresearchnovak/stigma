.class public final enum Lcom/fasterxml/jackson/annotation/PropertyAccessor;
.super Ljava/lang/Enum;
.source "PropertyAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/annotation/PropertyAccessor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/annotation/PropertyAccessor;

.field public static final enum ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

.field public static final enum CREATOR:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

.field public static final enum FIELD:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

.field public static final enum GETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

.field public static final enum IS_GETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

.field public static final enum NONE:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

.field public static final enum SETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 26
    new-instance v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    const-string v1, "GETTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/annotation/PropertyAccessor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->GETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    .line 31
    new-instance v1, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    const-string v3, "SETTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/annotation/PropertyAccessor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->SETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    .line 37
    new-instance v3, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    const-string v5, "CREATOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fasterxml/jackson/annotation/PropertyAccessor;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->CREATOR:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    .line 45
    new-instance v5, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    const-string v7, "FIELD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/fasterxml/jackson/annotation/PropertyAccessor;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->FIELD:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    .line 53
    new-instance v7, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    const-string v9, "IS_GETTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/fasterxml/jackson/annotation/PropertyAccessor;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->IS_GETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    .line 58
    new-instance v9, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    const-string v11, "NONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/fasterxml/jackson/annotation/PropertyAccessor;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->NONE:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    .line 63
    new-instance v11, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    const-string v13, "ALL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/fasterxml/jackson/annotation/PropertyAccessor;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    .line 13
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->$VALUES:[Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .locals 1

    .line 13
    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->$VALUES:[Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/annotation/PropertyAccessor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    return-object v0
.end method


# virtual methods
.method public creatorEnabled()Z
    .locals 1

    .line 69
    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->CREATOR:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public fieldEnabled()Z
    .locals 1

    .line 85
    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->FIELD:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getterEnabled()Z
    .locals 1

    .line 73
    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->GETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isGetterEnabled()Z
    .locals 1

    .line 77
    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->IS_GETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setterEnabled()Z
    .locals 1

    .line 81
    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->SETTER:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/PropertyAccessor;->ALL:Lcom/fasterxml/jackson/annotation/PropertyAccessor;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
