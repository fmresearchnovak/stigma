.class public Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Base;
.super Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
.source "AccessorNamingStrategy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public findNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public modifyFieldName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "field"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .param p2, "name"    # Ljava/lang/String;

    .line 132
    return-object p2
.end method
