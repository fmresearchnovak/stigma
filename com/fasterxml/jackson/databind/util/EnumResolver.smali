.class public Lcom/fasterxml/jackson/databind/util/EnumResolver;
.super Ljava/lang/Object;
.source "EnumResolver.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _defaultValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final _enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _enumsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final _isFromIntValue:Z

.field protected final _isIgnoreCase:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;[",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    .local p4, "defaultValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    .line 247
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;Z)V
    .locals 7
    .param p5, "isIgnoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;[",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Ljava/lang/Enum<",
            "*>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    .local p4, "defaultValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V
    .locals 0
    .param p5, "isIgnoreCase"    # Z
    .param p6, "isFromIntValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;[",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Ljava/lang/Enum<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 51
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    .local p4, "defaultValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    .line 53
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    .line 54
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    .line 55
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_defaultValue:Ljava/lang/Enum;

    .line 56
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isIgnoreCase:Z

    .line 57
    iput-boolean p6, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isFromIntValue:Z

    .line 58
    return-void
.end method

.method protected static _constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 15
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "isIgnoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .line 88
    .local p0, "enumCls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 89
    .local v8, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v9

    .line 90
    .local v9, "enumConstants":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    array-length v1, v9

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8, v9, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "names":[Ljava/lang/String;
    array-length v1, v10

    new-array v11, v1, [[Ljava/lang/String;

    .line 92
    .local v11, "allAliases":[[Ljava/lang/String;
    invoke-virtual {v0, v8, v9, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumAliases(Ljava/lang/Class;[Ljava/lang/Enum;[[Ljava/lang/String;)V

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v12, v1

    .line 94
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v9

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 95
    aget-object v3, v9, v1

    .line 96
    .local v3, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    aget-object v4, v10, v1

    .line 97
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 98
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 100
    :cond_0
    invoke-virtual {v12, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    aget-object v5, v11, v1

    .line 102
    .local v5, "aliases":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 103
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v13, v5, v7

    .line 106
    .local v13, "alias":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 107
    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v13    # "alias":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 94
    .end local v3    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "aliases":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    new-instance v13, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 113
    invoke-static {v0, v8}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumDefault(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, v13

    move-object v2, v8

    move-object v3, v9

    move-object v4, v12

    move/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    .line 112
    return-object v13
.end method

.method protected static _constructUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 11
    .param p1, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p2, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p3, "isIgnoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .line 180
    .local p0, "enumCls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 181
    .local v7, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v8

    .line 182
    .local v8, "enumConstants":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 184
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    array-length v0, v8

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 185
    aget-object v1, v8, v0

    .line 187
    .local v1, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 188
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    nop

    .line 194
    .end local v1    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_0

    .line 191
    .restart local v1    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to access @JsonValue of Enum value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    .end local v0    # "i":I
    .end local v1    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v10, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 196
    invoke-static {p2, v7}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumDefault(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v4

    .line 198
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isIntType(Ljava/lang/Class;)Z

    move-result v6

    move-object v0, v10

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    .line 195
    return-object v10
.end method

.method protected static _constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 12
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "isIgnoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .line 135
    .local p0, "enumCls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    .line 136
    .local v7, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v8

    .line 137
    .local v8, "enumConstants":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    .line 138
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    array-length v0, v8

    new-array v10, v0, [[Ljava/lang/String;

    .line 139
    .local v10, "allAliases":[[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1, v7, v8, v10}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumAliases(Ljava/lang/Class;[Ljava/lang/Enum;[[Ljava/lang/String;)V

    .line 144
    :cond_0
    array-length v0, v8

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 145
    aget-object v1, v8, v0

    .line 146
    .local v1, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    aget-object v2, v10, v0

    .line 148
    .local v2, "aliases":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 149
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 152
    .local v5, "alias":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 153
    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v5    # "alias":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 157
    .end local v1    # "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "aliases":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_3
    new-instance v11, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 159
    invoke-static {p1, v7}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumDefault(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;ZZ)V

    .line 158
    return-object v11
.end method

.method protected static _enumClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .line 208
    .local p0, "enumCls0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object p0
.end method

.method protected static _enumConstants(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 212
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 213
    .local v0, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-eqz v0, :cond_0

    .line 216
    return-object v0

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum constants for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static _enumDefault(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .param p0, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 220
    .local p1, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected static _isIntType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 224
    .local p0, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->wrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 227
    :cond_0
    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_2

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static constructFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .line 78
    .local p1, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 79
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 78
    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUnsafe(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUnsafeUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .param p1, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p2, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUnsafeUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUsingMethod(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .line 170
    .local p1, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 171
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 170
    invoke-static {p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .param p1, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p2, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUsingToString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .line 125
    .local p1, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 126
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 125
    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUsingToString(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _findEnumCaseInsensitive(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0

    .line 333
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    :cond_0
    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public constructLookup()Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->construct(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v0

    return-object v0
.end method

.method public findEnum(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 319
    .local v0, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez v0, :cond_0

    .line 320
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isIgnoreCase:Z

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_findEnumCaseInsensitive(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    return-object v1

    .line 324
    :cond_0
    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_defaultValue:Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnum(I)Ljava/lang/Enum;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 338
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 339
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnumIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnums()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .local v0, "enums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Enum<*>;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 355
    .local v4, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v4    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-object v0
.end method

.method public getRawEnums()[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    return-object v0
.end method

.method public isFromIntValue()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_isFromIntValue:Z

    return v0
.end method

.method public lastValidIndex()I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
