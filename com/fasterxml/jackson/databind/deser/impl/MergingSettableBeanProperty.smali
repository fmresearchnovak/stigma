.class public Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty$Delegating;
.source "MergingSettableBeanProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
    .locals 0
    .param p1, "delegate"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p2, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 41
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty$Delegating;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 42
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 43
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;
    .param p2, "delegate"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 48
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty$Delegating;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 49
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 50
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;
    .locals 1
    .param p0, "delegate"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p1, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    return-object v0
.end method


# virtual methods
.method public deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "oldValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "newValue":Ljava/lang/Object;
    goto :goto_0

    .line 80
    .end local v1    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeWith(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .restart local v1    # "newValue":Ljava/lang/Object;
    :goto_0
    if-eq v1, v0, :cond_1

    .line 85
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v2, p3, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    :cond_1
    return-void
.end method

.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "oldValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "newValue":Ljava/lang/Object;
    goto :goto_0

    .line 100
    .end local v1    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeWith(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .restart local v1    # "newValue":Ljava/lang/Object;
    :goto_0
    if-eq v1, v0, :cond_1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v2, p3, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 112
    :cond_1
    return-object p3
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-eqz p2, :cond_0

    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    if-eqz p2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    return-object p1
.end method

.method protected withDelegate(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 2
    .param p1, "d"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;->_accessor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/MergingSettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    return-object v0
.end method
