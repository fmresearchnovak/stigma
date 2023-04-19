.class public Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;
.super Ljava/lang/Object;
.source "DefaultAccessorNamingStrategy.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstCharBasedValidator"
.end annotation


# instance fields
.field private final _allowLowerCaseFirstChar:Z

.field private final _allowNonLetterFirstChar:Z


# direct methods
.method protected constructor <init>(ZZ)V
    .locals 0
    .param p1, "allowLowerCaseFirstChar"    # Z
    .param p2, "allowNonLetterFirstChar"    # Z

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;->_allowLowerCaseFirstChar:Z

    .line 468
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;->_allowNonLetterFirstChar:Z

    .line 469
    return-void
.end method

.method public static forFirstNameRule(ZZ)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;
    .locals 1
    .param p0, "allowLowerCaseFirstChar"    # Z
    .param p1, "allowNonLetterFirstChar"    # Z

    .line 487
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 488
    const/4 v0, 0x0

    return-object v0

    .line 490
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;-><init>(ZZ)V

    return-object v0
.end method


# virtual methods
.method public accept(CLjava/lang/String;I)Z
    .locals 1
    .param p1, "firstChar"    # C
    .param p2, "basename"    # Ljava/lang/String;
    .param p3, "offset"    # I

    .line 498
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;->_allowLowerCaseFirstChar:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 502
    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;->_allowNonLetterFirstChar:Z

    return v0
.end method
