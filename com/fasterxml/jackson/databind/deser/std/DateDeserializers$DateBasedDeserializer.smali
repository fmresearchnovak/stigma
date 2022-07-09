.class public abstract Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "DateDeserializers.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "DateBasedDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer<",
        "TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


# instance fields
.field protected final _customFormat:Ljava/text/DateFormat;

.field protected final _formatString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 1
    .param p2, "format"    # Ljava/text/DateFormat;
    .param p3, "formatStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<",
            "TT;>;",
            "Ljava/text/DateFormat;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    .local p1, "base":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 86
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    .line 87
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    .line 88
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    .line 80
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method protected _parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_checkFromStringCoercion(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/CoercionAction;

    move-result-object v1

    .line 182
    .local v1, "act":Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$1;->$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/CoercionAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 189
    const/4 v2, 0x0

    return-object v2

    .line 184
    :pswitch_0
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 191
    .end local v1    # "act":Lcom/fasterxml/jackson/databind/cfg/CoercionAction;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return-object v2

    .line 198
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "expected format \"%s\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p2, v3, v0, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    monitor-exit v1

    return-object v3

    .line 198
    .end local v2    # "e":Ljava/text/ParseException;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 201
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    nop

    .line 103
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    .line 102
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->findFormatOverrides(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 105
    .local v0, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v0, :cond_c

    .line 106
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 107
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLenient()Ljava/lang/Boolean;

    move-result-object v2

    .line 110
    .local v2, "lenient":Ljava/lang/Boolean;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasPattern()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "pattern":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 113
    .local v4, "loc":Ljava/util/Locale;
    :goto_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 114
    .local v5, "df":Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 117
    :cond_1
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 121
    :cond_2
    invoke-virtual {p0, v5, v3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;

    move-result-object v6

    return-object v6

    .line 124
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v4    # "loc":Ljava/util/Locale;
    .end local v5    # "df":Ljava/text/SimpleDateFormat;
    :cond_3
    if-eqz v1, :cond_8

    .line 125
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    .line 127
    .local v3, "df":Ljava/text/DateFormat;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    if-ne v4, v5, :cond_6

    .line 128
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 129
    .restart local v4    # "loc":Ljava/util/Locale;
    :goto_1
    move-object v5, v3

    check-cast v5, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    .line 130
    .local v5, "std":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v5

    .line 131
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v5

    .line 132
    if-eqz v2, :cond_5

    .line 133
    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withLenient(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v5

    .line 135
    :cond_5
    move-object v3, v5

    .line 136
    .end local v4    # "loc":Ljava/util/Locale;
    .end local v5    # "std":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    goto :goto_2

    .line 138
    :cond_6
    invoke-virtual {v3}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/text/DateFormat;

    .line 139
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 140
    if-eqz v2, :cond_7

    .line 141
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 144
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;

    move-result-object v4

    return-object v4

    .line 147
    .end local v3    # "df":Ljava/text/DateFormat;
    :cond_8
    if-eqz v2, :cond_c

    .line 148
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    .line 149
    .restart local v3    # "df":Ljava/text/DateFormat;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    .line 151
    .local v4, "pattern":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    if-ne v5, v6, :cond_9

    .line 152
    move-object v5, v3

    check-cast v5, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    .line 153
    .restart local v5    # "std":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withLenient(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v5

    .line 154
    move-object v3, v5

    .line 155
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    .line 156
    .end local v5    # "std":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    goto :goto_3

    .line 158
    :cond_9
    invoke-virtual {v3}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Ljava/text/DateFormat;

    .line 159
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 160
    instance-of v5, v3, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_a

    .line 161
    move-object v5, v3

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 164
    :cond_a
    :goto_3
    if-nez v4, :cond_b

    .line 165
    const-string v4, "[unknown]"

    .line 167
    :cond_b
    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;

    move-result-object v5

    return-object v5

    .line 170
    .end local v1    # "tz":Ljava/util/TimeZone;
    .end local v2    # "lenient":Ljava/lang/Boolean;
    .end local v3    # "df":Ljava/text/DateFormat;
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_c
    return-object p0
.end method

.method public logicalType()Lcom/fasterxml/jackson/databind/type/LogicalType;
    .locals 1

    .line 94
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    sget-object v0, Lcom/fasterxml/jackson/databind/type/LogicalType;->DateTime:Lcom/fasterxml/jackson/databind/type/LogicalType;

    return-object v0
.end method

.method protected abstract withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<",
            "TT;>;"
        }
    .end annotation
.end method
