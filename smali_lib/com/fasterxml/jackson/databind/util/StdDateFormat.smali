.class public Lcom/fasterxml/jackson/databind/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "StdDateFormat.java"


# static fields
.field protected static final ALL_FORMATS:[Ljava/lang/String;

.field protected static final CALENDAR:Ljava/util/Calendar;

.field protected static final DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

.field public static final DATE_FORMAT_STR_ISO8601:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

.field protected static final DATE_FORMAT_STR_PLAIN:Ljava/lang/String; = "yyyy-MM-dd"

.field protected static final DATE_FORMAT_STR_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field protected static final DEFAULT_LOCALE:Ljava/util/Locale;

.field protected static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;

.field protected static final PATTERN_ISO8601:Ljava/util/regex/Pattern;

.field protected static final PATTERN_PLAIN:Ljava/util/regex/Pattern;

.field protected static final PATTERN_PLAIN_STR:Ljava/lang/String; = "\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d"

.field public static final instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;


# instance fields
.field private transient _calendar:Ljava/util/Calendar;

.field private transient _formatRFC1123:Ljava/text/DateFormat;

.field protected _lenient:Ljava/lang/Boolean;

.field protected final _locale:Ljava/util/Locale;

.field protected transient _timezone:Ljava/util/TimeZone;

.field private _tzSerializedWithColon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    const-string v0, "\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->PATTERN_PLAIN:Ljava/util/regex/Pattern;

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "p":Ljava/util/regex/Pattern;
    :try_start_0
    const-string v1, "\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d[T]\\d\\d[:]\\d\\d(?:[:]\\d\\d)?(\\.\\d+)?(Z|[+-]\\d\\d(?:[:]?\\d\\d)?)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 63
    nop

    .line 64
    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->PATTERN_ISO8601:Ljava/util/regex/Pattern;

    .line 89
    .end local v0    # "p":Ljava/util/regex/Pattern;
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v3, "yyyy-MM-dd"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    .line 102
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 105
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 116
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v3, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    .line 117
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 123
    new-instance v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>()V

    sput-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    .line 132
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    sput-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->CALENDAR:Ljava/util/Calendar;

    return-void

    .line 61
    .restart local v0    # "p":Ljava/util/regex/Pattern;
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    .line 178
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "loc"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    .line 183
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 184
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 185
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "loc"    # Ljava/util/Locale;
    .param p3, "lenient"    # Ljava/lang/Boolean;

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    .line 189
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "loc"    # Ljava/util/Locale;
    .param p3, "lenient"    # Ljava/lang/Boolean;
    .param p4, "formatTzOffsetWithColon"    # Z

    .line 195
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    .line 196
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 197
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 198
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    .line 199
    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    .line 200
    return-void
.end method

.method private static final _cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "df"    # Ljava/text/DateFormat;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "loc"    # Ljava/util/Locale;
    .param p4, "lenient"    # Ljava/lang/Boolean;

    .line 786
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object p0, v0

    .line 788
    if-nez p2, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 790
    :cond_1
    invoke-virtual {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Ljava/text/DateFormat;

    .line 791
    if-eqz p2, :cond_2

    .line 792
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 795
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 796
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 798
    :cond_3
    return-object p0
.end method

.method protected static _equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .line 818
    .local p0, "value1":Ljava/lang/Object;, "TT;"
    .local p1, "value2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 819
    return v0

    .line 821
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static _parse2D(Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 764
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, p1, 0x1

    .line 765
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 764
    return v0
.end method

.method private static _parse4D(Ljava/lang/String;I)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 757
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v1, p1, 0x1

    .line 758
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 759
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 760
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 757
    return v0
.end method

.method private _parseDateFromLong(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 4
    .param p1, "longStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 625
    :try_start_0
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .local v0, "ts":J
    nop

    .line 631
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 626
    .end local v0    # "ts":J
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Timestamp value %s out of 64-bit value range"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 629
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 203
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "loc"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 286
    .local v0, "df":Ljava/text/DateFormat;
    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 287
    return-object v0
.end method

.method public static getRFC1123Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "loc"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static pad2(Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # I

    .line 526
    div-int/lit8 v0, p1, 0xa

    .line 527
    .local v0, "tens":I
    if-nez v0, :cond_0

    .line 528
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 530
    :cond_0
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 531
    mul-int/lit8 v1, v0, 0xa

    sub-int/2addr p1, v1

    .line 533
    :goto_0
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 534
    return-void
.end method

.method private static pad3(Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # I

    .line 537
    div-int/lit8 v0, p1, 0x64

    .line 538
    .local v0, "h":I
    if-nez v0, :cond_0

    .line 539
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 541
    :cond_0
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 542
    mul-int/lit8 v1, v0, 0x64

    sub-int/2addr p1, v1

    .line 544
    :goto_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 545
    return-void
.end method

.method private static pad4(Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "value"    # I

    .line 548
    div-int/lit8 v0, p1, 0x64

    .line 549
    .local v0, "h":I
    if-nez v0, :cond_0

    .line 550
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 552
    :cond_0
    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 555
    :cond_1
    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 557
    :goto_0
    mul-int/lit8 v1, v0, 0x64

    sub-int/2addr p1, v1

    .line 559
    :goto_1
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 560
    return-void
.end method


# virtual methods
.method protected _clearFormats()V
    .locals 1

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 803
    return-void
.end method

.method protected _format(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;Ljava/lang/StringBuffer;)V
    .locals 8
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "loc"    # Ljava/util/Locale;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "buffer"    # Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_getCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 455
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 460
    .local v2, "year":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x2b

    if-nez v3, :cond_0

    .line 461
    invoke-virtual {p0, p4, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatBCEYear(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 463
    :cond_0
    const/16 v3, 0x270f

    if-le v2, v3, :cond_1

    .line 469
    invoke-virtual {p4, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    :cond_1
    invoke-static {p4, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad4(Ljava/lang/StringBuffer;I)V

    .line 473
    :goto_0
    const/16 v3, 0x2d

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {p4, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 475
    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 476
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p4, v1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 477
    const/16 v1, 0x54

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 478
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p4, v1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 479
    const/16 v1, 0x3a

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p4, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 481
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 482
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p4, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 483
    const/16 v5, 0x2e

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    const/16 v5, 0xe

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p4, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad3(Ljava/lang/StringBuffer;I)V

    .line 486
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 487
    .local v5, "offset":I
    if-eqz v5, :cond_4

    .line 488
    const v6, 0xea60

    div-int v7, v5, v6

    div-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 489
    .local v7, "hours":I
    div-int v6, v5, v6

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 490
    .local v6, "minutes":I
    if-gez v5, :cond_2

    const/16 v4, 0x2d

    :cond_2
    invoke-virtual {p4, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 491
    invoke-static {p4, v7}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 492
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    if-eqz v3, :cond_3

    .line 493
    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 495
    :cond_3
    invoke-static {p4, v6}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad2(Ljava/lang/StringBuffer;I)V

    .line 496
    .end local v6    # "minutes":I
    .end local v7    # "hours":I
    goto :goto_1

    .line 502
    :cond_4
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    if-eqz v1, :cond_5

    .line 503
    const-string v1, "+00:00"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 505
    :cond_5
    const-string v1, "+0000"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    :goto_1
    return-void
.end method

.method protected _formatBCEYear(Ljava/lang/StringBuffer;I)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "bceYearNoSign"    # I

    .line 513
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 514
    const-string v0, "+0000"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    return-void

    .line 517
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 518
    .local v0, "isoYear":I
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 522
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->pad4(Ljava/lang/StringBuffer;I)V

    .line 523
    return-void
.end method

.method protected _getCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 806
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_calendar:Ljava/util/Calendar;

    .line 807
    .local v0, "cal":Ljava/util/Calendar;
    if-nez v0, :cond_0

    .line 808
    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->CALENDAR:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    move-object v0, v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_calendar:Ljava/util/Calendar;

    .line 810
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 811
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->isLenient()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 814
    return-object v0
.end method

.method protected _parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 24
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "bogus"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 651
    .local v2, "totalLen":I
    sget-object v3, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 652
    .local v3, "tz":Ljava/util/TimeZone;
    iget-object v4, v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    if-eqz v4, :cond_0

    const/16 v4, 0x5a

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_0

    .line 653
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 655
    :cond_0
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_getCalendar(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 656
    .local v11, "cal":Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 658
    const/16 v4, 0x8

    const/16 v12, 0xa

    const/4 v5, 0x5

    const/16 v13, 0xe

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v10, 0x1

    if-gt v2, v12, :cond_2

    .line 659
    sget-object v6, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->PATTERN_PLAIN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 660
    .local v12, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 661
    invoke-static {v1, v15}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse4D(Ljava/lang/String;I)I

    move-result v14

    .line 662
    .local v14, "year":I
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v16, v5, -0x1

    .line 663
    .local v16, "month":I
    invoke-static {v1, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v17

    .line 665
    .local v17, "day":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v11

    move v5, v14

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 666
    invoke-virtual {v11, v13, v15}, Ljava/util/Calendar;->set(II)V

    .line 667
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    return-object v4

    .line 669
    .end local v14    # "year":I
    .end local v16    # "month":I
    .end local v17    # "day":I
    :cond_1
    const-string v4, "yyyy-MM-dd"

    .line 670
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .local v4, "formatStr":Ljava/lang/String;
    move/from16 v23, v2

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 671
    .end local v4    # "formatStr":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->PATTERN_ISO8601:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 672
    .local v9, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 675
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->start(I)I

    move-result v8

    .line 676
    .local v8, "start":I
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->end(I)I

    move-result v16

    .line 677
    .local v16, "end":I
    sub-int v7, v16, v8

    .line 678
    .local v7, "len":I
    const/16 v6, 0x10

    if-le v7, v10, :cond_5

    .line 680
    add-int/lit8 v14, v8, 0x1

    invoke-static {v1, v14}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v14

    mul-int/lit16 v14, v14, 0xe10

    .line 681
    .local v14, "offsetSecs":I
    if-lt v7, v5, :cond_3

    .line 682
    add-int/lit8 v12, v16, -0x2

    invoke-static {v1, v12}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v14, v12

    .line 684
    :cond_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_4

    .line 685
    mul-int/lit16 v14, v14, -0x3e8

    goto :goto_0

    .line 687
    :cond_4
    mul-int/lit16 v14, v14, 0x3e8

    .line 689
    :goto_0
    const/16 v12, 0xf

    invoke-virtual {v11, v12, v14}, Ljava/util/Calendar;->set(II)V

    .line 691
    invoke-virtual {v11, v6, v15}, Ljava/util/Calendar;->set(II)V

    .line 694
    .end local v14    # "offsetSecs":I
    :cond_5
    invoke-static {v1, v15}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse4D(Ljava/lang/String;I)I

    move-result v12

    .line 695
    .local v12, "year":I
    invoke-static {v1, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v13, v5, -0x1

    .line 696
    .local v13, "month":I
    invoke-static {v1, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v14

    .line 699
    .local v14, "day":I
    const/16 v4, 0xb

    invoke-static {v1, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v18

    .line 700
    .local v18, "hour":I
    const/16 v4, 0xe

    invoke-static {v1, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v19

    .line 704
    .local v19, "minute":I
    if-le v2, v6, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_6

    .line 705
    const/16 v4, 0x11

    invoke-static {v1, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parse2D(Ljava/lang/String;I)I

    move-result v4

    move/from16 v20, v4

    .local v4, "seconds":I
    goto :goto_1

    .line 707
    .end local v4    # "seconds":I
    :cond_6
    const/4 v4, 0x0

    move/from16 v20, v4

    .line 709
    .local v20, "seconds":I
    :goto_1
    move-object v4, v11

    move v5, v12

    move v6, v13

    move/from16 v21, v7

    .end local v7    # "len":I
    .local v21, "len":I
    move v7, v14

    move/from16 v22, v8

    .end local v8    # "start":I
    .local v22, "start":I
    move/from16 v8, v18

    move-object v15, v9

    .end local v9    # "m":Ljava/util/regex/Matcher;
    .local v15, "m":Ljava/util/regex/Matcher;
    move/from16 v9, v19

    move/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "totalLen":I
    .local v23, "totalLen":I
    move/from16 v10, v20

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 712
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 713
    .end local v22    # "start":I
    .local v4, "start":I
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    .line 714
    .end local v16    # "end":I
    .local v5, "end":I
    const/4 v6, 0x0

    .line 715
    .local v6, "msecs":I
    if-lt v4, v5, :cond_7

    .line 716
    const/16 v2, 0xe

    const/4 v7, 0x0

    invoke-virtual {v11, v2, v7}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 719
    :cond_7
    const/4 v6, 0x0

    .line 720
    sub-int v7, v5, v4

    .line 721
    .local v7, "fractLen":I
    packed-switch v7, :pswitch_data_0

    .line 724
    const/16 v8, 0x9

    if-gt v7, v8, :cond_8

    .line 732
    :pswitch_0
    add-int/lit8 v2, v4, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v6, v2

    .line 734
    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    const/16 v8, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v6, v2

    .line 736
    :pswitch_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v6, v2

    .line 737
    nop

    .line 741
    :pswitch_3
    const/16 v2, 0xe

    invoke-virtual {v11, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 743
    .end local v7    # "fractLen":I
    :goto_2
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2

    .line 725
    .restart local v7    # "fractLen":I
    :cond_8
    new-instance v8, Ljava/text/ParseException;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    .line 727
    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 725
    const-string v2, "Cannot parse date \"%s\": invalid fractional seconds \'%s\'; can use at most 9 digits"

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 745
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "msecs":I
    .end local v7    # "fractLen":I
    .end local v12    # "year":I
    .end local v13    # "month":I
    .end local v14    # "day":I
    .end local v15    # "m":Ljava/util/regex/Matcher;
    .end local v18    # "hour":I
    .end local v19    # "minute":I
    .end local v20    # "seconds":I
    .end local v21    # "len":I
    .end local v23    # "totalLen":I
    .restart local v2    # "totalLen":I
    .restart local v9    # "m":Ljava/util/regex/Matcher;
    :cond_9
    move/from16 v23, v2

    move-object v15, v9

    const/4 v2, 0x1

    .end local v2    # "totalLen":I
    .end local v9    # "m":Ljava/util/regex/Matcher;
    .restart local v15    # "m":Ljava/util/regex/Matcher;
    .restart local v23    # "totalLen":I
    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

    .line 748
    .end local v15    # "m":Ljava/util/regex/Matcher;
    .local v4, "formatStr":Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/text/ParseException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v4, v6, v2

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    const/4 v8, 0x2

    aput-object v2, v6, v8

    .line 749
    const-string v2, "Cannot parse date \"%s\": while it seems to fit format \'%s\', parsing fails (leniency? %s)"

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _parseDate(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 4
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x2d

    if-ltz v0, :cond_3

    .line 416
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 417
    .local v2, "ch":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    .line 419
    :cond_1
    if-gtz v0, :cond_3

    if-eq v2, v1, :cond_2

    .line 420
    goto :goto_1

    .line 423
    .end local v2    # "ch":C
    :cond_2
    goto :goto_0

    .line 424
    :cond_3
    :goto_1
    if-gez v0, :cond_5

    .line 426
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_4

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 427
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parseDateFromLong(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 430
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 5

    .line 271
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 590
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 443
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 444
    .local v0, "tz":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 445
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_format(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;Ljava/lang/StringBuffer;)V

    .line 448
    return-object p2
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 595
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isColonIncludedInTimeZone()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method protected looksLikeISO8601(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dateStr"    # Ljava/lang/String;

    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    .line 611
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 612
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    .line 614
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x1

    return v0

    .line 618
    :cond_0
    return v1
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 10
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 376
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 377
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parseDate(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 378
    .local v2, "dt":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 379
    return-object v2

    .line 381
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x22

    if-ge v6, v5, :cond_2

    aget-object v8, v4, v6

    .line 383
    .local v8, "f":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 384
    const-string v7, "\", \""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 386
    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .end local v8    # "f":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    new-instance v4, Ljava/text/ParseException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 392
    const-string v1, "Cannot parse date \"%s\": not compatible with any of standard forms (%s)"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v4, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 401
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parseDate(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 402
    :catch_0
    move-exception v0

    .line 405
    const/4 v0, 0x0

    return-object v0
.end method

.method protected parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 638
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 641
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 640
    const-string v3, "Cannot parse date \"%s\", problem: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 642
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method protected parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 5
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 770
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 771
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setLenient(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 334
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 335
    .local v0, "newValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    .line 338
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_clearFormats()V

    .line 340
    :cond_0
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 321
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_clearFormats()V

    .line 323
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 325
    :cond_0
    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 576
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[one of: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "strict"

    goto :goto_0

    :cond_0
    const-string v1, "lenient"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 570
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 571
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 570
    const-string v1, "DateFormat %s: (timezone: %s, locale: %s, lenient: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withColonInTimeZone(Z)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 4
    .param p1, "b"    # Z

    .line 261
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    if-ne v0, p1, :cond_0

    .line 262
    return-object p0

    .line 264
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method public withLenient(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 4
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 241
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    return-object p0

    .line 244
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 4
    .param p1, "loc"    # Ljava/util/Locale;

    .line 227
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    return-object p0

    .line 230
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 4
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 211
    if-nez p1, :cond_0

    .line 212
    sget-object p1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    if-eq p1, v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_lenient:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_tzSerializedWithColon:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;Ljava/lang/Boolean;Z)V

    return-object v0

    .line 215
    :cond_2
    :goto_0
    return-object p0
.end method
