.class public final enum Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;
.super Ljava/lang/Enum;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/filter/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Inclusion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

.field public static final enum INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

.field public static final enum INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

.field public static final enum ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 28
    new-instance v0, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    const-string v1, "ONLY_INCLUDE_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->ONLY_INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 33
    new-instance v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    const-string v3, "INCLUDE_ALL_AND_PATH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_ALL_AND_PATH:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 40
    new-instance v3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    const-string v5, "INCLUDE_NON_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->INCLUDE_NON_NULL:Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    .line 24
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->$VALUES:[Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;
    .locals 1

    .line 24
    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->$VALUES:[Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;

    return-object v0
.end method
