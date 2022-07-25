.class public Lcom/fasterxml/jackson/databind/jdk14/JDK14Util;
.super Ljava/lang/Object;
.source "JDK14Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;,
        Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;,
        Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRecordConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 1
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;"
        }
    .end annotation

    .line 32
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$CreatorLocator;->locate(Ljava/util/List;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static getRecordFieldNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 27
    .local p0, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->instance()Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->getRecordFieldNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
