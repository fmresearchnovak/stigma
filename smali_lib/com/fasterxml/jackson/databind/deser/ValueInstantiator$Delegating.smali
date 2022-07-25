.class public Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.source "ValueInstantiator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegating"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _delegate:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V
    .locals 0
    .param p1, "delegate"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 505
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->_delegate:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 507
    return-void
.end method


# virtual methods
.method public canCreateFromBoolean()Z
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromBoolean()Z

    move-result v0

    return v0
.end method

.method public canCreateFromDouble()Z
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromDouble()Z

    move-result v0

    return v0
.end method

.method public canCreateFromInt()Z
    .locals 1

    .line 531
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v0

    return v0
.end method

.method public canCreateFromLong()Z
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromLong()Z

    move-result v0

    return v0
.end method

.method public canCreateFromObjectWith()Z
    .locals 1

    .line 545
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result v0

    return v0
.end method

.method public canCreateFromString()Z
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v0

    return v0
.end method

.method public canCreateUsingArrayDelegate()Z
    .locals 1

    .line 543
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingArrayDelegate()Z

    move-result v0

    return v0
.end method

.method public canCreateUsingDefault()Z
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    return v0
.end method

.method public canCreateUsingDelegate()Z
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    return v0
.end method

.method public canInstantiate()Z
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canInstantiate()Z

    move-result v0

    return v0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->_delegate:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    .line 514
    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->_delegate:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;-><init>(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    :goto_0
    return-object v1
.end method

.method public createFromBigDecimal(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigDecimal;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "value"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromBigDecimal(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigDecimal;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromBigInteger(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigInteger;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromBigInteger(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/math/BigInteger;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "props"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p3, "buffer"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createUsingArrayDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "delegate"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingArrayDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "delegate"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->_delegate:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-object v0
.end method

.method public getArrayDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    .line 643
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getArrayDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    return-object v0
.end method

.method public getArrayDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 559
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getArrayDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 554
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 549
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 520
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWithArgsCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator$Delegating;->delegate()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getWithArgsCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    return-object v0
.end method
