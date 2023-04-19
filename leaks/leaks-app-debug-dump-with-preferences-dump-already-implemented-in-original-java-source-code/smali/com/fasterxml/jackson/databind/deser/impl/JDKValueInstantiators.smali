.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators;
.super Ljava/lang/Object;
.source "JDKValueInstantiators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;,
        Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$LinkedHashMapInstantiator;,
        Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;,
        Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ArrayListInstantiator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findStdValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 2
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;"
        }
    .end annotation

    .line 29
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/fasterxml/jackson/core/JsonLocation;

    if-ne p1, v0, :cond_0

    .line 30
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;-><init>()V

    return-object v0

    .line 34
    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    const-class v0, Ljava/util/ArrayList;

    if-ne p1, v0, :cond_1

    .line 36
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ArrayListInstantiator;->INSTANCE:Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ArrayListInstantiator;

    return-object v0

    .line 38
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 39
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 41
    :cond_2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 44
    :cond_3
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_4

    .line 46
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$LinkedHashMapInstantiator;->INSTANCE:Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$LinkedHashMapInstantiator;

    return-object v0

    .line 48
    :cond_4
    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_5

    .line 49
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;->INSTANCE:Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$HashMapInstantiator;

    return-object v0

    .line 51
    :cond_5
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_6

    .line 52
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators$ConstantValueInstantiator;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 55
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method
