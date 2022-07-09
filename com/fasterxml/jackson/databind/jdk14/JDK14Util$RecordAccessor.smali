.class Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;
.super Ljava/lang/Object;
.source "JDK14Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jdk14/JDK14Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecordAccessor"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

.field private static final PROBLEM:Ljava/lang/RuntimeException;


# instance fields
.field private final RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

.field private final RECORD_COMPONENT_GET_TYPE:Ljava/lang/reflect/Method;

.field private final RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "prob":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 48
    .local v1, "inst":Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;
    :try_start_0
    new-instance v2, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v0, v2

    .line 52
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    sput-object v1, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->INSTANCE:Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

    .line 53
    sput-object v0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->PROBLEM:Ljava/lang/RuntimeException;

    .line 54
    .end local v0    # "prob":Ljava/lang/RuntimeException;
    .end local v1    # "inst":Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;
    return-void
.end method

.method private constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Ljava/lang/Class;

    const-string v2, "getRecordComponents"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    .line 59
    const-string v1, "java.lang.reflect.RecordComponent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getName"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

    .line 61
    const-string v2, "getType"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_COMPONENT_GET_TYPE:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 67
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 63
    const-string v0, "Failed to access Methods needed to support `java.lang.Record`: (%s) %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static instance()Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;
    .locals 1

    .line 70
    sget-object v0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->PROBLEM:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->INSTANCE:Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;

    return-object v0

    .line 71
    :cond_0
    throw v0
.end method


# virtual methods
.method public getRecordFieldNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 78
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->recordComponents(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "components":[Ljava/lang/Object;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 80
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 82
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

    aget-object v5, v0, v2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 84
    const-string v3, "Failed to access name of field #%d (of %d) of Record type %s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 89
    .end local v2    # "i":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public getRecordFields(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 94
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->recordComponents(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "components":[Ljava/lang/Object;
    array-length v1, v0

    new-array v1, v1, [Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;

    .line 96
    .local v1, "results":[Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 99
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

    aget-object v8, v0, v2

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .local v7, "name":Ljava/lang/String;
    nop

    .line 107
    :try_start_1
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_COMPONENT_GET_TYPE:Ljava/lang/reflect/Method;

    aget-object v9, v0, v2

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v8

    .line 112
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 113
    new-instance v4, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;

    invoke-direct {v4, v3, v7}, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RawTypeName;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 96
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .restart local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 109
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v6

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 109
    const-string v3, "Failed to access type of field #%d (of %d) of Record type %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 100
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 101
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v6

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 101
    const-string v3, "Failed to access name of field #%d (of %d) of Record type %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 115
    .end local v2    # "i":I
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method protected recordComponents(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 121
    .local p1, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jdk14/JDK14Util$RecordAccessor;->RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to access RecordComponents of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->nameOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
