.class public Lcom/fasterxml/jackson/databind/json/JsonMapper;
.super Lcom/fasterxml/jackson/databind/ObjectMapper;
.source "JsonMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .line 93
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    .line 94
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/json/JsonMapper;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/json/JsonMapper;

    .line 97
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 98
    return-void
.end method

.method public static builder()Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 2

    .line 114
    new-instance v0, Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;

    new-instance v1, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>()V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;-><init>(Lcom/fasterxml/jackson/databind/json/JsonMapper;)V

    return-object v0
.end method

.method public static builder(Lcom/fasterxml/jackson/core/JsonFactory;)Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 2
    .param p0, "streamFactory"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .line 118
    new-instance v0, Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;

    new-instance v1, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;-><init>(Lcom/fasterxml/jackson/databind/json/JsonMapper;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->copy()Lcom/fasterxml/jackson/databind/json/JsonMapper;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/json/JsonMapper;
    .locals 1

    .line 103
    const-class v0, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->_checkInvalidCopy(Ljava/lang/Class;)V

    .line 104
    new-instance v0, Lcom/fasterxml/jackson/databind/json/JsonMapper;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;-><init>(Lcom/fasterxml/jackson/databind/json/JsonMapper;)V

    return-object v0
.end method

.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/json/JsonMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/json/JsonReadFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    .line 153
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/json/JsonWriteFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    .line 157
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public rebuild()Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;
    .locals 2

    .line 124
    new-instance v0, Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/json/JsonMapper;->copy()Lcom/fasterxml/jackson/databind/json/JsonMapper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/json/JsonMapper$Builder;-><init>(Lcom/fasterxml/jackson/databind/json/JsonMapper;)V

    return-object v0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .line 135
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
