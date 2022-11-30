.class public Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;
.super Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
.source "DefaultAccessorNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$RecordNaming;,
        Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$FirstCharBasedValidator;,
        Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;,
        Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;
    }
.end annotation


# instance fields
.field protected final _baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

.field protected final _config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _forClass:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

.field protected final _getterPrefix:Ljava/lang/String;

.field protected final _isGetterPrefix:Ljava/lang/String;

.field protected final _mutatorPrefix:Ljava/lang/String;

.field protected final _stdBeanNaming:Z


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;)V
    .locals 1
    .param p2, "forClass"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p3, "mutatorPrefix"    # Ljava/lang/String;
    .param p4, "getterPrefix"    # Ljava/lang/String;
    .param p5, "isGetterPrefix"    # Ljava/lang/String;
    .param p6, "baseNameValidator"    # Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;",
            ")V"
        }
    .end annotation

    .line 55
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 57
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_forClass:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .line 59
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_stdBeanNaming:Z

    .line 60
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_mutatorPrefix:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_getterPrefix:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isGetterPrefix:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    .line 64
    return-void
.end method


# virtual methods
.method protected _isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 221
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 223
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 230
    .local v1, "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "className":Ljava/lang/String;
    const-string v4, ".cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    const-string v4, "net.sf.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    const-string v4, "org.hibernate.repackage.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    const-string v4, "org.springframework.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 232
    :cond_1
    return v2

    .line 239
    .end local v1    # "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "className":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method protected _isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 244
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groovy.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public findNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isGetterPrefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isGetterPrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_stdBeanNaming:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, p2, v2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    nop

    .line 75
    invoke-virtual {p0, p2, v2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 79
    .end local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_mutatorPrefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_stdBeanNaming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_mutatorPrefix:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_mutatorPrefix:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p2, "name"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_getterPrefix:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    const-string v0, "getCallbacks"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    return-object v1

    .line 94
    :cond_0
    const-string v0, "getMetaClass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    return-object v1

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_stdBeanNaming:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_getterPrefix:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_getterPrefix:Ljava/lang/String;

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 104
    :cond_3
    return-object v1
.end method

.method protected legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 140
    .local v0, "end":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 141
    return-object v1

    .line 143
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 146
    .local v2, "c":C
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    if-eqz v3, :cond_1

    .line 147
    invoke-interface {v3, v2, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;->accept(CLjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    return-object v1

    .line 153
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 155
    .local v1, "d":C
    if-ne v2, v1, :cond_2

    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 159
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v0, p2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v4, p2, 0x1

    .line 162
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 163
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 164
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 165
    if-ne v2, v1, :cond_3

    .line 166
    invoke-virtual {v3, p1, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 171
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public modifyFieldName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "field"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
    .param p2, "name"    # Ljava/lang/String;

    .line 121
    return-object p2
.end method

.method protected stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 176
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 177
    .local v0, "end":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 178
    return-object v1

    .line 181
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 184
    .local v2, "c0":C
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;->_baseNameValidator:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;

    if-eqz v3, :cond_1

    .line 185
    invoke-interface {v3, v2, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$BaseNameValidator;->accept(CLjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    return-object v1

    .line 190
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 191
    .local v1, "c1":C
    if-ne v2, v1, :cond_2

    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 197
    :cond_2
    add-int/lit8 v3, p2, 0x1

    if-ge v3, v0, :cond_3

    .line 198
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 202
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v0, p2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, p1, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
