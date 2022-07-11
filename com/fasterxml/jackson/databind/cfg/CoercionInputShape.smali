.class public final enum Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;
.super Ljava/lang/Enum;
.source "CoercionInputShape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum Array:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum Binary:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum Boolean:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum EmptyArray:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum EmptyObject:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum Float:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum Integer:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum Object:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

.field public static final enum String:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 28
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v1, "Array"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Array:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 35
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v3, "Object"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Object:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 41
    new-instance v3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v5, "Integer"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Integer:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 47
    new-instance v5, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v7, "Float"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Float:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 54
    new-instance v7, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v9, "Boolean"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Boolean:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 60
    new-instance v9, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v11, "String"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->String:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 68
    new-instance v11, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v13, "Binary"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->Binary:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 78
    new-instance v13, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v15, "EmptyArray"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyArray:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 86
    new-instance v15, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v14, "EmptyObject"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyObject:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 93
    new-instance v14, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    const-string v12, "EmptyString"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    .line 19
    const/16 v12, 0xa

    new-array v12, v12, [Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->$VALUES:[Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;
    .locals 1

    .line 19
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->$VALUES:[Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    return-object v0
.end method
