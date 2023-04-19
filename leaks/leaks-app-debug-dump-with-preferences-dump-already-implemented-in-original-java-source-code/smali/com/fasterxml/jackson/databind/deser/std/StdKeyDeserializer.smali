.class public Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.super Lcom/fasterxml/jackson/databind/KeyDeserializer;
.source "StdKeyDeserializer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;,
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;,
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DelegatingKD;,
        Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;
    }
.end annotation


# static fields
.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_BYTE:I = 0x2

.field public static final TYPE_BYTE_ARRAY:I = 0x11

.field public static final TYPE_CALENDAR:I = 0xb

.field public static final TYPE_CHAR:I = 0x4

.field public static final TYPE_CLASS:I = 0xf

.field public static final TYPE_CURRENCY:I = 0x10

.field public static final TYPE_DATE:I = 0xa

.field public static final TYPE_DOUBLE:I = 0x8

.field public static final TYPE_FLOAT:I = 0x7

.field public static final TYPE_INT:I = 0x5

.field public static final TYPE_LOCALE:I = 0x9

.field public static final TYPE_LONG:I = 0x6

.field public static final TYPE_SHORT:I = 0x3

.field public static final TYPE_URI:I = 0xd

.field public static final TYPE_URL:I = 0xe

.field public static final TYPE_UUID:I = 0xc

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _kind:I


# direct methods
.method protected constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 62
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V

    .line 63
    return-void
.end method

.method protected constructor <init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V
    .locals 0
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<",
            "*>;)V"
        }
    .end annotation

    .line 65
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/KeyDeserializer;-><init>()V

    .line 66
    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_kind:I

    .line 67
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    .line 68
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    .line 69
    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;"
        }
    .end annotation

    .line 76
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_12

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_12

    const-class v0, Ljava/lang/CharSequence;

    if-eq p0, v0, :cond_12

    const-class v0, Ljava/io/Serializable;

    if-ne p0, v0, :cond_0

    goto/16 :goto_1

    .line 82
    :cond_0
    const-class v0, Ljava/util/UUID;

    if-ne p0, v0, :cond_1

    .line 83
    const/16 v0, 0xc

    .local v0, "kind":I
    goto/16 :goto_0

    .line 84
    .end local v0    # "kind":I
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_2

    .line 85
    const/4 v0, 0x5

    .restart local v0    # "kind":I
    goto/16 :goto_0

    .line 86
    .end local v0    # "kind":I
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_3

    .line 87
    const/4 v0, 0x6

    .restart local v0    # "kind":I
    goto/16 :goto_0

    .line 88
    .end local v0    # "kind":I
    :cond_3
    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_4

    .line 89
    const/16 v0, 0xa

    .restart local v0    # "kind":I
    goto/16 :goto_0

    .line 90
    .end local v0    # "kind":I
    :cond_4
    const-class v0, Ljava/util/Calendar;

    if-ne p0, v0, :cond_5

    .line 91
    const/16 v0, 0xb

    .restart local v0    # "kind":I
    goto/16 :goto_0

    .line 93
    .end local v0    # "kind":I
    :cond_5
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_6

    .line 94
    const/4 v0, 0x1

    .restart local v0    # "kind":I
    goto :goto_0

    .line 95
    .end local v0    # "kind":I
    :cond_6
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_7

    .line 96
    const/4 v0, 0x2

    .restart local v0    # "kind":I
    goto :goto_0

    .line 97
    .end local v0    # "kind":I
    :cond_7
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_8

    .line 98
    const/4 v0, 0x4

    .restart local v0    # "kind":I
    goto :goto_0

    .line 99
    .end local v0    # "kind":I
    :cond_8
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_9

    .line 100
    const/4 v0, 0x3

    .restart local v0    # "kind":I
    goto :goto_0

    .line 101
    .end local v0    # "kind":I
    :cond_9
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_a

    .line 102
    const/4 v0, 0x7

    .restart local v0    # "kind":I
    goto :goto_0

    .line 103
    .end local v0    # "kind":I
    :cond_a
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_b

    .line 104
    const/16 v0, 0x8

    .restart local v0    # "kind":I
    goto :goto_0

    .line 105
    .end local v0    # "kind":I
    :cond_b
    const-class v0, Ljava/net/URI;

    if-ne p0, v0, :cond_c

    .line 106
    const/16 v0, 0xd

    .restart local v0    # "kind":I
    goto :goto_0

    .line 107
    .end local v0    # "kind":I
    :cond_c
    const-class v0, Ljava/net/URL;

    if-ne p0, v0, :cond_d

    .line 108
    const/16 v0, 0xe

    .restart local v0    # "kind":I
    goto :goto_0

    .line 109
    .end local v0    # "kind":I
    :cond_d
    const-class v0, Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    .line 110
    const/16 v0, 0xf

    .restart local v0    # "kind":I
    goto :goto_0

    .line 111
    .end local v0    # "kind":I
    :cond_e
    const-class v0, Ljava/util/Locale;

    if-ne p0, v0, :cond_f

    .line 112
    const-class v0, Ljava/util/Locale;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    move-result-object v0

    .line 113
    .local v0, "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V

    return-object v1

    .line 114
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    :cond_f
    const-class v0, Ljava/util/Currency;

    if-ne p0, v0, :cond_10

    .line 115
    const-class v0, Ljava/util/Currency;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    move-result-object v0

    .line 116
    .restart local v0    # "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;)V

    return-object v1

    .line 117
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<*>;"
    :cond_10
    const-class v0, [B

    if-ne p0, v0, :cond_11

    .line 118
    const/16 v0, 0x11

    .line 122
    .local v0, "kind":I
    :goto_0
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;

    invoke-direct {v1, v0, p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;)V

    return-object v1

    .line 120
    .end local v0    # "kind":I
    :cond_11
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_12
    :goto_1
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$StringKD;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_kind:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: unknown key type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_0
    :try_start_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_weirdKey(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 205
    :catch_1
    move-exception v0

    .line 206
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_weirdKey(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_2
    :try_start_2
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 233
    :catch_2
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "unable to parse key as Class"

    invoke-virtual {p2, v2, p1, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 227
    :catch_3
    move-exception v0

    .line 228
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_weirdKey(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :pswitch_4
    :try_start_4
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    .line 221
    :catch_4
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_weirdKey(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_5
    :try_start_5
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 215
    :catch_5
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_weirdKey(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_6
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    .line 209
    :pswitch_7
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_8
    :try_start_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_deser:Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    return-object v0

    .line 199
    :catch_6
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0, p2, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_weirdKey(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 195
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 189
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 186
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "can only convert 1-character Strings"

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 173
    :pswitch_e
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "value":I
    const/16 v2, -0x8000

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    int-to-short v1, v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 175
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "overflow, value cannot be represented as 16-bit value"

    invoke-virtual {p2, v2, p1, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 164
    .end local v0    # "value":I
    :pswitch_f
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v0

    .line 166
    .restart local v0    # "value":I
    const/16 v2, -0x80

    if-lt v0, v2, :cond_4

    const/16 v2, 0xff

    if-le v0, v2, :cond_3

    goto :goto_1

    .line 169
    :cond_3
    int-to-byte v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 167
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "overflow, value cannot be represented as 8-bit value"

    invoke-virtual {p2, v2, p1, v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 155
    .end local v0    # "value":I
    :pswitch_10
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 158
    :cond_5
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "value not \'true\' or \'false\'"

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 262
    invoke-static {p1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected _parseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected _parseLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 258
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _weirdKey(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 268
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 267
    const-string v2, "problem: %s"

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 130
    return-object v0

    .line 133
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 135
    return-object v2

    .line 141
    .end local v2    # "result":Ljava/lang/Object;
    :cond_1
    nop

    .line 142
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isEnumType(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    return-object v0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not a valid representation"

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "re":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 140
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 138
    const-string v1, "not a valid representation, problem: (%s) %s"

    invoke-virtual {p2, v2, p1, v1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    return-object v0
.end method
