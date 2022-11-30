.class public Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
.super Ljava/lang/Object;
.source "JsonIgnoreProperties.java"

# interfaces
.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue<",
        "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _allowGetters:Z

.field protected final _allowSetters:Z

.field protected final _ignoreUnknown:Z

.field protected final _ignored:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _merge:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 118
    new-instance v6, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;-><init>(Ljava/util/Set;ZZZZ)V

    sput-object v6, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;ZZZZ)V
    .locals 1
    .param p2, "ignoreUnknown"    # Z
    .param p3, "allowGetters"    # Z
    .param p4, "allowSetters"    # Z
    .param p5, "merge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 135
    .local p1, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    if-nez p1, :cond_0

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    goto :goto_0

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    .line 141
    :goto_0
    iput-boolean p2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    .line 142
    iput-boolean p3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    .line 143
    iput-boolean p4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    .line 144
    iput-boolean p5, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    .line 145
    return-void
.end method

.method private static _asSet([Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p0, "v"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 418
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 419
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 420
    .local v3, "str":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v3    # "str":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_1
    return-object v0

    .line 416
    .end local v0    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static _empty(Ljava/util/Set;ZZZZ)Z
    .locals 3
    .param p1, "ignoreUnknown"    # Z
    .param p2, "allowGetters"    # Z
    .param p3, "allowSetters"    # Z
    .param p4, "merge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZ)Z"
        }
    .end annotation

    .line 441
    .local p0, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    iget-boolean v1, v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-boolean v1, v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-ne p2, v1, :cond_2

    iget-boolean v1, v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-ne p3, v1, :cond_2

    iget-boolean v0, v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-ne p4, v0, :cond_2

    .line 445
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 447
    :cond_2
    return v2
.end method

.method private static _equals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Z
    .locals 2
    .param p0, "a"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .param p1, "b"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 405
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-object v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    .line 410
    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 405
    :goto_0
    return v0
.end method

.method private static _merge(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 427
    .local p0, "s1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "s2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    return-object p1

    .line 429
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    return-object p0

    .line 432
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 433
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 434
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 435
    return-object v0
.end method

.method public static construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 7
    .param p1, "ignoreUnknown"    # Z
    .param p2, "allowGetters"    # Z
    .param p3, "allowSetters"    # Z
    .param p4, "merge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZZ)",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation

    .line 169
    .local p0, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_empty(Ljava/util/Set;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;-><init>(Ljava/util/Set;ZZZZ)V

    return-object v0
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1

    .line 192
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object v0
.end method

.method public static forIgnoreUnknown(Z)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1
    .param p0, "state"    # Z

    .line 236
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withoutIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0
.end method

.method public static forIgnoredProperties(Ljava/util/Set;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation

    .line 225
    .local p0, "propNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withIgnored(Ljava/util/Set;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public static varargs forIgnoredProperties([Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 2
    .param p0, "propNames"    # [Ljava/lang/String;

    .line 229
    array-length v0, p0

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object v0

    .line 232
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_asSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withIgnored(Ljava/util/Set;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5
    .param p0, "src"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    .line 148
    if-nez p0, :cond_0

    .line 149
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object v0

    .line 151
    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_asSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 152
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->ignoreUnknown()Z

    move-result v1

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->allowGetters()Z

    move-result v2

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->allowSetters()Z

    move-result v3

    const/4 v4, 0x0

    .line 151
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 1
    .param p0, "base"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 206
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0
.end method

.method public static varargs mergeAll([Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5
    .param p0, "values"    # [Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "result":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 217
    .local v3, "curr":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-eqz v3, :cond_1

    .line 218
    if-nez v0, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 216
    .end local v3    # "curr":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 397
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 398
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 399
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 400
    invoke-static {p0, v2}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_equals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0
.end method

.method public findIgnoredForDeserialization()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    return-object v0
.end method

.method public findIgnoredForSerialization()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 343
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    return-object v0
.end method

.method public getAllowGetters()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    return v0
.end method

.method public getAllowSetters()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    return v0
.end method

.method public getIgnoreUnknown()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    return v0
.end method

.method public getIgnored()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    return-object v0
.end method

.method public getMerge()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, -0x7

    :goto_1
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_2

    :cond_2
    const/16 v1, -0xb

    :goto_2
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xb

    goto :goto_3

    :cond_3
    const/16 v1, -0xd

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_empty(Ljava/util/Set;ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    return-object v0

    .line 328
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 381
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    .line 382
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 381
    const-string v1, "JsonIgnoreProperties.Value(ignored=%s,ignoreUnknown=%s,allowGetters=%s,allowSetters=%s,merge=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueFor()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;",
            ">;"
        }
    .end annotation

    .line 320
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    return-object v0
.end method

.method public withAllowGetters()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 291
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    .line 292
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0
.end method

.method public withAllowSetters()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 300
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    .line 301
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0
.end method

.method public withIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 282
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    .line 283
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0
.end method

.method public withIgnored(Ljava/util/Set;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;"
        }
    .end annotation

    .line 270
    .local p1, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public varargs withIgnored([Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5
    .param p1, "ignored"    # [Ljava/lang/String;

    .line 274
    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_asSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public withMerge()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 309
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    const/4 v4, 0x1

    .line 310
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 6
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    .line 247
    if-eqz p1, :cond_9

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    if-ne p1, v0, :cond_0

    goto :goto_4

    .line 252
    :cond_0
    iget-boolean v0, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-nez v0, :cond_1

    .line 253
    return-object p1

    .line 255
    :cond_1
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_equals(Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    return-object p0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-object v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 261
    .local v0, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 262
    .local v1, "ignoreUnknown":Z
    :goto_1
    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-nez v4, :cond_6

    iget-boolean v4, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v4, 0x1

    .line 263
    .local v4, "allowGetters":Z
    :goto_3
    iget-boolean v5, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-nez v5, :cond_7

    iget-boolean v5, p1, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-eqz v5, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 266
    .local v2, "allowSetters":Z
    :cond_8
    invoke-static {v0, v1, v4, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v3

    return-object v3

    .line 248
    .end local v0    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "ignoreUnknown":Z
    .end local v2    # "allowSetters":Z
    .end local v4    # "allowGetters":Z
    :cond_9
    :goto_4
    return-object p0
.end method

.method public withoutAllowGetters()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 295
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    .line 296
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0
.end method

.method public withoutAllowSetters()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 304
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    .line 305
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0
.end method

.method public withoutIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 286
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    .line 287
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0
.end method

.method public withoutIgnored()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 278
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    const/4 v4, 0x0

    invoke-static {v4, v0, v1, v2, v3}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    return-object v0
.end method

.method public withoutMerge()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 5

    .line 314
    iget-boolean v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_merge:Z

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignored:Ljava/util/Set;

    iget-boolean v1, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_ignoreUnknown:Z

    iget-boolean v2, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowGetters:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->_allowSetters:Z

    const/4 v4, 0x0

    .line 315
    invoke-static {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->construct(Ljava/util/Set;ZZZZ)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 314
    :goto_0
    return-object v0
.end method
