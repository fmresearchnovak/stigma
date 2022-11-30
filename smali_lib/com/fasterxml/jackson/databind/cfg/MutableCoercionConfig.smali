.class public Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
.super Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;
.source "MutableCoercionConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 19
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionConfig;)V

    .line 20
    return-void
.end method


# virtual methods
.method public copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 1

    .line 23
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)V

    return-object v0
.end method

.method public setAcceptBlankAsEmpty(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 0
    .param p1, "state"    # Ljava/lang/Boolean;

    .line 33
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->_acceptBlankAsEmpty:Ljava/lang/Boolean;

    .line 34
    return-object p0
.end method

.method public setCoercion(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 2
    .param p1, "shape"    # Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;
    .param p2, "action"    # Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 28
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->_coercionsByShape:[Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 29
    return-object p0
.end method
