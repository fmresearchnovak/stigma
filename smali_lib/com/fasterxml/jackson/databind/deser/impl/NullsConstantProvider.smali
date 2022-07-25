.class public Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;
.super Ljava/lang/Object;
.source "NullsConstantProvider.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
.implements Ljava/io/Serializable;


# static fields
.field private static final NULLER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

.field private static final SKIPPER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _access:Lcom/fasterxml/jackson/databind/util/AccessPattern;

.field protected final _nullValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->SKIPPER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    .line 19
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->NULLER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "nvl"    # Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->_nullValue:Ljava/lang/Object;

    .line 27
    if-nez p1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->ALWAYS_NULL:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/util/AccessPattern;->CONSTANT:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->_access:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    .line 29
    return-void
.end method

.method public static forValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;
    .locals 1
    .param p0, "nvl"    # Ljava/lang/Object;

    .line 46
    if-nez p0, :cond_0

    .line 47
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->NULLER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isNuller(Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)Z
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    .line 67
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->NULLER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSkipper(Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)Z
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    .line 58
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->SKIPPER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static nuller()Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;
    .locals 1

    .line 42
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->NULLER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    return-object v0
.end method

.method public static skipper()Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;
    .locals 1

    .line 38
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->SKIPPER:Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;

    return-object v0
.end method


# virtual methods
.method public synthetic getAbsentValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/NullValueProvider$-CC;->$default$getAbsentValue(Lcom/fasterxml/jackson/databind/deser/NullValueProvider;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNullAccessPattern()Lcom/fasterxml/jackson/databind/util/AccessPattern;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->_access:Lcom/fasterxml/jackson/databind/util/AccessPattern;

    return-object v0
.end method

.method public getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method
