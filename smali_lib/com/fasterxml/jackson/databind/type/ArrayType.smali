.class public final Lcom/fasterxml/jackson/databind/type/ArrayType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "ArrayType.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _componentType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _emptyArray:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9
    .param p1, "componentType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "emptyInstance"    # Ljava/lang/Object;
    .param p4, "valueHandler"    # Ljava/lang/Object;
    .param p5, "typeHandler"    # Ljava/lang/Object;
    .param p6, "asStatic"    # Z

    .line 33
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v5

    .line 33
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 36
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 37
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private _reportUnsupported()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot narrow or widen array types"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 1
    .param p0, "componentType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p1, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 9
    .param p0, "componentType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p1, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p2, "valueHandler"    # Ljava/lang/Object;
    .param p3, "typeHandler"    # Ljava/lang/Object;

    .line 47
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "emptyInstance":Ljava/lang/Object;
    new-instance v1, Lcom/fasterxml/jackson/databind/type/ArrayType;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->_reportUnsupported()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 229
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 231
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 233
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 234
    .local v0, "other":Lcom/fasterxml/jackson/databind/type/ArrayType;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic getContentType()Lcom/fasterxml/jackson/core/type/ResolvedType;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getContentTypeHandler()Ljava/lang/Object;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentValueHandler()Ljava/lang/Object;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyArray()[Ljava/lang/Object;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 197
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 191
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hasGenericTypes()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v0

    return v0
.end method

.method public hasHandlers()Z
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/fasterxml/jackson/databind/type/TypeBase;->hasHandlers()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasHandlers()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isAbstract()Z
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public isArrayType()Z
    .locals 1

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public isConcrete()Z
    .locals 1

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public isContainerType()Z
    .locals 1

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 124
    .local p1, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[array type, component type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 9
    .param p1, "contentType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 53
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "emptyInstance":Ljava/lang/Object;
    new-instance v1, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    move-object v2, v1

    move-object v3, p1

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v1
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 8
    .param p1, "h"    # Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 71
    return-object p0

    .line 73
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 8
    .param p1, "h"    # Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 88
    return-object p0

    .line 90
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 8

    .line 96
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    if-eqz v0, :cond_0

    .line 97
    return-object p0

    .line 99
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 8
    .param p1, "h"    # Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 62
    return-object p0

    .line 64
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/ArrayType;
    .locals 8
    .param p1, "h"    # Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 80
    return-object p0

    .line 82
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/ArrayType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_componentType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/type/ArrayType;->_asStatic:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/ArrayType;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method
