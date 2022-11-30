.class public final Lcom/fasterxml/jackson/databind/SerializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "SerializationConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<",
        "Lcom/fasterxml/jackson/databind/SerializationFeature;",
        "Lcom/fasterxml/jackson/databind/SerializationConfig;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field private static final SER_FEATURE_DEFAULTS:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field protected final _filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

.field protected final _formatWriteFeatures:I

.field protected final _formatWriteFeaturesToChange:I

.field protected final _generatorFeatures:I

.field protected final _generatorFeaturesToChange:I

.field protected final _serFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 41
    const-class v0, Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->SER_FEATURE_DEFAULTS:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "mapperFeatures"    # J
    .param p4, "serFeatures"    # I
    .param p5, "generatorFeatures"    # I
    .param p6, "generatorFeatureMask"    # I
    .param p7, "formatFeatures"    # I
    .param p8, "formatFeaturesMask"    # I

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;J)V

    .line 184
    iput p4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 185
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 186
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 187
    iput p5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 188
    iput p6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 189
    iput p7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 190
    iput p8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 191
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/PrettyPrinter;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "defaultPP"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 276
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 277
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 278
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 279
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 280
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 281
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 282
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 283
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 284
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "rootName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 232
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 233
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 234
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 235
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 236
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 237
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 238
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 239
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 196
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 197
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 198
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 199
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 200
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 201
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 202
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 203
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    .line 247
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 248
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 249
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 250
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 251
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 252
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 253
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 254
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    .line 262
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 263
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 264
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 265
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 266
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 267
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 268
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 269
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 6
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p3, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .param p4, "configOverrides"    # Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 157
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    .line 169
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 170
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 171
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 172
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 173
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 174
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 175
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 176
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .param p3, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p4, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .param p5, "configOverrides"    # Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    .line 137
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 138
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 139
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 140
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 141
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 142
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 143
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 144
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 145
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "filters"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 207
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 208
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 209
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 210
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 211
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 212
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 213
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 214
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 215
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 219
    .local p2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V

    .line 220
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 221
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 222
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 223
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 224
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 225
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 226
    iget v0, p1, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .param p3, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p4, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .param p5, "configOverrides"    # Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    .line 118
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 119
    sget v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->SER_FEATURE_DEFAULTS:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 121
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationConfig;->DEFAULT_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 123
    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 124
    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 125
    iput v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 126
    return-void
.end method

.method private varargs _withJsonWriteFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 16
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .line 623
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 624
    .local v0, "parserSet":I
    iget v1, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 625
    .local v1, "parserMask":I
    iget v2, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 626
    .local v2, "newSet":I
    iget v3, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 627
    .local v3, "newMask":I
    array-length v4, v10

    const/4 v5, 0x0

    move v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    .end local v0    # "parserSet":I
    .end local v1    # "parserMask":I
    .end local v2    # "newSet":I
    .end local v3    # "newMask":I
    .local v11, "parserSet":I
    .local v12, "parserMask":I
    .local v13, "newSet":I
    .local v14, "newMask":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v0, v10, v5

    .line 628
    .local v0, "f":Lcom/fasterxml/jackson/core/FormatFeature;
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    .line 629
    .local v1, "mask":I
    or-int/2addr v13, v1

    .line 630
    or-int/2addr v14, v1

    .line 632
    instance-of v2, v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v2, :cond_0

    .line 633
    move-object v2, v0

    check-cast v2, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v2

    .line 634
    .local v2, "oldF":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v3

    .line 636
    .local v3, "pmask":I
    or-int v6, v11, v3

    .line 637
    .end local v11    # "parserSet":I
    .local v6, "parserSet":I
    or-int v7, v12, v3

    move v11, v6

    move v12, v7

    .line 627
    .end local v0    # "f":Lcom/fasterxml/jackson/core/FormatFeature;
    .end local v1    # "mask":I
    .end local v2    # "oldF":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .end local v3    # "pmask":I
    .end local v6    # "parserSet":I
    .restart local v11    # "parserSet":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 641
    :cond_1
    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    if-ne v0, v13, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    if-ne v0, v14, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v0, v11, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v0, v12, :cond_2

    move-object v15, v9

    goto :goto_1

    :cond_2
    new-instance v15, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v2, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v4, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v15
.end method

.method private varargs _withoutJsonWriteFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 16
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .line 650
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 651
    .local v0, "parserSet":I
    iget v1, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 652
    .local v1, "parserMask":I
    iget v2, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 653
    .local v2, "newSet":I
    iget v3, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 654
    .local v3, "newMask":I
    array-length v4, v10

    const/4 v5, 0x0

    move v11, v0

    move v12, v1

    move v13, v2

    move v14, v3

    .end local v0    # "parserSet":I
    .end local v1    # "parserMask":I
    .end local v2    # "newSet":I
    .end local v3    # "newMask":I
    .local v11, "parserSet":I
    .local v12, "parserMask":I
    .local v13, "newSet":I
    .local v14, "newMask":I
    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v0, v10, v5

    .line 655
    .local v0, "f":Lcom/fasterxml/jackson/core/FormatFeature;
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    .line 656
    .local v1, "mask":I
    not-int v2, v1

    and-int/2addr v13, v2

    .line 657
    or-int/2addr v14, v1

    .line 659
    instance-of v2, v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v2, :cond_0

    .line 660
    move-object v2, v0

    check-cast v2, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v2

    .line 661
    .local v2, "oldF":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    if-eqz v2, :cond_0

    .line 662
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v3

    .line 663
    .local v3, "pmask":I
    not-int v6, v3

    and-int/2addr v6, v11

    .line 664
    .end local v11    # "parserSet":I
    .local v6, "parserSet":I
    or-int v7, v12, v3

    move v11, v6

    move v12, v7

    .line 654
    .end local v0    # "f":Lcom/fasterxml/jackson/core/FormatFeature;
    .end local v1    # "mask":I
    .end local v2    # "oldF":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .end local v3    # "pmask":I
    .end local v6    # "parserSet":I
    .restart local v11    # "parserSet":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 668
    :cond_1
    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    if-ne v0, v13, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    if-ne v0, v14, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v0, v11, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v0, v12, :cond_2

    move-object v15, v9

    goto :goto_1

    :cond_2
    new-instance v15, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v2, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v4, v9, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v15
.end method


# virtual methods
.method protected final _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "newBase"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 294
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method protected final _withMapperFeatures(J)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 10
    .param p1, "mapperFeatures"    # J

    .line 299
    new-instance v9, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    return-object v9
.end method

.method protected bridge synthetic _withMapperFeatures(J)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withMapperFeatures(J)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public constructDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 714
    .local v0, "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    instance-of v1, v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    if-eqz v1, :cond_0

    .line 715
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/core/util/Instantiatable;

    invoke-interface {v1}, Lcom/fasterxml/jackson/core/util/Instantiatable;->createInstance()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 717
    :cond_0
    return-object v0
.end method

.method public getDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    return-object v0
.end method

.method public getFilterProvider()Lcom/fasterxml/jackson/databind/ser/FilterProvider;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    return-object v0
.end method

.method public final getSerializationFeatures()I
    .locals 1

    .line 824
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    return v0
.end method

.method public getSerializationInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 776
    .local v0, "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final hasSerializationFeatures(I)Z
    .locals 1
    .param p1, "featureMask"    # I

    .line 820
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 4
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 735
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->enabledIn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v0

    .line 739
    .local v0, "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 745
    .end local v0    # "pp":Lcom/fasterxml/jackson/core/PrettyPrinter;
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/databind/SerializationFeature;

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->enabledIn(I)Z

    move-result v0

    .line 747
    .local v0, "useBigDec":Z
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 748
    .local v1, "mask":I
    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    .line 749
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 751
    .local v2, "newFlags":I
    if-eqz v0, :cond_2

    .line 752
    sget-object v3, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->WRITE_BIGDECIMAL_AS_PLAIN:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v3

    .line 753
    .local v3, "f":I
    or-int/2addr v2, v3

    .line 754
    or-int/2addr v1, v3

    .line 756
    .end local v3    # "f":I
    :cond_2
    invoke-virtual {p1, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->overrideStdFeatures(II)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 758
    .end local v2    # "newFlags":I
    :cond_3
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    if-eqz v2, :cond_4

    .line 759
    iget v3, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    invoke-virtual {p1, v3, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->overrideFormatFeatures(II)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 761
    :cond_4
    return-void
.end method

.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 862
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forSerialization(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z
    .locals 3
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .param p2, "factory"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .line 806
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v0

    .line 807
    .local v0, "mask":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 808
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 810
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v1

    return v1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 795
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public useRootWrapping()Z
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 791
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public with(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/FormatFeature;

    .line 541
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/FormatFeature;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withJsonWriteFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0

    .line 544
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 545
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 546
    .local v1, "newMask":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    if-ne v2, v1, :cond_1

    move-object v11, p0

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v2, v11

    move-object v3, p0

    move v9, v0

    move v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object v11
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 461
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 462
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 463
    .local v1, "newMask":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v2, v1, :cond_0

    move-object v11, p0

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v2, v11

    move-object v3, p0

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object v11
.end method

.method public with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 364
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 365
    .local v0, "newSerFeatures":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v2, v1

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object v1
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 377
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 378
    .local v0, "newSerFeatures":I
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 379
    .local v3, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 378
    .end local v3    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v3, v1

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 328
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    :goto_0
    return-object v0
.end method

.method public with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 2
    .param p1, "df"    # Ljava/text/DateFormat;

    .line 344
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 346
    .local v0, "cfg":Lcom/fasterxml/jackson/databind/SerializationConfig;
    if-nez p1, :cond_0

    .line 347
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    return-object v1

    .line 349
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 703
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_defaultPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/PrettyPrinter;)V

    :goto_0
    return-object v0
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 13
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .line 561
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v0, :cond_0

    .line 562
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withJsonWriteFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0

    .line 564
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 565
    .local v0, "newSet":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 566
    .local v2, "newMask":I
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 567
    .local v4, "f":Lcom/fasterxml/jackson/core/FormatFeature;
    invoke-interface {v4}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v5

    .line 568
    .local v5, "mask":I
    or-int/2addr v0, v5

    .line 569
    or-int/2addr v2, v5

    .line 566
    .end local v4    # "f":Lcom/fasterxml/jackson/core/FormatFeature;
    .end local v5    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    if-ne v1, v2, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v4, v1

    move-object v5, p0

    move v11, v0

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 13
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 477
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 478
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 479
    .local v1, "newMask":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 480
    .local v4, "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v5

    .line 481
    .local v5, "mask":I
    or-int/2addr v0, v5

    .line 482
    or-int/2addr v1, v5

    .line 479
    .end local v4    # "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .end local v5    # "mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v2, v1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v4, v2

    move-object v5, p0

    move v9, v0

    move v10, v1

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v2
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 393
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 394
    .local v0, "newSerFeatures":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 395
    .local v3, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 394
    .end local v3    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v3, v1

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "filterProvider"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .line 682
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_filterProvider:Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V

    :goto_0
    return-object v0
.end method

.method public withPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_configOverrides:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->setDefaultInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)V

    .line 696
    return-object p0
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .param p1, "rootName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .line 306
    if-nez p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_1

    .line 308
    return-object p0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    return-object p0

    .line 313
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;"
        }
    .end annotation

    .line 323
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_view:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/FormatFeature;

    .line 586
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v0, :cond_0

    .line 587
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/FormatFeature;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withoutJsonWriteFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0

    .line 589
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 590
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 591
    .local v1, "newMask":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    if-ne v2, v1, :cond_1

    move-object v11, p0

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v2, v11

    move-object v3, p0

    move v9, v0

    move v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object v11
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 498
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 499
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 500
    .local v1, "newMask":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v2, v1, :cond_0

    move-object v11, p0

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v2, v11

    move-object v3, p0

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object v11
.end method

.method public without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 11
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 409
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 410
    .local v0, "newSerFeatures":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v2, v1

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_0
    return-object v1
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 422
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 423
    .local v0, "newSerFeatures":I
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 424
    .local v3, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v4

    not-int v4, v4

    and-int/2addr v0, v4

    .line 423
    .end local v3    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v3, v1

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 13
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .line 605
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonWriteFeature;

    if-eqz v0, :cond_0

    .line 606
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->_withoutJsonWriteFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    return-object v0

    .line 608
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    .line 609
    .local v0, "newSet":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    .line 610
    .local v2, "newMask":I
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 611
    .local v4, "f":Lcom/fasterxml/jackson/core/FormatFeature;
    invoke-interface {v4}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v5

    .line 612
    .local v5, "mask":I
    not-int v6, v5

    and-int/2addr v0, v6

    .line 613
    or-int/2addr v2, v5

    .line 610
    .end local v4    # "f":Lcom/fasterxml/jackson/core/FormatFeature;
    .end local v5    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    if-ne v1, v2, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    move-object v4, v1

    move-object v5, p0

    move v11, v0

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 13
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 514
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    .line 515
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    .line 516
    .local v1, "newMask":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 517
    .local v4, "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->getMask()I

    move-result v5

    .line 518
    .local v5, "mask":I
    not-int v6, v5

    and-int/2addr v0, v6

    .line 519
    or-int/2addr v1, v5

    .line 516
    .end local v4    # "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .end local v5    # "mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    if-ne v2, v1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v4, v2

    move-object v5, p0

    move v9, v0

    move v10, v1

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v2
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 12
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 438
    iget v0, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    .line 439
    .local v0, "newSerFeatures":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 440
    .local v3, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationFeature;->getMask()I

    move-result v4

    not-int v4, v4

    and-int/2addr v0, v4

    .line 439
    .end local v3    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_serFeatures:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_generatorFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/SerializationConfig;->_formatWriteFeaturesToChange:I

    move-object v3, v1

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method
