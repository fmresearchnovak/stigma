.class public Lcom/fasterxml/jackson/databind/module/SimpleSerializers;
.super Lcom/fasterxml/jackson/databind/ser/Serializers$Base;
.source "SimpleSerializers.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected _hasEnumSerializer:Z

.field protected _interfaceMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/Serializers$Base;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 42
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_hasEnumSerializer:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;)V"
        }
    .end annotation

    .line 62
    .local p1, "sers":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/Serializers$Base;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 42
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_hasEnumSerializer:Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializers(Ljava/util/List;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected _addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;)V"
        }
    .end annotation

    .line 229
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 231
    .local v0, "key":Lcom/fasterxml/jackson/databind/type/ClassKey;
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-class v1, Ljava/lang/Enum;

    if-ne p1, v1, :cond_3

    .line 242
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_hasEnumSerializer:Z

    .line 245
    :cond_3
    :goto_0
    return-void
.end method

.method protected _findInterfaceMapping(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/ClassKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .param p2, "key"    # Lcom/fasterxml/jackson/databind/type/ClassKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 213
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 214
    .local v3, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 215
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 216
    .local v4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz v4, :cond_0

    .line 217
    return-object v4

    .line 219
    :cond_0
    invoke-virtual {p0, v3, p2}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/ClassKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 220
    if-eqz v4, :cond_1

    .line 221
    return-object v4

    .line 213
    .end local v3    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;)V"
        }
    .end annotation

    .line 78
    .local p1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 85
    return-void

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JsonSerializer of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not define valid handledType() -- must either register with method that takes type argument  or make serializer extend \'com.fasterxml.jackson.databind.ser.std.StdSerializer\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 89
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 90
    return-void
.end method

.method public addSerializers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;)V"
        }
    .end annotation

    .line 96
    .local p1, "sers":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 97
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 98
    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public findArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeSerializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 172
    .local p5, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findCollectionLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeSerializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 186
    .local p5, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeSerializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 179
    .local p5, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findMapLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p5, "elementTypeSerializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 202
    .local p4, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .local p6, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p5, "elementTypeSerializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 194
    .local p4, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .local p6, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 111
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 112
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 113
    .local v1, "key":Lcom/fasterxml/jackson/databind/type/ClassKey;
    const/4 v2, 0x0

    .line 116
    .local v2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 118
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 119
    if-eqz v2, :cond_4

    .line 120
    return-object v2

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    if-eqz v3, :cond_4

    .line 125
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 126
    if-eqz v2, :cond_1

    .line 127
    return-object v2

    .line 131
    :cond_1
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_hasEnumSerializer:Z

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    const-class v3, Ljava/lang/Enum;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 133
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 134
    if-eqz v2, :cond_2

    .line 135
    return-object v2

    .line 140
    :cond_2
    move-object v3, v0

    .local v3, "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v3, :cond_4

    .line 141
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/type/ClassKey;->reset(Ljava/lang/Class;)V

    .line 142
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 143
    if-eqz v2, :cond_3

    .line 144
    return-object v2

    .line 140
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 150
    .end local v3    # "curr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;

    if-eqz v3, :cond_7

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/ClassKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    return-object v2

    .line 156
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_7

    .line 157
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    if-eqz v3, :cond_7

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/ClassKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_6

    .line 160
    return-object v2

    .line 165
    :cond_7
    const/4 v3, 0x0

    return-object v3
.end method
