.class public Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
.super Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;
.source "DefaultAccessorNamingStrategy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

.field protected final _getterPrefix:Ljava/lang/String;

.field protected final _isGetterPrefix:Ljava/lang/String;

.field protected final _setterPrefix:Ljava/lang/String;

.field protected final _withPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 286
    const-string v1, "set"

    const-string v2, "with"

    const-string v3, "get"

    const-string v4, "is"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V

    .line 288
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .param p2, "vld"    # Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    .line 300
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_setterPrefix:Ljava/lang/String;

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_withPrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_getterPrefix:Ljava/lang/String;

    iget-object v4, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_isGetterPrefix:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V

    .line 302
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .param p2, "setterPrefix"    # Ljava/lang/String;
    .param p3, "withPrefix"    # Ljava/lang/String;
    .param p4, "getterPrefix"    # Ljava/lang/String;
    .param p5, "isGetterPrefix"    # Ljava/lang/String;

    .line 294
    iget-object v5, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V

    .line 296
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V
    .locals 0
    .param p1, "setterPrefix"    # Ljava/lang/String;
    .param p2, "withPrefix"    # Ljava/lang/String;
    .param p3, "getterPrefix"    # Ljava/lang/String;
    .param p4, "isGetterPrefix"    # Ljava/lang/String;
    .param p5, "vld"    # Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    .line 307
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_setterPrefix:Ljava/lang/String;

    .line 309
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_withPrefix:Ljava/lang/String;

    .line 310
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_getterPrefix:Ljava/lang/String;

    .line 311
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_isGetterPrefix:Ljava/lang/String;

    .line 312
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    .line 313
    return-void
.end method


# virtual methods
.method public forBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
    .locals 10
    .param p2, "builderClass"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p3, "valueTypeDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;"
        }
    .end annotation

    .line 437
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 438
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    move-result-object v1

    .line 439
    .local v1, "builderConfig":Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    :goto_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_withPrefix:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;->withPrefix:Ljava/lang/String;

    :goto_2
    move-object v6, v2

    .line 440
    .local v6, "mutatorPrefix":Ljava/lang/String;
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_getterPrefix:Ljava/lang/String;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_isGetterPrefix:Ljava/lang/String;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V

    return-object v2
.end method

.method public forPOJO(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
    .locals 8
    .param p2, "targetClass"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;"
        }
    .end annotation

    .line 428
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_setterPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_getterPrefix:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_isGetterPrefix:Ljava/lang/String;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V

    return-object v7
.end method

.method public forRecord(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
    .locals 1
    .param p2, "recordClass"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;"
        }
    .end annotation

    .line 448
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$RecordNaming;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$RecordNaming;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)V

    return-object v0
.end method

.method public withBaseNameValidator(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 1
    .param p1, "vld"    # Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    .line 422
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V

    return-object v0
.end method

.method public withBuilderPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;

    .line 343
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_setterPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_getterPrefix:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_isGetterPrefix:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withFirstCharAcceptance(ZZ)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 1
    .param p1, "allowLowerCaseFirstChar"    # Z
    .param p2, "allowNonLetterFirstChar"    # Z

    .line 407
    nop

    .line 408
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;->forFirstNameRule(ZZ)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    move-result-object v0

    .line 407
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->withBaseNameValidator(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    move-result-object v0

    return-object v0
.end method

.method public withGetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;

    .line 359
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_setterPrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_withPrefix:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_isGetterPrefix:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withIsGetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;

    .line 375
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_setterPrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_withPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_getterPrefix:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withSetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;

    .line 327
    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_withPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_getterPrefix:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->_isGetterPrefix:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
