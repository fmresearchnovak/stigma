.class public Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
.super Ljava/lang/Object;
.source "ConfigOverrides.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

.field protected _defaultLeniency:Ljava/lang/Boolean;

.field protected _defaultMergeable:Ljava/lang/Boolean;

.field protected _defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

.field protected _overrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;"
        }
    .end annotation
.end field

.field protected _visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 64
    nop

    .line 66
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v2

    .line 67
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonSetter$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    move-result-object v3

    .line 68
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->defaultInstance()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v4

    .line 64
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;-><init>(Ljava/util/Map;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonSetter$Value;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 71
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonSetter$Value;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Ljava/lang/Boolean;)V
    .locals 7
    .param p2, "defIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .param p3, "defSetter"    # Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .param p5, "defMergeable"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            "Lcom/fasterxml/jackson/annotation/JsonSetter$Value;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    .local p1, "overrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    .local p4, "defVisibility":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;-><init>(Ljava/util/Map;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonSetter$Value;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonSetter$Value;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "defIncl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .param p3, "defSetter"    # Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .param p5, "defMergeable"    # Ljava/lang/Boolean;
    .param p6, "defLeniency"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            "Lcom/fasterxml/jackson/annotation/JsonSetter$Value;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 79
    .local p1, "overrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    .local p4, "defVisibility":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    .line 81
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 82
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    .line 83
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 84
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultMergeable:Ljava/lang/Boolean;

    .line 85
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    .line 86
    return-void
.end method


# virtual methods
.method protected _newMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .locals 12

    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .local v0, "newOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    goto :goto_1

    .line 104
    .end local v0    # "newOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_newMap()Ljava/util/Map;

    move-result-object v0

    .line 105
    .restart local v0    # "newOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultMergeable:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    move-object v5, v1

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;-><init>(Ljava/util/Map;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;Lcom/fasterxml/jackson/annotation/JsonSetter$Value;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method public findFormatDefaults(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation

    .line 149
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    .line 151
    .local v0, "override":Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getFormat()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 153
    .local v1, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLenient()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withLenient(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v2

    return-object v2

    .line 157
    :cond_0
    return-object v1

    .line 161
    .end local v0    # "override":Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    .end local v1    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 162
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    return-object v0

    .line 164
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->forLeniency(Z)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    return-object v0
.end method

.method public findOrCreateOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;"
        }
    .end annotation

    .line 128
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_newMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    .line 132
    .local v0, "override":Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    if-nez v0, :cond_1

    .line 133
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;-><init>()V

    move-object v0, v1

    .line 134
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    return-object v0
.end method

.method public findOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;"
        }
    .end annotation

    .line 121
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    return-object v0
.end method

.method public getDefaultInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    return-object v0
.end method

.method public getDefaultLeniency()Ljava/lang/Boolean;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDefaultMergeable()Ljava/lang/Boolean;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultMergeable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDefaultSetterInfo()Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    return-object v0
.end method

.method public getDefaultVisibility()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    return-object v0
.end method

.method public setDefaultInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 203
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 204
    return-void
.end method

.method public setDefaultLeniency(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Boolean;

    .line 224
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultLeniency:Ljava/lang/Boolean;

    .line 225
    return-void
.end method

.method public setDefaultMergeable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Boolean;

    .line 217
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultMergeable:Ljava/lang/Boolean;

    .line 218
    return-void
.end method

.method public setDefaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)V
    .locals 0
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    .line 210
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_defaultSetterInfo:Lcom/fasterxml/jackson/annotation/JsonSetter$Value;

    .line 211
    return-void
.end method

.method public setDefaultVisibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)V"
        }
    .end annotation

    .line 231
    .local p1, "v":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 232
    return-void
.end method
