.class public Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;
.source "JsonLocationInstantiator.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    const-class v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Base;-><init>(Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method private static final _int(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 66
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method private static final _long(Ljava/lang/Object;)J
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 62
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "index"    # I

    .line 47
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    sget-object v8, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v6, p2

    invoke-static/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->construct(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILcom/fasterxml/jackson/annotation/JacksonInject$Value;Lcom/fasterxml/jackson/databind/PropertyMetadata;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canCreateFromObjectWith()Z
    .locals 1

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v0

    .line 57
    .local v0, "srcRef":Lcom/fasterxml/jackson/core/io/ContentReference;
    new-instance v9, Lcom/fasterxml/jackson/core/JsonLocation;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_long(Ljava/lang/Object;)J

    move-result-wide v3

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_long(Ljava/lang/Object;)J

    move-result-wide v5

    const/4 v1, 0x3

    aget-object v1, p2, v1

    .line 58
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_int(Ljava/lang/Object;)I

    move-result v7

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->_int(Ljava/lang/Object;)I

    move-result v8

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    .line 57
    return-object v9
.end method

.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 33
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 34
    .local v0, "intType":Lcom/fasterxml/jackson/databind/JavaType;
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 35
    .local v1, "longType":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v2, 0x5

    new-array v2, v2, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const-class v3, Ljava/lang/Object;

    .line 38
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    const-string v4, "sourceRef"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v5

    .line 39
    const-string v3, "byteOffset"

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v4

    .line 40
    const-string v3, "charOffset"

    const/4 v4, 0x2

    invoke-static {v3, v1, v4}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v4

    .line 41
    const-string v3, "lineNr"

    const/4 v4, 0x3

    invoke-static {v3, v0, v4}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v4

    .line 42
    const-string v3, "columnNr"

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;->creatorProp(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;I)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    move-result-object v3

    aput-object v3, v2, v4

    .line 35
    return-object v2
.end method
