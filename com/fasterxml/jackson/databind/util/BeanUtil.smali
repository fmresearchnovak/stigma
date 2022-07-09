.class public Lcom/fasterxml/jackson/databind/util/BeanUtil;
.super Ljava/lang/Object;
.source "BeanUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUnsupportedType(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;
    .locals 6
    .param p0, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 298
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isJava8TimeClass(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 304
    const/16 v1, 0x2e

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 305
    return-object v2

    .line 307
    :cond_0
    const-string v1, "Java 8 date/time"

    .line 308
    .local v1, "typeName":Ljava/lang/String;
    const-string v2, "com.fasterxml.jackson.datatype:jackson-datatype-jsr310"

    .local v2, "moduleName":Ljava/lang/String;
    goto :goto_0

    .line 309
    .end local v1    # "typeName":Ljava/lang/String;
    .end local v2    # "moduleName":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isJodaTimeClass(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    const-string v1, "Joda date/time"

    .line 311
    .restart local v1    # "typeName":Ljava/lang/String;
    const-string v2, "com.fasterxml.jackson.datatype:jackson-datatype-joda"

    .line 315
    .restart local v2    # "moduleName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    .line 316
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 315
    const-string v4, "%s type %s not supported by default: add Module \"%s\" to enable handling"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 313
    .end local v1    # "typeName":Ljava/lang/String;
    .end local v2    # "moduleName":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public static getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 5
    .param p0, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 139
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 143
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->primitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 144
    .local v1, "prim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 145
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_2

    .line 151
    const-string v2, ""

    return-object v2

    .line 155
    :cond_2
    const-class v2, Ljava/util/Date;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 156
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 158
    :cond_3
    const-class v2, Ljava/util/Calendar;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 160
    .local v2, "c":Ljava/util/Calendar;
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    return-object v2

    .line 163
    .end local v2    # "c":Ljava/util/Calendar;
    :cond_4
    const/4 v2, 0x0

    return-object v2

    .line 148
    :cond_5
    :goto_0
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object v2
.end method

.method protected static isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 5
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 182
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 190
    .local v1, "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "className":Ljava/lang/String;
    const-string v4, ".cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    const-string v4, "net.sf.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    const-string v4, "org.hibernate.repackage.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    const-string v4, "org.springframework.cglib"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 192
    :cond_1
    return v2

    .line 199
    .end local v1    # "compType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "className":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method protected static isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 206
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groovy.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJava8TimeClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 323
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isJava8TimeClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isJava8TimeClass(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 327
    const-string v0, "java.time."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isJodaTimeClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 334
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isJodaTimeClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isJodaTimeClass(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .line 338
    const-string v0, "org.joda.time."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "basename"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 225
    .local v0, "end":I
    if-ne v0, p1, :cond_0

    .line 226
    const/4 v1, 0x0

    return-object v1

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 230
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 232
    .local v2, "d":C
    if-ne v1, v2, :cond_1

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 236
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v0, p1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v4, p1, 0x1

    .line 239
    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 240
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 241
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 242
    if-ne v1, v2, :cond_2

    .line 243
    invoke-virtual {v3, p0, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 244
    goto :goto_1

    .line 246
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 248
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static okNameForGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "stdNaming"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "name":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 33
    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 35
    :cond_0
    return-object v1
.end method

.method public static okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    const-string v0, "is"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 84
    :cond_0
    const/4 v1, 0x2

    if-eqz p2, :cond_1

    .line 85
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    nop

    .line 86
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 89
    .end local v0    # "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 113
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stdNaming"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 55
    const-string v0, "getCallbacks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isCglibGetCallbacks(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    return-object v1

    .line 59
    :cond_0
    const-string v0, "getMetaClass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isGroovyMetaClassGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    return-object v1

    .line 65
    :cond_1
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 66
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    nop

    .line 67
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->legacyManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 69
    :cond_3
    return-object v1
.end method

.method public static okNameForSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Ljava/lang/String;
    .locals 1
    .param p0, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p1, "stdNaming"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    const-string v0, "set"

    invoke-static {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stdManglePropertyName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "basename"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 259
    .local v0, "end":I
    if-ne v0, p1, :cond_0

    .line 260
    const/4 v1, 0x0

    return-object v1

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 264
    .local v1, "c0":C
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 265
    .local v2, "c1":C
    if-ne v1, v2, :cond_1

    .line 266
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 271
    :cond_1
    add-int/lit8 v3, p1, 0x1

    if-ge v3, v0, :cond_2

    .line 272
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 276
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v4, v0, p1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 277
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, p0, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
