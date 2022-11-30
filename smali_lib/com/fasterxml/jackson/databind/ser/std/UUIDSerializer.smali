.class public Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "UUIDSerializer.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer<",
        "Ljava/util/UUID;",
        ">;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


# static fields
.field static final HEX_CHARS:[C


# instance fields
.field protected final _asBinary:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;-><init>(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "asBinary"    # Ljava/lang/Boolean;

    .line 46
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    .line 47
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_asBinary:Ljava/lang/Boolean;

    .line 48
    return-void
.end method

.method private static final _appendInt(I[BI)V
    .locals 1
    .param p0, "value"    # I
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 166
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 167
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 168
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 169
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 170
    return-void
.end method

.method private static _appendInt(I[CI)V
    .locals 1
    .param p0, "bits"    # I
    .param p1, "ch"    # [C
    .param p2, "offset"    # I

    .line 140
    shr-int/lit8 v0, p0, 0x10

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 141
    add-int/lit8 v0, p2, 0x4

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 142
    return-void
.end method

.method private static _appendShort(I[CI)V
    .locals 2
    .param p0, "bits"    # I
    .param p1, "ch"    # [C
    .param p2, "offset"    # I

    .line 146
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    aput-char v1, p1, p2

    .line 147
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    aput-char v1, p1, p2

    .line 148
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    aput-char v1, p1, p2

    .line 149
    add-int/lit8 p2, p2, 0x1

    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 150
    return-void
.end method

.method private static final _asBytes(Ljava/util/UUID;)[B
    .locals 8
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 154
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 155
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    .line 156
    .local v1, "hi":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    .line 157
    .local v3, "lo":J
    const/16 v5, 0x20

    shr-long v6, v1, v5

    long-to-int v7, v6

    const/4 v6, 0x0

    invoke-static {v7, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 158
    long-to-int v6, v1

    const/4 v7, 0x4

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 159
    shr-long v5, v3, v5

    long-to-int v6, v5

    const/16 v5, 0x8

    invoke-static {v6, v0, v5}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 160
    long-to-int v5, v3

    const/16 v6, 0xc

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 161
    return-object v0
.end method


# virtual methods
.method protected _writeAsBinary(Lcom/fasterxml/jackson/core/JsonGenerator;)Z
    .locals 1
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 119
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_asBinary:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 126
    :cond_0
    instance-of v0, p1, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteBinaryNatively()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->UUID:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->visitStringFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V

    .line 136
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 4
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    .line 65
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 67
    .local v0, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    const/4 v1, 0x0

    .line 69
    .local v1, "asBinary":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    .line 71
    .local v2, "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->BINARY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v2, v3, :cond_0

    .line 72
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_0
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v2, v3, :cond_1

    .line 74
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 78
    .end local v2    # "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_asBinary:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 79
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;-><init>(Ljava/lang/Boolean;)V

    return-object v2

    .line 81
    :cond_2
    return-object p0
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/UUID;)Z

    move-result p1

    return p1
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/util/UUID;)Z
    .locals 5
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "value"    # Ljava/util/UUID;

    .line 54
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 55
    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    check-cast p1, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 12
    .param p1, "value"    # Ljava/util/UUID;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_writeAsBinary(Lcom/fasterxml/jackson/core/JsonGenerator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_asBytes(Ljava/util/UUID;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    .line 91
    return-void

    .line 97
    :cond_0
    const/16 v0, 0x24

    new-array v1, v0, [C

    .line 98
    .local v1, "ch":[C
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    .line 99
    .local v2, "msb":J
    const/16 v4, 0x20

    shr-long v5, v2, v4

    long-to-int v6, v5

    const/4 v5, 0x0

    invoke-static {v6, v1, v5}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    .line 100
    const/16 v6, 0x8

    const/16 v7, 0x2d

    aput-char v7, v1, v6

    .line 101
    long-to-int v6, v2

    .line 102
    .local v6, "i":I
    ushr-int/lit8 v8, v6, 0x10

    const/16 v9, 0x9

    invoke-static {v8, v1, v9}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 103
    const/16 v8, 0xd

    aput-char v7, v1, v8

    .line 104
    const/16 v8, 0xe

    invoke-static {v6, v1, v8}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 105
    const/16 v8, 0x12

    aput-char v7, v1, v8

    .line 107
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    .line 108
    .local v8, "lsb":J
    const/16 v10, 0x30

    ushr-long v10, v8, v10

    long-to-int v11, v10

    const/16 v10, 0x13

    invoke-static {v11, v1, v10}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 109
    const/16 v10, 0x17

    aput-char v7, v1, v10

    .line 110
    ushr-long v10, v8, v4

    long-to-int v4, v10

    const/16 v7, 0x18

    invoke-static {v4, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 111
    long-to-int v4, v8

    const/16 v7, 0x1c

    invoke-static {v4, v1, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    .line 113
    invoke-virtual {p2, v1, v5, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    .line 114
    return-void
.end method
