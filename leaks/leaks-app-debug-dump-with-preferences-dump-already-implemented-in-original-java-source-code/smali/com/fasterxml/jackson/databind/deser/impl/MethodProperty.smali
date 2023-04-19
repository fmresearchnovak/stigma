.class public final Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "MethodProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

.field protected final transient _setter:Ljava/lang/reflect/Method;

.field protected final _skipNulls:Z


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
    .param p3, "nva"    # Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/NullValueProvider;",
            ")V"
        }
    .end annotation

    .line 50
    .local p2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)V

    .line 51
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 52
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    .line 53
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->isSkipper(Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    .line 54
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
    .param p2, "newName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 58
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 59
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    .line 60
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
    .param p2, "m"    # Ljava/lang/reflect/Method;

    .line 67
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 68
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 69
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    .line 70
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    .locals 1
    .param p1, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p4, "contextAnnotations"    # Lcom/fasterxml/jackson/databind/util/Annotations;
    .param p5, "method"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;)V

    .line 43
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 44
    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    .line 45
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->isSkipper(Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    .line 46
    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/deser/NullValueProvider;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 128
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .restart local v0    # "value":Ljava/lang/Object;
    if-nez v0, :cond_4

    .line 132
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    if-eqz v1, :cond_2

    .line 133
    return-void

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    invoke-interface {v1, p2}, Lcom/fasterxml/jackson/databind/deser/NullValueProvider;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 138
    .end local v0    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_1

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_throwAsIOE(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    if-eqz v0, :cond_0

    .line 154
    return-object p3

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/deser/NullValueProvider;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 157
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .restart local v0    # "value":Ljava/lang/Object;
    if-nez v0, :cond_4

    .line 161
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    if-eqz v1, :cond_2

    .line 162
    return-object p3

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    invoke-interface {v1, p2}, Lcom/fasterxml/jackson/databind/deser/NullValueProvider;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 167
    .end local v0    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_5

    move-object v2, p3

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    return-object v2

    .line 172
    .end local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_throwAsIOE(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 174
    const/4 v2, 0x0

    return-object v2
.end method

.method public fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 95
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 96
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->fixAccess(Z)V

    .line 97
    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 107
    .local p1, "acls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 209
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 187
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 195
    .end local v0    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 198
    const/4 v1, 0x0

    return-object v1
.end method

.method public withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1
    .param p1, "newName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .line 75
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public withNullProvider(Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 2
    .param p1, "nva"    # Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    .line 90
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)V

    return-object v0
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;"
        }
    .end annotation

    .line 80
    .local p1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v0, p1, :cond_0

    .line 81
    return-object p0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    if-ne v0, v1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/NullValueProvider;

    .line 85
    .local v0, "nvp":Lcom/fasterxml/jackson/databind/deser/NullValueProvider;
    :goto_0
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    invoke-direct {v1, p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)V

    return-object v1
.end method
