.class public final Lcom/fasterxml/jackson/databind/DeserializationConfig;
.super Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
.source "DeserializationConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase<",
        "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
        "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DESER_FEATURE_DEFAULTS:I

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected final _coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

.field protected final _ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

.field protected final _deserFeatures:I

.field protected final _formatReadFeatures:I

.field protected final _formatReadFeaturesToChange:I

.field protected final _nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

.field protected final _parserFeatures:I

.field protected final _parserFeaturesToChange:I

.field protected final _problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->collectFeatureDefaults(Ljava/lang/Class;)I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->DESER_FEATURE_DEFAULTS:I

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "mapperFeatures"    # J
    .param p4, "deserFeatures"    # I
    .param p5, "parserFeatures"    # I
    .param p6, "parserFeatureMask"    # I
    .param p7, "formatFeatures"    # I
    .param p8, "formatFeatureMask"    # I

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;J)V

    .line 182
    iput p4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 183
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 184
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 185
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 186
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 187
    iput p5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 188
    iput p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 189
    iput p7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 190
    iput p8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 191
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "rootName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 272
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 273
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 274
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 275
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 276
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 277
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 278
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 279
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 280
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 281
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    .line 214
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 215
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 216
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 217
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 218
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 219
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 220
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 221
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 222
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 223
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "ctorDetector"    # Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 242
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 243
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 244
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 245
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 246
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 247
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 248
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 249
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 250
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 251
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 252
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    .line 300
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 301
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 302
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 303
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 304
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 305
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 306
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 307
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 308
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 309
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    .line 314
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 315
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 316
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 317
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 318
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 319
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 320
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 321
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 322
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 323
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 7
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p3, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .param p4, "configOverrides"    # Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    new-instance v6, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-direct {v6}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V

    .line 167
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    .line 200
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 201
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 202
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 203
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 204
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 205
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 206
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 207
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 208
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 209
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .param p3, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p4, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .param p5, "configOverrides"    # Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .param p6, "coercionConfigs"    # Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 142
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 143
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 144
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 145
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 146
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 147
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 148
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 149
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 150
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 151
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "f"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 227
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 228
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 229
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 230
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 231
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 232
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 233
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 234
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 235
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 236
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 237
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p2, "problemHandlers":Lcom/fasterxml/jackson/databind/util/LinkedNode;, "Lcom/fasterxml/jackson/databind/util/LinkedNode<Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;)V

    .line 258
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 259
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 260
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 261
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 262
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 263
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 264
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 265
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 266
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 267
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 285
    .local p2, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;Ljava/lang/Class;)V

    .line 286
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 287
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 288
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 289
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 290
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 291
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 292
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 293
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 294
    iget v0, p1, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 295
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V
    .locals 7
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .param p3, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p4, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .param p5, "configOverrides"    # Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    new-instance v6, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-direct {v6}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;)V
    .locals 2
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .param p2, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .param p3, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .param p4, "rootNames"    # Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .param p5, "configOverrides"    # Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .param p6, "coercionConfigs"    # Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 119
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    .line 120
    sget v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->DESER_FEATURE_DEFAULTS:I

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    .line 122
    sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 123
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 124
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 126
    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 127
    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 128
    iput v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 129
    return-void
.end method

.method private varargs _withJsonReadFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 16
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .line 655
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 656
    .local v0, "parserSet":I
    iget v1, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 657
    .local v1, "parserMask":I
    iget v2, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 658
    .local v2, "newSet":I
    iget v3, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 659
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

    .line 660
    .local v0, "f":Lcom/fasterxml/jackson/core/FormatFeature;
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    .line 661
    .local v1, "mask":I
    or-int/2addr v13, v1

    .line 662
    or-int/2addr v14, v1

    .line 664
    instance-of v2, v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v2, :cond_0

    .line 665
    move-object v2, v0

    check-cast v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    .line 666
    .local v2, "oldF":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    if-eqz v2, :cond_0

    .line 667
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v3

    .line 668
    .local v3, "pmask":I
    or-int v6, v11, v3

    .line 669
    .end local v11    # "parserSet":I
    .local v6, "parserSet":I
    or-int v7, v12, v3

    move v11, v6

    move v12, v7

    .line 659
    .end local v0    # "f":Lcom/fasterxml/jackson/core/FormatFeature;
    .end local v1    # "mask":I
    .end local v2    # "oldF":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .end local v3    # "pmask":I
    .end local v6    # "parserSet":I
    .restart local v11    # "parserSet":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 673
    :cond_1
    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v0, v13, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v0, v14, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v0, v11, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v0, v12, :cond_2

    move-object v15, v9

    goto :goto_1

    :cond_2
    new-instance v15, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v2, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v4, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v15
.end method

.method private varargs _withoutJsonReadFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 16
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .line 682
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 683
    .local v0, "parserSet":I
    iget v1, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 684
    .local v1, "parserMask":I
    iget v2, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 685
    .local v2, "newSet":I
    iget v3, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 686
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

    .line 687
    .local v0, "f":Lcom/fasterxml/jackson/core/FormatFeature;
    invoke-interface {v0}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    .line 688
    .local v1, "mask":I
    not-int v2, v1

    and-int/2addr v13, v2

    .line 689
    or-int/2addr v14, v1

    .line 691
    instance-of v2, v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v2, :cond_0

    .line 692
    move-object v2, v0

    check-cast v2, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v2

    .line 693
    .local v2, "oldF":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    if-eqz v2, :cond_0

    .line 694
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v3

    .line 695
    .local v3, "pmask":I
    not-int v6, v3

    and-int/2addr v6, v11

    .line 696
    .end local v11    # "parserSet":I
    .local v6, "parserSet":I
    or-int v7, v12, v3

    move v11, v6

    move v12, v7

    .line 686
    .end local v0    # "f":Lcom/fasterxml/jackson/core/FormatFeature;
    .end local v1    # "mask":I
    .end local v2    # "oldF":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .end local v3    # "pmask":I
    .end local v6    # "parserSet":I
    .restart local v11    # "parserSet":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 700
    :cond_1
    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v0, v13, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v0, v14, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v0, v11, :cond_2

    iget v0, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v0, v12, :cond_2

    move-object v15, v9

    goto :goto_1

    :cond_2
    new-instance v15, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v2, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v4, v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v15
.end method


# virtual methods
.method protected final _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .param p1, "newBase"    # Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    .line 336
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)V

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic _withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withBase(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method protected final _withMapperFeatures(J)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 10
    .param p1, "mapperFeatures"    # J

    .line 341
    new-instance v9, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    return-object v9
.end method

.method protected bridge synthetic _withMapperFeatures(J)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withMapperFeatures(J)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public findCoercionAction(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1
    .param p1, "targetType"    # Lcom/fasterxml/jackson/databind/type/LogicalType;
    .param p3, "inputShape"    # Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .line 991
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->findCoercion(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionInputShape;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    return-object v0
.end method

.method public findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .locals 1
    .param p1, "targetType"    # Lcom/fasterxml/jackson/databind/type/LogicalType;
    .param p3, "actionIfBlankNotAllowed"    # Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;",
            ")",
            "Lcom/fasterxml/jackson/databind/cfg/CoercionAction;"
        }
    .end annotation

    .line 1015
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_coercionConfigs:Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/CoercionConfigs;->findCoercionFromBlankString(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/CoercionAction;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v0

    return-object v0
.end method

.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 5
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 951
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 952
    .local v0, "bean":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    .line 953
    .local v1, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, p0, v1, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 958
    .local v2, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    const/4 v3, 0x0

    .line 959
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-nez v2, :cond_0

    .line 960
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 961
    if-nez v2, :cond_1

    .line 962
    const/4 v4, 0x0

    return-object v4

    .line 965
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;

    move-result-object v3

    .line 967
    :cond_1
    invoke-interface {v2, p0, p1, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    return-object v4
.end method

.method protected getBaseSettings()Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    return-object v0
.end method

.method public getConstructorDetector()Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    if-nez v0, :cond_0

    .line 889
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;->DEFAULT:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    return-object v0

    .line 891
    :cond_0
    return-object v0
.end method

.method public final getDeserializationFeatures()I
    .locals 1

    .line 851
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    return v0
.end method

.method public final getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    return-object v0
.end method

.method public getProblemHandlers()Lcom/fasterxml/jackson/databind/util/LinkedNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/LinkedNode<",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    return-object v0
.end method

.method public final hasDeserializationFeatures(I)Z
    .locals 1
    .param p1, "featureMask"    # I

    .line 833
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasSomeOfFeatures(I)Z
    .locals 1
    .param p1, "featureMask"    # I

    .line 843
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;

    .line 774
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-eqz v0, :cond_0

    .line 775
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->overrideStdFeatures(II)Lcom/fasterxml/jackson/core/JsonParser;

    .line 777
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-eqz v0, :cond_1

    .line 778
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->overrideFormatFeatures(II)Lcom/fasterxml/jackson/core/JsonParser;

    .line 780
    :cond_1
    return-object p1
.end method

.method public initialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .line 787
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-eqz v0, :cond_0

    .line 788
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->overrideStdFeatures(II)Lcom/fasterxml/jackson/core/JsonParser;

    .line 790
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-eqz v0, :cond_1

    .line 791
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->overrideFormatFeatures(II)Lcom/fasterxml/jackson/core/JsonParser;

    .line 793
    :cond_1
    if-eqz p2, :cond_2

    .line 794
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V

    .line 796
    :cond_2
    return-object p1
.end method

.method public introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 907
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDeserialization(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 932
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .param p1, "builderType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "valueTypeDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 922
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forDeserializationWithBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 915
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;->forCreation(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    return-object v0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z
    .locals 3
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .param p2, "factory"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .line 819
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    .line 820
    .local v0, "mask":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 821
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 823
    :cond_1
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    return v1
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 815
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

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

.method public final requiresFullValue()Z
    .locals 2

    .line 863
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_TRAILING_TOKENS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->enabledIn(I)Z

    move-result v0

    return v0
.end method

.method public useRootWrapping()Z
    .locals 1

    .line 808
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 811
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    return v0
.end method

.method public with(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/FormatFeature;

    .line 572
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/FormatFeature;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withJsonReadFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0

    .line 575
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 576
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 577
    .local v1, "newMask":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v2, v1, :cond_1

    move-object v11, p0

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v2, v11

    move-object v3, p0

    move v9, v0

    move v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object v11
.end method

.method public with(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 491
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 492
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 493
    .local v1, "newMask":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v2, v1, :cond_0

    move-object v11, p0

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v2, v11

    move-object v3, p0

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object v11
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 391
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 392
    .local v0, "newDeserFeatures":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v2, v1

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object v1
.end method

.method public varargs with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .param p2, "features"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 405
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 406
    .local v0, "newDeserFeatures":I
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 407
    .local v3, "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 406
    .end local v3    # "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v3, v1

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .param p1, "ctorDetector"    # Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    .line 728
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_ctorDetector:Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;

    if-ne v0, p1, :cond_0

    .line 729
    return-object p0

    .line 731
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)V

    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .param p1, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .line 376
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_attributes:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .param p1, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 354
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)V

    :goto_0
    return-object v0
.end method

.method public with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .line 718
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    if-ne v0, p1, :cond_0

    .line 719
    return-object p0

    .line 721
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    return-object v0
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .line 592
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    .line 593
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withJsonReadFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0

    .line 595
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 596
    .local v0, "newSet":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 597
    .local v2, "newMask":I
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 598
    .local v4, "f":Lcom/fasterxml/jackson/core/FormatFeature;
    invoke-interface {v4}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v5

    .line 599
    .local v5, "mask":I
    or-int/2addr v0, v5

    .line 600
    or-int/2addr v2, v5

    .line 597
    .end local v4    # "f":Lcom/fasterxml/jackson/core/FormatFeature;
    .end local v5    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v1, v2, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v4, v1

    move-object v5, p0

    move v11, v0

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 507
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 508
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 509
    .local v1, "newMask":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 510
    .local v4, "f":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v5

    .line 511
    .local v5, "mask":I
    or-int/2addr v0, v5

    .line 512
    or-int/2addr v1, v5

    .line 509
    .end local v4    # "f":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .end local v5    # "mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 514
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v2, v1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v4, v2

    move-object v5, p0

    move v9, v0

    move v10, v1

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v2
.end method

.method public varargs withFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 421
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 422
    .local v0, "newDeserFeatures":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 423
    .local v3, "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 422
    .end local v3    # "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v3, v1

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public withHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 3
    .param p1, "h"    # Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;

    .line 741
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/LinkedNode;->contains(Lcom/fasterxml/jackson/databind/util/LinkedNode;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    return-object p0

    .line 744
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    new-instance v1, Lcom/fasterxml/jackson/databind/util/LinkedNode;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/util/LinkedNode;-><init>(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    return-object v0
.end method

.method public withNoProblemHandlers()Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_problemHandlers:Lcom/fasterxml/jackson/databind/util/LinkedNode;

    if-nez v0, :cond_0

    .line 754
    return-object p0

    .line 756
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/fasterxml/jackson/databind/util/LinkedNode;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/util/LinkedNode;)V

    return-object v0
.end method

.method public withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .param p1, "rootName"    # Lcom/fasterxml/jackson/databind/PropertyName;

    .line 359
    if-nez p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    if-nez v0, :cond_1

    .line 361
    return-object p0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_rootName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    return-object p0

    .line 366
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withRootName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;"
        }
    .end annotation

    .line 371
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_view:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    return-object p1
.end method

.method public without(Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/FormatFeature;

    .line 617
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fasterxml/jackson/core/FormatFeature;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withoutJsonReadFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0

    .line 620
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 621
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 622
    .local v1, "newMask":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v2, v1, :cond_1

    move-object v11, p0

    goto :goto_0

    :cond_1
    new-instance v11, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v2, v11

    move-object v3, p0

    move v9, v0

    move v10, v1

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object v11
.end method

.method public without(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 528
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 529
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    .line 530
    .local v1, "newMask":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v2, v1, :cond_0

    move-object v11, p0

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v2, v11

    move-object v3, p0

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object v11
.end method

.method public without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 11
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 437
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 438
    .local v0, "newDeserFeatures":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v4, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v7, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v2, v1

    move-object v3, p0

    move v6, v0

    invoke-direct/range {v2 .. v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_0
    return-object v1
.end method

.method public varargs without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .param p2, "features"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 451
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    .line 452
    .local v0, "newDeserFeatures":I
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 453
    .local v3, "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v4

    not-int v4, v4

    and-int/2addr v0, v4

    .line 452
    .end local v3    # "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v3, v1

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/FormatFeature;

    .line 637
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    if-eqz v0, :cond_0

    .line 638
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_withoutJsonReadFeatures([Lcom/fasterxml/jackson/core/FormatFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    return-object v0

    .line 640
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    .line 641
    .local v0, "newSet":I
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    .line 642
    .local v2, "newMask":I
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 643
    .local v4, "f":Lcom/fasterxml/jackson/core/FormatFeature;
    invoke-interface {v4}, Lcom/fasterxml/jackson/core/FormatFeature;->getMask()I

    move-result v5

    .line 644
    .local v5, "mask":I
    not-int v6, v5

    and-int/2addr v0, v6

    .line 645
    or-int/2addr v2, v5

    .line 642
    .end local v4    # "f":Lcom/fasterxml/jackson/core/FormatFeature;
    .end local v5    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    if-ne v1, v2, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    move-object v4, v1

    move-object v5, p0

    move v11, v0

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 13
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 544
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    .line 545
    .local v0, "newSet":I
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    .line 546
    .local v1, "newMask":I
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 547
    .local v4, "f":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v5

    .line 548
    .local v5, "mask":I
    not-int v6, v5

    and-int/2addr v0, v6

    .line 549
    or-int/2addr v1, v5

    .line 546
    .end local v4    # "f":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .end local v5    # "mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    :cond_0
    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    if-ne v2, v1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v6, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v12, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v4, v2

    move-object v5, p0

    move v9, v0

    move v10, v1

    invoke-direct/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v2
.end method

.method public varargs withoutFeatures([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 12
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 467
    iget v0, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    .line 468
    .local v0, "newDeserFeatures":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 469
    .local v3, "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationFeature;->getMask()I

    move-result v4

    not-int v4, v4

    and-int/2addr v0, v4

    .line 468
    .end local v3    # "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_deserFeatures:I

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-wide v5, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_mapperFeatures:J

    iget v8, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeatures:I

    iget v9, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_parserFeaturesToChange:I

    iget v10, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeatures:I

    iget v11, p0, Lcom/fasterxml/jackson/databind/DeserializationConfig;->_formatReadFeaturesToChange:I

    move-object v3, v1

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v3 .. v11}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;JIIIII)V

    :goto_1
    return-object v1
.end method
