.class public final Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;
.super Ljava/lang/Object;
.source "CreatorCandidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Param"
.end annotation


# instance fields
.field public final annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

.field public final injection:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

.field public final propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p2, "pd"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p3, "i"    # Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 103
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 104
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->injection:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    .line 105
    return-void
.end method


# virtual methods
.method public fullName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    return-object v0
.end method

.method public hasFullName()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate$Param;->propDef:Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 119
    .local v0, "n":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v1

    return v1
.end method
