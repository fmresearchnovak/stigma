.class public final enum Lcom/fasterxml/jackson/databind/type/LogicalType;
.super Ljava/lang/Enum;
.source "LogicalType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/type/LogicalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Array:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Binary:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Collection:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Float:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Map:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum POJO:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Textual:Lcom/fasterxml/jackson/databind/type/LogicalType;

.field public static final enum Untyped:Lcom/fasterxml/jackson/databind/type/LogicalType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 20
    new-instance v0, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v1, "Array"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Array:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 26
    new-instance v1, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v3, "Collection"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/type/LogicalType;->Collection:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 32
    new-instance v3, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v5, "Map"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/databind/type/LogicalType;->Map:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 46
    new-instance v5, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v7, "POJO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/databind/type/LogicalType;->POJO:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 53
    new-instance v7, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v9, "Untyped"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/databind/type/LogicalType;->Untyped:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 61
    new-instance v9, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v11, "Integer"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 67
    new-instance v11, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v13, "Float"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/fasterxml/jackson/databind/type/LogicalType;->Float:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 72
    new-instance v13, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v15, "Boolean"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 77
    new-instance v15, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v14, "Enum"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 83
    new-instance v14, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v12, "Textual"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/fasterxml/jackson/databind/type/LogicalType;->Textual:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 88
    new-instance v12, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v10, "Binary"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/fasterxml/jackson/databind/type/LogicalType;->Binary:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 93
    new-instance v10, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v8, "DateTime"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/fasterxml/jackson/databind/type/LogicalType;->DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 99
    new-instance v8, Lcom/fasterxml/jackson/databind/type/LogicalType;

    const-string v6, "OtherScalar"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/fasterxml/jackson/databind/type/LogicalType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/fasterxml/jackson/databind/type/LogicalType;->OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 11
    const/16 v6, 0xd

    new-array v6, v6, [Lcom/fasterxml/jackson/databind/type/LogicalType;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/fasterxml/jackson/databind/type/LogicalType;->$VALUES:[Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/LogicalType;)Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1
    .param p1, "defaultIfNotRecognized"    # Lcom/fasterxml/jackson/databind/type/LogicalType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;"
        }
    .end annotation

    .line 116
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const-class v0, [B

    if-ne p0, v0, :cond_1

    .line 121
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Binary:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0

    .line 123
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Array:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0

    .line 125
    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Collection:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0

    .line 128
    :cond_3
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Map:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0

    .line 131
    :cond_4
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_5

    .line 132
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Textual:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0

    .line 134
    :cond_5
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/fasterxml/jackson/databind/type/LogicalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    .line 11
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->$VALUES:[Lcom/fasterxml/jackson/databind/type/LogicalType;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/type/LogicalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method
