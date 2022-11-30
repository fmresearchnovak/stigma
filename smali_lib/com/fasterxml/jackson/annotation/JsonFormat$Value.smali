.class public Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.super Ljava/lang/Object;
.source "JsonFormat.java"

# interfaces
.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue<",
        "Lcom/fasterxml/jackson/annotation/JsonFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

.field private final _lenient:Ljava/lang/Boolean;

.field private final _locale:Ljava/util/Locale;

.field private final _pattern:Ljava/lang/String;

.field private final _shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field private transient _timezone:Ljava/util/TimeZone;

.field private final _timezoneStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 439
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-direct {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 461
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    .line 462
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V
    .locals 7
    .param p1, "ann"    # Lcom/fasterxml/jackson/annotation/JsonFormat;

    .line 465
    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->locale()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->timezone()Ljava/lang/String;

    move-result-object v4

    .line 466
    invoke-static {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->construct(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v5

    invoke-interface {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat;->lenient()Lcom/fasterxml/jackson/annotation/OptBoolean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/OptBoolean;->asBoolean()Ljava/lang/Boolean;

    move-result-object v6

    .line 465
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    .line 467
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    .line 521
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V
    .locals 13
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "localeStr"    # Ljava/lang/String;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .param p6, "lenient"    # Ljava/lang/Boolean;

    .line 475
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "##default"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v8, v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v8, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 478
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v9, v1

    goto :goto_3

    :cond_3
    :goto_2
    move-object v9, v3

    :goto_3
    const/4 v10, 0x0

    .line 475
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    .line 481
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 8
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "tz"    # Ljava/util/TimeZone;
    .param p6, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 515
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    .line 516
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tzStr"    # Ljava/lang/String;
    .param p5, "tz"    # Ljava/util/TimeZone;
    .param p6, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .param p7, "lenient"    # Ljava/lang/Boolean;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 505
    if-nez p2, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 506
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    .line 507
    iput-object p5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 508
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 509
    if-nez p6, :cond_2

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p6

    :goto_2
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 510
    iput-object p7, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    .line 511
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)V
    .locals 7
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    .line 525
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .param p3, "l"    # Ljava/util/Locale;
    .param p4, "tz"    # Ljava/util/TimeZone;
    .param p5, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .param p6, "lenient"    # Ljava/lang/Boolean;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 490
    if-nez p2, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 491
    iput-object p3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    .line 492
    iput-object p4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 494
    if-nez p5, :cond_2

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p5

    :goto_2
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 495
    iput-object p6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    .line 496
    return-void
.end method

.method private static _equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .line 866
    .local p0, "value1":Ljava/lang/Object;, "TT;"
    .local p1, "value2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 867
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 869
    :cond_1
    if-nez p1, :cond_2

    .line 870
    return v0

    .line 872
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1

    .line 531
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    return-object v0
.end method

.method public static forLeniency(Z)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 9
    .param p0, "lenient"    # Z

    .line 636
    new-instance v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    .line 637
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    .line 636
    return-object v8
.end method

.method public static forPattern(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 9
    .param p0, "p"    # Ljava/lang/String;

    .line 622
    new-instance v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    return-object v8
.end method

.method public static forShape(Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 9
    .param p0, "sh"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 629
    new-instance v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->empty()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v6

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    return-object v8
.end method

.method public static final from(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1
    .param p0, "ann"    # Lcom/fasterxml/jackson/annotation/JsonFormat;

    .line 569
    if-nez p0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V

    :goto_0
    return-object v0
.end method

.method public static merge(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1
    .param p0, "base"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 547
    if-nez p0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 547
    :goto_0
    return-object v0
.end method

.method public static varargs mergeAll([Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 5
    .param p0, "values"    # [Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "result":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 558
    .local v3, "curr":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v3, :cond_1

    .line 559
    if-nez v0, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 557
    .end local v3    # "curr":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    :cond_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 848
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 849
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 850
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 851
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 853
    .local v2, "other":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v4, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget-object v4, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 854
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 857
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v4, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 858
    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v4, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 859
    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v4, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 860
    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v4, v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    .line 861
    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 857
    :goto_0
    return v0

    .line 855
    :cond_5
    :goto_1
    return v1
.end method

.method public getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 811
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->get(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    return-object v0
.end method

.method public getLenient()Ljava/lang/Boolean;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 756
    .local v0, "tz":Ljava/util/TimeZone;
    if-nez v0, :cond_1

    .line 757
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 758
    const/4 v1, 0x0

    return-object v1

    .line 760
    :cond_0
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 761
    iput-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    .line 763
    :cond_1
    return-object v0
.end method

.method public hasLenient()Z
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPattern()Z
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShape()Z
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

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
.end method

.method public hashCode()I
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 832
    .local v0, "hash":I
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 833
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 837
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 839
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    if-eqz v1, :cond_3

    .line 840
    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 842
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 843
    return v0
.end method

.method public isLenient()Z
    .locals 2

    .line 737
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public timeZoneAsString()Ljava/lang/String;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    .line 749
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 825
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "JsonFormat.Value(pattern=%s,shape=%s,lenient=%s,locale=%s,timezone=%s,features=%s)"

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
            "Lcom/fasterxml/jackson/annotation/JsonFormat;",
            ">;"
        }
    .end annotation

    .line 708
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    return-object v0
.end method

.method public withFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 11
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 690
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->with([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v0

    .line 691
    .local v0, "newFeats":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v7, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v8, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v10, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v10}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    :goto_0
    return-object v1
.end method

.method public withLenient(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 9
    .param p1, "lenient"    # Ljava/lang/Boolean;

    .line 679
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 680
    return-object p0

    .line 682
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v7, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 9
    .param p1, "l"    # Ljava/util/Locale;

    .line 663
    new-instance v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget-object v7, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    return-object v8
.end method

.method public final withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 18
    .param p1, "overrides"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_a

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    if-eq v1, v2, :cond_a

    if-ne v1, v0, :cond_0

    goto/16 :goto_6

    .line 579
    :cond_0
    if-ne v0, v2, :cond_1

    .line 580
    return-object v1

    .line 582
    :cond_1
    iget-object v2, v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 583
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    :cond_2
    iget-object v2, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    .line 586
    :cond_3
    iget-object v3, v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 587
    .local v3, "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ANY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v3, v4, :cond_4

    .line 588
    iget-object v3, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-object v11, v3

    goto :goto_0

    .line 587
    :cond_4
    move-object v11, v3

    .line 590
    .end local v3    # "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .local v11, "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    :goto_0
    iget-object v3, v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    .line 591
    .local v3, "l":Ljava/util/Locale;
    if-nez v3, :cond_5

    .line 592
    iget-object v3, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    move-object v12, v3

    goto :goto_1

    .line 591
    :cond_5
    move-object v12, v3

    .line 594
    .end local v3    # "l":Ljava/util/Locale;
    .local v12, "l":Ljava/util/Locale;
    :goto_1
    iget-object v3, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    .line 595
    .local v3, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    if-nez v3, :cond_6

    .line 596
    iget-object v3, v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-object v13, v3

    goto :goto_2

    .line 598
    :cond_6
    iget-object v4, v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Features;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v3

    move-object v13, v3

    .line 600
    .end local v3    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .local v13, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    :goto_2
    iget-object v3, v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    .line 601
    .local v3, "lenient":Ljava/lang/Boolean;
    if-nez v3, :cond_7

    .line 602
    iget-object v3, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    move-object v14, v3

    goto :goto_3

    .line 601
    :cond_7
    move-object v14, v3

    .line 606
    .end local v3    # "lenient":Ljava/lang/Boolean;
    .local v14, "lenient":Ljava/lang/Boolean;
    :goto_3
    iget-object v3, v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 609
    .local v3, "tzStr":Ljava/lang/String;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 613
    :cond_8
    iget-object v4, v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    move-object v15, v3

    move-object/from16 v16, v4

    .local v4, "tz":Ljava/util/TimeZone;
    goto :goto_5

    .line 610
    .end local v4    # "tz":Ljava/util/TimeZone;
    :cond_9
    :goto_4
    iget-object v3, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    .line 611
    iget-object v4, v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    move-object v15, v3

    move-object/from16 v16, v4

    .line 615
    .end local v3    # "tzStr":Ljava/lang/String;
    .local v15, "tzStr":Ljava/lang/String;
    .local v16, "tz":Ljava/util/TimeZone;
    :goto_5
    new-instance v17, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-object/from16 v3, v17

    move-object v4, v2

    move-object v5, v11

    move-object v6, v12

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v9, v13

    move-object v10, v14

    invoke-direct/range {v3 .. v10}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    return-object v17

    .line 577
    .end local v2    # "p":Ljava/lang/String;
    .end local v11    # "sh":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .end local v12    # "l":Ljava/util/Locale;
    .end local v13    # "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    .end local v14    # "lenient":Ljava/lang/Boolean;
    .end local v15    # "tzStr":Ljava/lang/String;
    .end local v16    # "tz":Ljava/util/TimeZone;
    :cond_a
    :goto_6
    return-object v0
.end method

.method public withPattern(Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 9
    .param p1, "p"    # Ljava/lang/String;

    .line 644
    new-instance v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget-object v7, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    return-object v8
.end method

.method public withShape(Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 9
    .param p1, "s"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 652
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne p1, v0, :cond_0

    .line 653
    return-object p0

    .line 655
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v7, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget-object v8, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 9
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 671
    new-instance v8, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    iget-object v7, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    const/4 v4, 0x0

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    return-object v8
.end method

.method public withoutFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 11
    .param p1, "f"    # Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    .line 700
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Features;->without([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    move-result-object v0

    .line 701
    .local v0, "newFeats":Lcom/fasterxml/jackson/annotation/JsonFormat$Features;
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_features:Lcom/fasterxml/jackson/annotation/JsonFormat$Features;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iget-object v4, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_pattern:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_shape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iget-object v6, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_locale:Ljava/util/Locale;

    iget-object v7, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezoneStr:Ljava/lang/String;

    iget-object v8, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_timezone:Ljava/util/TimeZone;

    iget-object v10, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->_lenient:Ljava/lang/Boolean;

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v10}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;Ljava/util/Locale;Ljava/lang/String;Ljava/util/TimeZone;Lcom/fasterxml/jackson/annotation/JsonFormat$Features;Ljava/lang/Boolean;)V

    :goto_0
    return-object v1
.end method
