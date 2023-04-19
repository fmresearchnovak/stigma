.class public abstract Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "BeanSerializerBase.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;
.implements Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;
.implements Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;",
        "Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;",
        "Lcom/fasterxml/jackson/databind/jsonschema/SchemaAware;"
    }
.end annotation


# static fields
.field protected static final NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;

.field protected static final NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;


# instance fields
.field protected final _anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

.field protected final _beanType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected final _objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

.field protected final _propertyFilterId:Ljava/lang/Object;

.field protected final _props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected final _serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field protected final _typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, "#object-ref"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NAME_FOR_OBJECT_REF:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->NO_PROPS:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "builder"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .param p3, "properties"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .param p4, "filteredProperties"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 116
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 117
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 118
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 119
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 120
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 123
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 124
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 125
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 126
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 127
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getTypeId()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 130
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getAnyGetter()Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 131
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getFilterId()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 132
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getObjectIdWriter()Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 133
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getBeanDescription()Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 134
    .local v0, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 136
    .end local v0    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :goto_0
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    .line 296
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 297
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "objectIdWriter"    # Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 156
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;Ljava/lang/Object;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "objectIdWriter"    # Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .param p3, "filterId"    # Ljava/lang/Object;

    .line 165
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 166
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 167
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 168
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 170
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 171
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 172
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 173
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 174
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 175
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 304
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v0

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v1, p2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 305
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    .local p2, "toIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;Ljava/util/Set;)V

    .line 186
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p2, "toIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "toInclude":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 192
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 193
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 194
    .local v0, "propsIn":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 195
    .local v1, "fpropsIn":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    array-length v2, v0

    .line 197
    .local v2, "len":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v3, "propsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v5, "fpropsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 201
    aget-object v7, v0, v6

    .line 203
    .local v7, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2, p3}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil;->shouldIgnore(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 204
    goto :goto_2

    .line 206
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    if-eqz v1, :cond_2

    .line 208
    aget-object v8, v1, v6

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v7    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 211
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iput-object v6, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 212
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    :goto_3
    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 214
    iget-object v4, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 215
    iget-object v4, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 216
    iget-object v4, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 217
    iget-object v4, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 218
    iget-object v4, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 219
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "properties"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .param p3, "filteredProperties"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 141
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 142
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 143
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 144
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 146
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 147
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    .line 148
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 149
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    .line 150
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 151
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;[Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .param p2, "toIgnore"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;-><init>(Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;Ljava/util/Set;Ljava/util/Set;)V

    .line 181
    return-void
.end method

.method private static final rename([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/util/NameTransformer;)[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 5
    .param p0, "props"    # [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .param p1, "transformer"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 310
    if-eqz p0, :cond_3

    array-length v0, p0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    array-length v0, p0

    .line 314
    .local v0, "len":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 315
    .local v1, "result":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 316
    aget-object v3, p0, v2

    .line 317
    .local v3, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v4

    aput-object v4, v1, v2

    .line 315
    .end local v3    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 311
    .end local v0    # "len":I
    .end local v1    # "result":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method protected final _customTypeId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 748
    .local v0, "typeId":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 749
    const-string v1, ""

    return-object v1

    .line 751
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected _serializeObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;)V
    .locals 3
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p5, "objectId"    # Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 714
    .local v0, "w":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p4, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeIdDef(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object v1

    .line 716
    .local v1, "typeIdDef":Lcom/fasterxml/jackson/core/type/WritableTypeId;
    invoke-virtual {p4, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 718
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 719
    invoke-virtual {p5, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 720
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 721
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 725
    :goto_0
    invoke-virtual {p4, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 726
    return-void
.end method

.method protected final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 9
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 695
    .local v0, "w":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    move-result-object v1

    .line 697
    .local v1, "objectId":Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    return-void

    .line 701
    :cond_0
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 702
    .local v8, "id":Ljava/lang/Object;
    iget-boolean v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-eqz v2, :cond_1

    .line 703
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v2, v8, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 704
    return-void

    .line 706
    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;)V

    .line 707
    return-void
.end method

.method protected final _serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Z)V
    .locals 4
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "startEndObject"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 666
    .local v0, "w":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {p3, p1, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;

    move-result-object v1

    .line 668
    .local v1, "objectId":Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
    invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    return-void

    .line 672
    :cond_0
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 673
    .local v2, "id":Ljava/lang/Object;
    iget-boolean v3, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-eqz v3, :cond_1

    .line 674
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    invoke-virtual {v3, v2, p2, p3}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 675
    return-void

    .line 677
    :cond_1
    if-eqz p4, :cond_2

    .line 678
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    .line 680
    :cond_2
    invoke-virtual {v1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 681
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 682
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 684
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 686
    :goto_0
    if-eqz p4, :cond_4

    .line 687
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 689
    :cond_4
    return-void
.end method

.method protected final _typeIdDef(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;
    .locals 2
    .param p1, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "valueShape"    # Lcom/fasterxml/jackson/core/JsonToken;

    .line 733
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeId:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->typeId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object v0

    return-object v0

    .line 736
    :cond_0
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 737
    .local v0, "typeId":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 739
    const-string v0, ""

    .line 741
    :cond_1
    invoke-virtual {p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->typeId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object v1

    return-object v1
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 7
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 888
    if-nez p1, :cond_0

    .line 889
    return-void

    .line 891
    :cond_0
    invoke-interface {p1, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->expectObjectFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;

    move-result-object v0

    .line 892
    .local v0, "objectVisitor":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
    if-nez v0, :cond_1

    .line 893
    return-void

    .line 895
    :cond_1
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v1

    .line 896
    .local v1, "provider":Lcom/fasterxml/jackson/databind/SerializerProvider;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 897
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v2

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-virtual {p0, v2, v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v2

    .line 899
    .local v2, "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v4, v4

    .local v4, "end":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 900
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v5, v5, v3

    invoke-interface {v2, v5, v0, v1}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 899
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 902
    .end local v2    # "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .end local v3    # "i":I
    .end local v4    # "end":I
    :cond_2
    goto :goto_4

    .line 903
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v2, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 904
    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v3

    :cond_5
    :goto_1
    move-object v2, v3

    .line 906
    .local v2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_6

    .line 907
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .local v3, "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_2

    .line 909
    .end local v3    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 912
    .restart local v3    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v3

    .local v5, "end":I
    :goto_3
    if-ge v4, v5, :cond_8

    .line 913
    aget-object v6, v3, v4

    .line 914
    .local v6, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v6, :cond_7

    .line 915
    invoke-virtual {v6, v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 912
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 919
    .end local v2    # "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v4    # "i":I
    .end local v5    # "end":I
    :cond_8
    :goto_4
    return-void
.end method

.method protected abstract asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 27
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v10

    .line 449
    .local v10, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    const/4 v2, 0x0

    if-eqz v9, :cond_1

    if-nez v10, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    goto :goto_1

    .line 449
    :cond_1
    :goto_0
    move-object v3, v2

    .line 450
    :goto_1
    move-object v11, v3

    .line 451
    .local v11, "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v12

    .line 455
    .local v12, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-virtual {v0, v1, v9, v3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v13

    .line 456
    .local v13, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    const/4 v3, 0x0

    .line 457
    .local v3, "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasShape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 458
    invoke-virtual {v13}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v14

    .line 460
    .end local v3    # "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .local v14, "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v14, v3, :cond_4

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v14, v3, :cond_4

    .line 461
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    invoke-virtual {v14}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 471
    goto :goto_2

    .line 468
    :pswitch_0
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v12, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v2

    .line 469
    .local v2, "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v4

    .line 469
    invoke-static {v3, v4, v2, v13}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    move-result-object v3

    .line 471
    .local v3, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {v1, v3, v9}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    return-object v4

    .line 474
    .end local v2    # "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .end local v3    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_2
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->NATURAL:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v14, v3, :cond_4

    .line 475
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v3

    if-eqz v3, :cond_3

    const-class v3, Ljava/util/Map;

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 477
    :cond_3
    const-class v3, Ljava/util/Map$Entry;

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 478
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    const-class v3, Ljava/util/Map$Entry;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    .line 480
    .local v15, "mapEntryType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v15, v5}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v16

    .line 481
    .local v16, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v15, v4}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v17

    .line 485
    .local v17, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v18, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 487
    .local v2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {v1, v2, v9}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    return-object v3

    .line 493
    .end local v2    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .end local v15    # "mapEntryType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v16    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v17    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_4
    :goto_2
    move-object v3, v14

    .end local v14    # "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .local v3, "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :cond_5
    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    .line 497
    .local v6, "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    const/4 v7, 0x0

    .line 498
    .local v7, "idPropOrigIndex":I
    const/4 v8, 0x0

    .line 499
    .local v8, "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 500
    .local v14, "includedProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 503
    .local v15, "newFilterId":Ljava/lang/Object;
    if-eqz v11, :cond_e

    .line 504
    invoke-virtual {v10, v12, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnoralByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v8

    .line 505
    invoke-virtual {v10, v12, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusionByName(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v14

    .line 506
    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v4

    .line 507
    .local v4, "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    if-nez v4, :cond_8

    .line 509
    if-eqz v6, :cond_7

    .line 510
    invoke-virtual {v10, v11, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v4

    .line 511
    if-eqz v4, :cond_6

    .line 512
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v2

    move-object v6, v2

    move-object/from16 v25, v8

    move-object/from16 v26, v12

    .end local v6    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .local v2, "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    goto/16 :goto_5

    .line 511
    .end local v2    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .restart local v6    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    :cond_6
    move-object/from16 v25, v8

    move-object/from16 v26, v12

    goto/16 :goto_5

    .line 509
    :cond_7
    move-object/from16 v25, v8

    move-object/from16 v26, v12

    goto/16 :goto_5

    .line 520
    :cond_8
    invoke-virtual {v10, v11, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v4

    .line 521
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v5

    .line 522
    .local v5, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 523
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v19, v6

    .end local v6    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .local v19, "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v6

    move/from16 v20, v7

    .end local v7    # "idPropOrigIndex":I
    .local v20, "idPropOrigIndex":I
    const-class v7, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v6, v2, v7}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 525
    .local v6, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v7, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    if-ne v5, v7, :cond_b

    .line 526
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 527
    .local v7, "propName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 529
    .local v21, "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const/16 v22, 0x0

    move-object/from16 v23, v2

    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .local v22, "i":I
    .local v23, "type":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v2, v2

    move-object/from16 v24, v5

    move/from16 v5, v22

    .line 530
    .end local v22    # "i":I
    .local v2, "len":I
    .local v5, "i":I
    .local v24, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-ne v5, v2, :cond_9

    .line 531
    move/from16 v22, v2

    .end local v2    # "len":I
    .local v22, "len":I
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v25, v8

    .end local v8    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v25, "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->handledType()Ljava/lang/Class;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v26

    const/16 v17, 0x0

    aput-object v26, v8, v17

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v16, 0x1

    aput-object v26, v8, v16

    .line 531
    move-object/from16 v26, v12

    .end local v12    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .local v26, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    const-string v12, "Invalid Object Id definition for %s: cannot find property with name %s"

    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/fasterxml/jackson/databind/SerializerProvider;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_4

    .line 530
    .end local v22    # "len":I
    .end local v25    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .restart local v2    # "len":I
    .restart local v8    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_9
    move/from16 v22, v2

    move-object/from16 v25, v8

    move-object/from16 v26, v12

    .line 535
    .end local v2    # "len":I
    .end local v8    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .restart local v22    # "len":I
    .restart local v25    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_4
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v2, v2, v5

    .line 536
    .local v2, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 537
    move-object v8, v2

    .line 540
    .end local v21    # "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .local v8, "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    move v12, v5

    .line 541
    .end local v20    # "idPropOrigIndex":I
    .local v12, "idPropOrigIndex":I
    nop

    .line 544
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v5    # "i":I
    .end local v22    # "len":I
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 545
    .end local v6    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    .local v2, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    invoke-direct {v5, v4, v8}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 546
    .local v5, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    const/4 v6, 0x0

    move-object/from16 v18, v6

    check-cast v18, Lcom/fasterxml/jackson/databind/PropertyName;

    move-object/from16 v18, v7

    .end local v7    # "propName":Ljava/lang/String;
    .local v18, "propName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v7

    invoke-static {v2, v6, v5, v7}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v5

    .line 547
    .end local v8    # "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v18    # "propName":Ljava/lang/String;
    .end local v19    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .local v5, "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    move-object v6, v5

    move v7, v12

    goto :goto_5

    .line 536
    .end local v12    # "idPropOrigIndex":I
    .local v2, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .local v5, "i":I
    .restart local v6    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v7    # "propName":Ljava/lang/String;
    .restart local v19    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .restart local v20    # "idPropOrigIndex":I
    .restart local v21    # "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .restart local v22    # "len":I
    :cond_a
    move-object/from16 v18, v7

    const/4 v7, 0x0

    .line 529
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v7    # "propName":Ljava/lang/String;
    .restart local v18    # "propName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v18

    move/from16 v2, v22

    move-object/from16 v8, v25

    move-object/from16 v12, v26

    goto :goto_3

    .line 548
    .end local v18    # "propName":Ljava/lang/String;
    .end local v21    # "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v22    # "len":I
    .end local v23    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v24    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v25    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    .local v5, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v8, "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v12, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_b
    move-object/from16 v23, v2

    move-object/from16 v24, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v12

    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v5    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .restart local v23    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v24    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v25    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {v1, v11, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v2

    .line 549
    .local v2, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    .line 550
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v7

    .line 549
    invoke-static {v6, v5, v2, v7}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v5

    move-object v6, v5

    move/from16 v7, v20

    .line 554
    .end local v2    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .end local v19    # "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .end local v20    # "idPropOrigIndex":I
    .end local v23    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v24    # "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v6, "oiw":Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .local v7, "idPropOrigIndex":I
    :goto_5
    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 555
    .local v2, "filterId":Ljava/lang/Object;
    if-eqz v2, :cond_d

    .line 557
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v5, :cond_c

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 558
    :cond_c
    move-object v15, v2

    move-object/from16 v8, v25

    goto :goto_6

    .line 563
    .end local v2    # "filterId":Ljava/lang/Object;
    .end local v4    # "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    :cond_d
    move-object/from16 v8, v25

    goto :goto_6

    .line 503
    .end local v25    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .restart local v8    # "ignoredProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :cond_e
    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object/from16 v26, v12

    .line 563
    .end local v12    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .restart local v26    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    :goto_6
    move-object/from16 v2, p0

    .line 566
    .local v2, "contextual":Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    if-lez v7, :cond_10

    .line 567
    iget-object v4, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 568
    .local v4, "newProps":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    aget-object v5, v4, v7

    .line 569
    .local v5, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    move-object/from16 v18, v10

    const/4 v10, 0x0

    const/4 v12, 0x1

    .end local v10    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .local v18, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-static {v4, v10, v4, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    aput-object v5, v4, v10

    .line 572
    iget-object v10, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-nez v10, :cond_f

    .line 573
    const/4 v10, 0x0

    move-object/from16 v16, v11

    .local v10, "newFiltered":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_7

    .line 575
    .end local v10    # "newFiltered":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_f
    array-length v12, v10

    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 576
    .restart local v10    # "newFiltered":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    aget-object v5, v10, v7

    .line 577
    move-object/from16 v16, v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    .end local v11    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .local v16, "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-static {v10, v11, v10, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    aput-object v5, v10, v11

    .line 580
    :goto_7
    invoke-virtual {v2, v4, v10}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withProperties([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v2

    goto :goto_8

    .line 566
    .end local v4    # "newProps":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v5    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v16    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v18    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .local v10, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v11    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_10
    move-object/from16 v18, v10

    move-object/from16 v16, v11

    .line 583
    .end local v10    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v11    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .restart local v16    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .restart local v18    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    :goto_8
    if-eqz v6, :cond_11

    .line 584
    iget-object v4, v6, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->idType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, v4, v9}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 585
    .local v4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->withSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v6

    .line 586
    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eq v6, v5, :cond_11

    .line 587
    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v2

    .line 592
    .end local v4    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_11
    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    if-eqz v14, :cond_14

    .line 594
    :cond_13
    invoke-virtual {v2, v8, v14}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withByNameInclusion(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v2

    .line 596
    :cond_14
    if-eqz v15, :cond_15

    .line 597
    invoke-virtual {v2, v15}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v2

    .line 600
    :cond_15
    if-nez v3, :cond_16

    .line 601
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 604
    :cond_16
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v3, v4, :cond_17

    .line 605
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->asArraySerializer()Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v4

    return-object v4

    .line 607
    :cond_17
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 424
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 425
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    .line 427
    .local v2, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v3

    .line 429
    .local v3, "convDef":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 430
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v4

    .line 431
    .local v4, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 433
    .local v5, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p1, v5, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v1

    :goto_0
    nop

    .line 435
    .local v1, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    new-instance v6, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v6, v4, v5, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v6

    .line 439
    .end local v1    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .end local v2    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v3    # "convDef":Ljava/lang/Object;
    .end local v4    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    return-object v1
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 7
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    const-string v0, "object"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 852
    .local v0, "o":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_handledType:Ljava/lang/Class;

    const-class v2, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;

    .line 853
    .local v1, "ann":Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;
    if-eqz v1, :cond_0

    .line 854
    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/jsonschema/JsonSerializableSchema;->id()Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 856
    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 862
    .end local v2    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 864
    .local v2, "propertiesNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 865
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v3

    .local v3, "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    goto :goto_0

    .line 867
    .end local v3    # "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    :cond_1
    const/4 v3, 0x0

    .line 870
    .restart local v3    # "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 871
    aget-object v5, v5, v4

    .line 872
    .local v5, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-nez v3, :cond_2

    .line 873
    invoke-virtual {v5, v2, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_2

    .line 875
    :cond_2
    invoke-interface {v3, v5, v2, p1}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 870
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 879
    .end local v4    # "i":I
    :cond_3
    const-string v4, "properties"

    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 880
    return-object v0
.end method

.method public properties()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/fasterxml/jackson/databind/ser/PropertyWriter;",
            ">;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 8
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 339
    .local v0, "filteredCount":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length v2, v2

    .local v2, "len":I
    :goto_1
    if-ge v1, v2, :cond_8

    .line 340
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v3, v3, v1

    .line 342
    .local v3, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->willSuppressNulls()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->hasNullSerializer()Z

    move-result v4

    if-nez v4, :cond_1

    .line 343
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findNullValueSerializer(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 344
    .local v4, "nullSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-eqz v4, :cond_1

    .line 345
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 347
    if-ge v1, v0, :cond_1

    .line 348
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v5, v5, v1

    .line 349
    .local v5, "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v5, :cond_1

    .line 350
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 356
    .end local v4    # "nullSer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v5    # "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->hasSerializer()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    goto :goto_2

    .line 360
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 361
    .local v4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v4, :cond_5

    .line 363
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getSerializationType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 367
    .local v5, "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v5, :cond_4

    .line 368
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 369
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result v6

    if-nez v6, :cond_4

    .line 370
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I

    move-result v6

    if-lez v6, :cond_7

    .line 371
    :cond_3
    invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->setNonTrivialBaseType(Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_2

    .line 376
    :cond_4
    invoke-virtual {p1, v5, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 379
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 380
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 381
    .local v6, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    if-eqz v6, :cond_5

    .line 383
    instance-of v7, v4, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    if-eqz v7, :cond_5

    .line 386
    move-object v7, v4

    check-cast v7, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    invoke-virtual {v7, v6}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v7

    .line 387
    .local v7, "ser2":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    move-object v4, v7

    .line 393
    .end local v5    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v6    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .end local v7    # "ser2":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_5
    if-ge v1, v0, :cond_6

    .line 394
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    aget-object v5, v5, v1

    .line 395
    .local v5, "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v5, :cond_6

    .line 396
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 400
    goto :goto_2

    .line 403
    .end local v5    # "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_6
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 339
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v4    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 407
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_8
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v1, :cond_9

    .line 409
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 411
    :cond_9
    return-void
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 6
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    const-string v0, "[anySetter]"

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .local v1, "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_0

    .line 767
    .end local v1    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 769
    .restart local v1    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_0
    const/4 v2, 0x0

    .line 771
    .local v2, "i":I
    :try_start_0
    array-length v3, v1

    .local v3, "len":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 772
    aget-object v4, v1, v2

    .line 773
    .local v4, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v4, :cond_1

    .line 774
    invoke-virtual {v4, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 771
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 777
    .end local v3    # "len":I
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v3, :cond_5

    .line 778
    invoke-virtual {v3, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->getAndSerialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 783
    :catch_0
    move-exception v3

    .line 789
    .local v3, "e":Ljava/lang/StackOverflowError;
    new-instance v4, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v5, "Infinite recursion (StackOverflowError)"

    invoke-direct {v4, p2, v5, v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 791
    .local v4, "mapE":Lcom/fasterxml/jackson/databind/DatabindException;
    array-length v5, v1

    if-ne v2, v5, :cond_3

    goto :goto_2

    :cond_3
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "name":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, p1, v0}, Lcom/fasterxml/jackson/databind/DatabindException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    throw v4

    .line 780
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/StackOverflowError;
    .end local v4    # "mapE":Lcom/fasterxml/jackson/databind/DatabindException;
    :catch_1
    move-exception v3

    .line 781
    .local v3, "e":Ljava/lang/Exception;
    array-length v4, v1

    if-ne v2, v4, :cond_4

    goto :goto_3

    :cond_4
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 782
    .restart local v0    # "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v3, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    .end local v0    # "name":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    nop

    .line 795
    return-void
.end method

.method protected serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 7
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    const-string v0, "[anySetter]"

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_filteredProps:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .local v1, "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    goto :goto_0

    .line 812
    .end local v1    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_props:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 814
    .restart local v1    # "props":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    invoke-virtual {p0, p3, v2, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->findPropertyFilter(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v2

    .line 816
    .local v2, "filter":Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    if-nez v2, :cond_1

    .line 817
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 818
    return-void

    .line 820
    :cond_1
    const/4 v3, 0x0

    .line 822
    .local v3, "i":I
    :try_start_0
    array-length v4, v1

    .local v4, "len":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 823
    aget-object v5, v1, v3

    .line 824
    .local v5, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eqz v5, :cond_2

    .line 825
    invoke-interface {v2, p1, p2, p3, v5}, Lcom/fasterxml/jackson/databind/ser/PropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V

    .line 822
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 828
    .end local v4    # "len":I
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_anyGetterWriter:Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    if-eqz v4, :cond_6

    .line 829
    invoke-virtual {v4, p1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;->getAndFilter(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 834
    :catch_0
    move-exception v4

    .line 837
    .local v4, "e":Ljava/lang/StackOverflowError;
    new-instance v5, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const-string v6, "Infinite recursion (StackOverflowError)"

    invoke-direct {v5, p2, v6, v4}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 838
    .local v5, "mapE":Lcom/fasterxml/jackson/databind/DatabindException;
    array-length v6, v1

    if-ne v3, v6, :cond_4

    goto :goto_2

    :cond_4
    aget-object v0, v1, v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "name":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, p1, v0}, Lcom/fasterxml/jackson/databind/DatabindException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    throw v5

    .line 831
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/StackOverflowError;
    .end local v5    # "mapE":Lcom/fasterxml/jackson/databind/DatabindException;
    :catch_1
    move-exception v4

    .line 832
    .local v4, "e":Ljava/lang/Exception;
    array-length v5, v1

    if-ne v3, v5, :cond_5

    goto :goto_3

    :cond_5
    aget-object v0, v1, v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 833
    .restart local v0    # "name":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0, p3, v4, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->wrapAndThrow(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_4
    nop

    .line 842
    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 2
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p4, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_serializeWithObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    .line 648
    return-void

    .line 651
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p4, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_typeIdDef(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    move-result-object v0

    .line 652
    .local v0, "typeIdDef":Lcom/fasterxml/jackson/core/type/WritableTypeId;
    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 653
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCurrentValue(Ljava/lang/Object;)V

    .line 654
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 655
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 657
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 659
    :goto_0
    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffix(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/type/WritableTypeId;)Lcom/fasterxml/jackson/core/type/WritableTypeId;

    .line 660
    return-void
.end method

.method public usesObjectId()Z
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->_objectIdWriter:Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract withByNameInclusion(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;"
        }
    .end annotation
.end method

.method public bridge synthetic withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object p1

    return-object p1
.end method

.method public abstract withFilterId(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method protected withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    .local p1, "toIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withByNameInclusion(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v0

    return-object v0
.end method

.method protected withIgnorals([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
    .locals 1
    .param p1, "toIgnore"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;->withIgnorals(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract withObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method

.method protected abstract withProperties([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)Lcom/fasterxml/jackson/databind/ser/std/BeanSerializerBase;
.end method
