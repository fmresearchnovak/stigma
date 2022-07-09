.class public Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.super Ljava/lang/Object;
.source "SettableAnyProperty.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

.field protected final _property:Lcom/fasterxml/jackson/databind/BeanProperty;

.field protected final _setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field final _setterIsField:Z

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;

.field protected _valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
    .locals 7
    .param p1, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p2, "setter"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    .local p4, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
    .locals 1
    .param p1, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .param p2, "setter"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "keyDeser"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p6, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .line 61
    .local p5, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    .line 63
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 64
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 65
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 66
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 67
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 68
    instance-of v0, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setterIsField:Z

    .line 69
    return-void
.end method

.method private getClassName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "propName"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 197
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->classNameOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "actType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem deserializing \"any\" property \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    .local v2, "msg":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\' of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (expected type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    const-string v3, "; actual type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "origMsg":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 203
    const-string v4, ", problem: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :cond_0
    const-string v4, " (no error message provided)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :goto_0
    new-instance v4, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 209
    .end local v0    # "actType":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/StringBuilder;
    .end local v3    # "origMsg":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfIOE(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwIfRTE(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 212
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 213
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    if-nez v0, :cond_0

    move-object v0, p4

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, p4, p2}, Lcom/fasterxml/jackson/databind/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    nop

    .line 134
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p3, v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "key":Ljava/lang/Object;
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    new-instance v7, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 140
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .local v1, "referring":Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->getRoid()Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->appendReferring(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;)V

    .line 143
    .end local v0    # "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .end local v1    # "referring":Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty$AnySetterReferring;
    :goto_1
    return-void

    .line 137
    .restart local v0    # "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    :cond_1
    const-string v1, "Unresolved forward reference but no identity info."

    invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1
.end method

.method public fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 84
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 85
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 86
    return-void
.end method

.method public getProperty()Lcom/fasterxml/jackson/databind/BeanProperty;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public hasValueDeserializer()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotated()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    return-object p0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing method (broken JDK (de)serialization?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "propName"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setterIsField:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    .line 163
    .local v0, "field":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 169
    .local v1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 171
    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v0    # "field":Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .end local v1    # "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->callOnWith(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[any property on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;"
        }
    .end annotation

    .line 79
    .local p1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    new-instance v7, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_setter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    return-object v7
.end method
