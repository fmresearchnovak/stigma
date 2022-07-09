.class public Lcom/fasterxml/jackson/databind/module/SimpleModule;
.super Lcom/fasterxml/jackson/databind/Module;
.source "SimpleModule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MODULE_ID_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

.field protected _deserializerModifier:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

.field protected _deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

.field protected final _hasExplicitName:Z

.field protected _keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

.field protected _keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

.field protected _mixins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final _name:Ljava/lang/String;

.field protected _namingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

.field protected _serializerModifier:Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

.field protected _serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

.field protected _subtypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation
.end field

.field protected _valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

.field protected final _version:Lcom/fasterxml/jackson/core/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->MODULE_ID_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/Module;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 65
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 67
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 68
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 75
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 82
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 87
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializerModifier:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 92
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializerModifier:Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 98
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 103
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    .line 108
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_namingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleModule-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;->MODULE_ID_SEQ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_name:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_version:Lcom/fasterxml/jackson/core/Version;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_hasExplicitName:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Version;)V
    .locals 1
    .param p1, "version"    # Lcom/fasterxml/jackson/core/Version;

    .line 147
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Version;->getArtifactId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lcom/fasterxml/jackson/core/Version;

    .line 159
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/Module;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 65
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 67
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 68
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 75
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 82
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 87
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializerModifier:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 92
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializerModifier:Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 98
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 103
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    .line 108
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_namingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 160
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_name:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_version:Lcom/fasterxml/jackson/core/Version;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_hasExplicitName:Z

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lcom/fasterxml/jackson/core/Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/Version;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;)V"
        }
    .end annotation

    .line 179
    .local p3, "serializers":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/Map;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/Map;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lcom/fasterxml/jackson/core/Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/Version;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;>;)V"
        }
    .end annotation

    .line 171
    .local p3, "deserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/Map;Ljava/util/List;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lcom/fasterxml/jackson/core/Version;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/Version;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;>;)V"
        }
    .end annotation

    .line 188
    .local p3, "deserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;>;"
    .local p4, "serializers":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/Module;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 65
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 67
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 68
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 75
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 82
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 87
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializerModifier:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 92
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializerModifier:Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 98
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 103
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    .line 108
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_namingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 189
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_name:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_hasExplicitName:Z

    .line 192
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_version:Lcom/fasterxml/jackson/core/Version;

    .line 193
    if-eqz p3, :cond_0

    .line 194
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    invoke-direct {v0, p3}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 196
    :cond_0
    if-eqz p4, :cond_1

    .line 197
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-direct {v0, p4}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 199
    :cond_1
    return-void
.end method


# virtual methods
.method protected _checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "thingy"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;

    .line 579
    if-eqz p1, :cond_0

    .line 583
    return-void

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "Cannot pass `null` as %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 401
    .local p1, "superType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "subType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const-string v0, "abstract type to map"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    const-string v0, "concrete type to map to"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;->addMapping(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 408
    return-object p0
.end method

.method public addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "+TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 367
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<+TT;>;"
    const-string v0, "type to register deserializer for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    const-string v0, "deserializer"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 373
    return-object p0
.end method

.method public addKeyDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .param p2, "deser"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 378
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "type to register key deserializer for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    const-string v0, "key deserializer"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 384
    return-object p0
.end method

.method public addKeySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 343
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<TT;>;"
    const-string v0, "type to register key serializer for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    const-string v0, "key serializer"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 349
    return-object p0
.end method

.method public addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 315
    .local p1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    const-string v0, "serializer"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 320
    return-object p0
.end method

.method public addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 332
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<TT;>;"
    const-string v0, "type to register serializer for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    const-string v0, "serializer"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 338
    return-object p0
.end method

.method public addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .param p2, "inst"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            ")",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 479
    .local p1, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "class to register value instantiator for"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    const-string v0, "value instantiator"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;->addValueInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 485
    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/Object;
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_hasExplicitName:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_name:Ljava/lang/String;

    return-object v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_name:Ljava/lang/String;

    return-object v0

    .line 224
    :cond_1
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/Module;->getTypeId()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtypes(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 454
    .local p1, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    .line 457
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 458
    .local v1, "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "subtype to register"

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    new-instance v3, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-direct {v3, v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v1    # "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 461
    :cond_1
    return-object p0
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 4
    .param p1, "subtypes"    # [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 435
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    .line 438
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 439
    .local v2, "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    const-string v3, "subtype to register"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v2    # "subtype":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_1
    return-object p0
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 418
    .local p1, "subtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    .line 421
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 422
    .local v2, "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "subtype to register"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    new-instance v4, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-direct {v4, v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v2    # "subtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    :cond_1
    return-object p0
.end method

.method public setAbstractTypes(Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;)V
    .locals 0
    .param p1, "atr"    # Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 265
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    .line 266
    return-void
.end method

.method public setDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 0
    .param p1, "mod"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 279
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializerModifier:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 280
    return-object p0
.end method

.method public setDeserializers(Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;)V
    .locals 0
    .param p1, "d"    # Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 244
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    .line 245
    return-void
.end method

.method public setKeyDeserializers(Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;)V
    .locals 0
    .param p1, "kd"    # Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 258
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    .line 259
    return-void
.end method

.method public setKeySerializers(Lcom/fasterxml/jackson/databind/module/SimpleSerializers;)V
    .locals 0
    .param p1, "ks"    # Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 251
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 252
    return-void
.end method

.method public setMixInAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/module/SimpleModule;"
        }
    .end annotation

    .line 498
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "target type"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    const-string v0, "mixin class"

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-object p0
.end method

.method protected setNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 0
    .param p1, "naming"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 295
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_namingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .line 296
    return-object p0
.end method

.method public setSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/fasterxml/jackson/databind/module/SimpleModule;
    .locals 0
    .param p1, "mod"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 287
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializerModifier:Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 288
    return-object p0
.end method

.method public setSerializers(Lcom/fasterxml/jackson/databind/module/SimpleSerializers;)V
    .locals 0
    .param p1, "s"    # Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 237
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    .line 238
    return-void
.end method

.method public setValueInstantiators(Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;)V
    .locals 0
    .param p1, "svi"    # Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 272
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    .line 273
    return-void
.end method

.method public setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V
    .locals 4
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/Module$SetupContext;

    .line 528
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)V

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializers:Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;

    if-eqz v0, :cond_1

    .line 532
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)V

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keySerializers:Lcom/fasterxml/jackson/databind/module/SimpleSerializers;

    if-eqz v0, :cond_2

    .line 535
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)V

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_keyDeserializers:Lcom/fasterxml/jackson/databind/module/SimpleKeyDeserializers;

    if-eqz v0, :cond_3

    .line 538
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)V

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_abstractTypes:Lcom/fasterxml/jackson/databind/module/SimpleAbstractTypeResolver;

    if-eqz v0, :cond_4

    .line 541
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)V

    .line 543
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_valueInstantiators:Lcom/fasterxml/jackson/databind/module/SimpleValueInstantiators;

    if-eqz v0, :cond_5

    .line 544
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)V

    .line 546
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_deserializerModifier:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    if-eqz v0, :cond_6

    .line 547
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addBeanDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)V

    .line 549
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_serializerModifier:Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    if-eqz v0, :cond_7

    .line 550
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->addBeanSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)V

    .line 552
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 553
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_subtypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 555
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_namingStrategy:Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    if-eqz v0, :cond_9

    .line 556
    invoke-interface {p1, v0}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V

    .line 558
    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    .line 559
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 560
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {p1, v2, v3}, Lcom/fasterxml/jackson/databind/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 561
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    goto :goto_0

    .line 563
    :cond_a
    return-void
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleModule;->_version:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method
