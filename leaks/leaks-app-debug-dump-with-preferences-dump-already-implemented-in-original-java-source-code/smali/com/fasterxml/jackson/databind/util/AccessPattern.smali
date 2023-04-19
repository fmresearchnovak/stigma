.class public final enum Lcom/fasterxml/jackson/databind/util/AccessPattern;
.super Ljava/lang/Enum;
.source "AccessPattern.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/databind/util/AccessPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/util/AccessPattern;

.field public static final enum ALWAYS_NULL:Lcom/fasterxml/jackson/databind/util/AccessPattern;

.field public static final enum CONSTANT:Lcom/fasterxml/jackson/databind/util/AccessPattern;

.field public static final enum DYNAMIC:Lcom/fasterxml/jackson/databind/util/AccessPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;

    const-string v1, "ALWAYS_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/AccessPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->ALWAYS_NULL:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    .line 21
    new-instance v1, Lcom/fasterxml/jackson/databind/util/AccessPattern;

    const-string v3, "CONSTANT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/databind/util/AccessPattern;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/databind/util/AccessPattern;->CONSTANT:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    .line 29
    new-instance v3, Lcom/fasterxml/jackson/databind/util/AccessPattern;

    const-string v5, "DYNAMIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fasterxml/jackson/databind/util/AccessPattern;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/databind/util/AccessPattern;->DYNAMIC:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    .line 9
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fasterxml/jackson/databind/util/AccessPattern;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fasterxml/jackson/databind/util/AccessPattern;->$VALUES:[Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 1

    .line 9
    sget-object v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->$VALUES:[Lcom/fasterxml/jackson/databind/util/AccessPattern;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/util/AccessPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object v0
.end method
