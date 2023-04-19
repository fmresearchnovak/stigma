.class public Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;
.super Ljava/lang/Object;
.source "CoercionConfigs.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TARGET_TYPE_COUNT:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

.field protected final _defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

.field protected _perClassCoercions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;"
        }
    .end annotation
.end field

.field protected _perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/LogicalType;->values()[Lcom/fasterxml/jackson/databind/type/LogicalType;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->TARGET_TYPE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V
    .locals 0
    .param p1, "defaultAction"    # Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .param p2, "defaultCoercions"    # Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .param p3, "perTypeCoercions"    # [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            "[",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p4, "perClassCoercions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 59
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 61
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private static _copy(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 1
    .param p0, "src"    # Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _isScalarType(Lcom/fasterxml/jackson/databind/type/LogicalType;)Z
    .locals 1
    .param p1, "targetType"    # Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 326
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Float:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->Boolean:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .local v0, "newPerType":[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    goto :goto_1

    .line 77
    .end local v0    # "newPerType":[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    :cond_0
    array-length v0, v0

    .line 78
    .local v0, "size":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 79
    .local v1, "newPerType":[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 80
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_copy(Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 84
    .end local v1    # "newPerType":[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .end local v2    # "i":I
    .local v0, "newPerType":[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 85
    const/4 v1, 0x0

    .local v1, "newPerClass":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    goto :goto_3

    .line 87
    .end local v1    # "newPerClass":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .restart local v1    # "newPerClass":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;>;"
    goto :goto_2

    .line 92
    :cond_3
    :goto_3
    new-instance v2, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>(Lcom/fasterxml/jackson/databind/cfg/CoercionAction;Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;Ljava/util/Map;)V

    return-object v2
.end method

.method public defaultCoercions()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    return-object v0
.end method

.method public findCoercion(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "targetType"    # Lcom/fasterxml/jackson/databind/type/LogicalType;
    .param p4, "inputShape"    # Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .line 166
    .local p3, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 167
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 168
    .local v0, "cc":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v1

    .line 170
    .local v1, "act":Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    if-eqz v1, :cond_0

    .line 171
    return-object v1

    .line 177
    .end local v0    # "cc":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .end local v1    # "act":Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/LogicalType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 179
    .restart local v0    # "cc":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v1

    .line 181
    .restart local v1    # "act":Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    if-eqz v1, :cond_1

    .line 182
    return-object v1

    .line 188
    .end local v0    # "cc":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .end local v1    # "act":Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    .line 189
    .local v0, "act":Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    if-eqz v0, :cond_2

    .line 190
    return-object v0

    .line 194
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape:[I

    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 207
    :pswitch_0
    sget-object v1, Lcom/fasterxml/jackson/databind/type/LogicalType;->Enum:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, v1, :cond_5

    .line 208
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 209
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object v1

    .line 200
    :pswitch_1
    sget-object v1, Lcom/fasterxml/jackson/databind/type/LogicalType;->Integer:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, v1, :cond_5

    .line 202
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_FLOAT_AS_INT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    :goto_0
    return-object v1

    .line 197
    :pswitch_2
    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    :goto_1
    return-object v1

    .line 218
    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_isScalarType(Lcom/fasterxml/jackson/databind/type/LogicalType;)Z

    move-result v1

    .line 220
    .local v1, "baseScalar":Z
    if-eqz v1, :cond_6

    .line 222
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_COERCION_OF_SCALARS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 223
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object v2

    .line 227
    :cond_6
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    if-ne p4, v2, :cond_a

    .line 230
    if-nez v1, :cond_9

    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 232
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 237
    :cond_7
    sget-object v2, Lcom/fasterxml/jackson/databind/type/LogicalType;->OtherScalar:Lcom/fasterxml/jackson/databind/type/LogicalType;

    if-ne p2, v2, :cond_8

    .line 238
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->TryConvert:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object v2

    .line 241
    :cond_8
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->Fail:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object v2

    .line 233
    :cond_9
    :goto_3
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object v2

    .line 245
    :cond_a
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultAction:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "targetType"    # Lcom/fasterxml/jackson/databind/type/LogicalType;
    .param p4, "actionIfBlankNotAllowed"    # Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .line 268
    .local p3, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 269
    .local v0, "acceptBlankAsEmpty":Ljava/lang/Boolean;
    const/4 v1, 0x0

    .line 272
    .local v1, "action":Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 273
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 274
    .local v2, "cc":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v0

    .line 276
    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v1

    .line 281
    .end local v2    # "cc":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 282
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/LogicalType;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    .line 283
    .restart local v2    # "cc":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    if-eqz v2, :cond_2

    .line 284
    if-nez v0, :cond_1

    .line 285
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v0

    .line 287
    :cond_1
    if-nez v1, :cond_2

    .line 288
    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v1

    .line 294
    .end local v2    # "cc":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    :cond_2
    if-nez v0, :cond_3

    .line 295
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->getAcceptBlankAsEmpty()Ljava/lang/Boolean;

    move-result-object v0

    .line 297
    :cond_3
    if-nez v1, :cond_4

    .line 298
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_defaultCoercions:Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;->EmptyString:Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;->findAction(Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v1

    .line 302
    :cond_4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    return-object p4

    .line 306
    :cond_5
    if-eqz v1, :cond_6

    .line 307
    return-object v1

    .line 312
    :cond_6
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_isScalarType(Lcom/fasterxml/jackson/databind/type/LogicalType;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 313
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object v2

    .line 317
    :cond_7
    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 318
    sget-object v2, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->AsNull:Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    return-object v2

    .line 322
    :cond_8
    return-object p4
.end method

.method public findOrCreateCoercion(Lcom/fasterxml/jackson/databind/type/LogicalType;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 4
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/LogicalType;

    .line 120
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    if-nez v0, :cond_0

    .line 121
    sget v0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->TARGET_TYPE_COUNT:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/LogicalType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 124
    .local v0, "config":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    if-nez v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perTypeCoercions:[Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/LogicalType;->ordinal()I

    move-result v2

    new-instance v3, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    move-object v0, v3

    aput-object v3, v1, v2

    .line 127
    :cond_1
    return-object v0
.end method

.method public findOrCreateCoercion(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;"
        }
    .end annotation

    .line 131
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    .line 135
    .local v0, "config":Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;
    if-nez v0, :cond_1

    .line 136
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;-><init>()V

    move-object v0, v1

    .line 137
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->_perClassCoercions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    return-object v0
.end method
