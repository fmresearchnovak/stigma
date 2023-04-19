.class public final enum Lcom/fasterxml/jackson/core/StreamWriteCapability;
.super Ljava/lang/Enum;
.source "StreamWriteCapability.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/util/JacksonFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/StreamWriteCapability;",
        ">;",
        "Lcom/fasterxml/jackson/core/util/JacksonFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

.field public static final enum CAN_WRITE_BINARY_NATIVELY:Lcom/fasterxml/jackson/core/StreamWriteCapability;

.field public static final enum CAN_WRITE_FORMATTED_NUMBERS:Lcom/fasterxml/jackson/core/StreamWriteCapability;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    const-string v1, "CAN_WRITE_BINARY_NATIVELY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/core/StreamWriteCapability;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->CAN_WRITE_BINARY_NATIVELY:Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 34
    new-instance v1, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    const-string v3, "CAN_WRITE_FORMATTED_NUMBERS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/fasterxml/jackson/core/StreamWriteCapability;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/fasterxml/jackson/core/StreamWriteCapability;->CAN_WRITE_FORMATTED_NUMBERS:Lcom/fasterxml/jackson/core/StreamWriteCapability;

    .line 14
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/fasterxml/jackson/core/StreamWriteCapability;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/fasterxml/jackson/core/StreamWriteCapability;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "defaultState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_defaultState:Z

    .line 46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/StreamWriteCapability;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_mask:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/StreamWriteCapability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/StreamWriteCapability;
    .locals 1

    .line 14
    sget-object v0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->$VALUES:[Lcom/fasterxml/jackson/core/StreamWriteCapability;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/StreamWriteCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/StreamWriteCapability;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 52
    iget v0, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMask()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/fasterxml/jackson/core/StreamWriteCapability;->_mask:I

    return v0
.end method
