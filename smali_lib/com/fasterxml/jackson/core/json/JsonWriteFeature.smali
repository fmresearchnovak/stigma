.class public final enum Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
.super Ljava/lang/Enum;
.source "JsonWriteFeature.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/FormatFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fasterxml/jackson/core/json/JsonWriteFeature;",
        ">;",
        "Lcom/fasterxml/jackson/core/FormatFeature;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

.field public static final enum ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

.field public static final enum QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

.field public static final enum WRITE_NAN_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

.field public static final enum WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;


# instance fields
.field private final _defaultState:Z

.field private final _mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 26
    new-instance v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v2, "QUOTE_FIELD_NAMES"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->QUOTE_FIELD_NAMES:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 41
    new-instance v1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v5, "WRITE_NAN_AS_STRINGS"

    invoke-direct {v1, v5, v4, v4, v2}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->WRITE_NAN_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 60
    new-instance v2, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    sget-object v5, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v6, "WRITE_NUMBERS_AS_STRINGS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v5}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v2, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->WRITE_NUMBERS_AS_STRINGS:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 72
    new-instance v5, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    sget-object v6, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    const-string v8, "ESCAPE_NON_ASCII"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v3, v6}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;-><init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V

    sput-object v5, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->ESCAPE_NON_ASCII:Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 10
    const/4 v6, 0x4

    new-array v6, v6, [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    aput-object v0, v6, v3

    aput-object v1, v6, v4

    aput-object v2, v6, v7

    aput-object v5, v6, v9

    sput-object v6, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->$VALUES:[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLcom/fasterxml/jackson/core/JsonGenerator$Feature;)V
    .locals 0
    .param p3, "defaultState"    # Z
    .param p4, "mapTo"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_defaultState:Z

    .line 128
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mask:I

    .line 129
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 130
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "flags":I
    invoke-static {}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->values()[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 118
    .local v4, "f":Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->enabledByDefault()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->getMask()I

    move-result v5

    or-int/2addr v0, v5

    .line 117
    .end local v4    # "f":Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;
    .locals 1

    .line 10
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->$VALUES:[Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    return-object v0
.end method


# virtual methods
.method public enabledByDefault()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_defaultState:Z

    return v0
.end method

.method public enabledIn(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 137
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mask:I

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

    .line 135
    iget v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mask:I

    return v0
.end method

.method public mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->_mappedFeature:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    return-object v0
.end method
