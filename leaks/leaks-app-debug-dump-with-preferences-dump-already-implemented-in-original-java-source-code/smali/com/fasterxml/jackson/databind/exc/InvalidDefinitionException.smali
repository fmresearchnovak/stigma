.class public Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "InvalidDefinitionException.java"


# instance fields
.field protected transient _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected transient _property:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)V
    .locals 1
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "bean"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "prop"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 55
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 56
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 57
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 58
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 41
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 42
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "bean"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "prop"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 47
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 48
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 49
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 50
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 33
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 34
    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1
    .param p0, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "bean"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "prop"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 72
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1
    .param p0, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 77
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "bean"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "prop"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 62
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    .locals 1
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 67
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method


# virtual methods
.method public getBeanDescription()Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    return-object v0
.end method

.method public getProperty()Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_property:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method
