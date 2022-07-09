.class public Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Empty;
.super Ljava/lang/Object;
.source "TypeResolutionContext.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Empty"
.end annotation


# instance fields
.field private final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 0
    .param p1, "tf"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Empty;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 57
    return-void
.end method


# virtual methods
.method public resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .line 61
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Empty;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
