.class public final Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
.super Ljava/lang/Object;
.source "CreatorCandidate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;
    }
.end annotation


# instance fields
.field protected final _creator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected final _intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _paramCount:I

.field protected final _params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;I)V
    .locals 0
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "ct"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p3, "params"    # [Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;
    .param p4, "count"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 20
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_creator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 21
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    .line 22
    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_paramCount:I

    .line 23
    return-void
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .locals 7
    .param p0, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p1, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p2, "propDefs"    # [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 28
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v0

    .line 29
    .local v0, "pcount":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    .line 30
    .local v1, "params":[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 31
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v3

    .line 32
    .local v3, "annParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v4

    .line 33
    .local v4, "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    if-nez p2, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    aget-object v6, p2, v2

    :goto_1
    invoke-direct {v5, v3, v6, v4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V

    aput-object v5, v1, v2

    .line 30
    .end local v3    # "annParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v4    # "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;I)V

    return-object v2
.end method


# virtual methods
.method public creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_creator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public explicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2
    .param p1, "i"    # I

    .line 53
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 54
    .local v0, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findImplicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2
    .param p1, "i"    # I

    .line 63
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findOnlyParamWithoutInjection()I
    .locals 3

    .line 77
    const/4 v0, -0x1

    .line 78
    .local v0, "missing":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_paramCount:I

    if-ge v1, v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->injection:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    if-nez v2, :cond_1

    .line 80
    if-ltz v0, :cond_0

    .line 81
    const/4 v2, -0x1

    return v2

    .line 83
    :cond_0
    move v0, v1

    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 1
    .param p1, "i"    # I

    .line 40
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->injection:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    return-object v0
.end method

.method public paramCount()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_paramCount:I

    return v0
.end method

.method public paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2
    .param p1, "i"    # I

    .line 45
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 46
    .local v0, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    return-object v1

    .line 49
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 1
    .param p1, "i"    # I

    .line 41
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return-object v0
.end method

.method public propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .locals 1
    .param p1, "i"    # I

    .line 42
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_params:[Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->_creator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
