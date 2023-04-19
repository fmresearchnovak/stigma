.class public abstract Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$NamingBase;
.super Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.source "PropertyNamingStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/PropertyNamingStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NamingBase"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public nameForConstructorParameter(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "ctorParam"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$NamingBase;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nameForField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "field"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 107
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$NamingBase;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nameForGetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "method"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 112
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$NamingBase;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nameForSetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "method"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "defaultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 117
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategies$NamingBase;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract translate(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected translateLowerCaseWithSeparator(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .line 133
    if-nez p1, :cond_0

    .line 134
    return-object p1

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 137
    .local v0, "length":I
    if-nez v0, :cond_1

    .line 138
    return-object p1

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 142
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 143
    .local v2, "upperCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 144
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 145
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 147
    .local v5, "lc":C
    if-ne v5, v4, :cond_3

    .line 150
    const/4 v6, 0x1

    if-le v2, v6, :cond_2

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v1, v7, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 154
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 157
    :cond_3
    if-nez v2, :cond_4

    if-lez v3, :cond_4

    .line 158
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 162
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .end local v4    # "ch":C
    .end local v5    # "lc":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
