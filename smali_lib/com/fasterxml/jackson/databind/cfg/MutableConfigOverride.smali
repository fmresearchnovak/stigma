.class public Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
.super Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
.source "MutableConfigOverride.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    .line 27
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;-><init>(Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;)V

    .line 28
    return-void
.end method


# virtual methods
.method public copy()Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 1

    .line 31
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;-><init>(Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;)V

    return-object v0
.end method

.method public setFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 35
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_format:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 36
    return-object p0
.end method

.method public setIgnorals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 64
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_ignorals:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 65
    return-object p0
.end method

.method public setInclude(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 46
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_include:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 47
    return-object p0
.end method

.method public setIncludeAsProperty(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 59
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_includeAsProperty:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 60
    return-object p0
.end method

.method public setIsIgnoredType(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Ljava/lang/Boolean;

    .line 69
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_isIgnoredType:Ljava/lang/Boolean;

    .line 70
    return-object p0
.end method

.method public setMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Ljava/lang/Boolean;

    .line 93
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_mergeable:Ljava/lang/Boolean;

    .line 94
    return-object p0
.end method

.method public setSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    .line 77
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_setterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    .line 78
    return-object p0
.end method

.method public setVisibility(Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    .line 85
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->_visibility:Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Value;

    .line 86
    return-object p0
.end method
