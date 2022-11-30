.class public final Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
.super Ljava/lang/Object;
.source "PropertyBasedCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator$CaseInsensitiveMap;
    }
.end annotation


# instance fields
.field protected final _allProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected final _propertyCount:I

.field protected final _propertyLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;ZZ)V
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .param p3, "creatorProps"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p4, "caseInsensitive"    # Z
    .param p5, "addAliases"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 60
    if-eqz p4, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator$CaseInsensitiveMap;->construct(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator$CaseInsensitiveMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyLookup:Ljava/util/HashMap;

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyLookup:Ljava/util/HashMap;

    .line 65
    :goto_0
    array-length v0, p3

    .line 66
    .local v0, "len":I
    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyCount:I

    .line 67
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_allProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 71
    if-eqz p5, :cond_2

    .line 72
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 73
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    array-length v2, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p3, v3

    .line 75
    .local v4, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isIgnorable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->findAliases(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Ljava/util/List;

    move-result-object v5

    .line 77
    .local v5, "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 79
    .local v7, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyLookup:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .end local v7    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    goto :goto_2

    .line 73
    .end local v4    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v5    # "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    .end local v1    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 86
    aget-object v2, p3, v1

    .line 87
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_allProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aput-object v2, v3, v1

    .line 89
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isIgnorable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 90
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyLookup:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 93
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    .locals 1
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .param p2, "srcCreatorProps"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 158
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    .line 157
    invoke-static {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    move-result-object v0

    return-object v0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    .locals 9
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .param p2, "srcCreatorProps"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p3, "allProperties"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 106
    array-length v0, p2

    .line 107
    .local v0, "len":I
    new-array v7, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 108
    .local v7, "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 109
    aget-object v2, p2, v1

    .line 110
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isInjectionOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    .line 117
    :cond_0
    aput-object v2, v7, v1

    .line 108
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_1
    new-instance v8, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 120
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->isCaseInsensitive()Z

    move-result v5

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;ZZ)V

    .line 119
    return-object v8
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    .locals 9
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .param p2, "srcCreatorProps"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p3, "caseInsensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 139
    array-length v0, p2

    .line 140
    .local v0, "len":I
    new-array v7, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 141
    .local v7, "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 142
    aget-object v2, p2, v1

    .line 143
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    .line 146
    :cond_0
    aput-object v2, v7, v1

    .line 141
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_1
    new-instance v8, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;ZZ)V

    return-object v8
.end method


# virtual methods
.method public build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "buffer"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_allProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, v1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "bean":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->handleIdValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->buffered()Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    move-result-object v1

    .local v1, "pv":Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
    :goto_0
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;->assign(Ljava/lang/Object;)V

    .line 210
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;->next:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;

    goto :goto_0

    .line 214
    .end local v1    # "pv":Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
    :cond_0
    return-object v0
.end method

.method public findCreatorProperty(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 3
    .param p1, "propertyIndex"    # I

    .line 176
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 177
    .local v1, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 178
    return-object v1

    .line 180
    .end local v1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_0
    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v0
.end method

.method public properties()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyLookup:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "oir"    # Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 197
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->_propertyCount:I

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;ILcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V

    return-object v0
.end method
