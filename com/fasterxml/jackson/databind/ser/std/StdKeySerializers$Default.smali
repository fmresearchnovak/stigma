.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE_BYTE_ARRAY:I = 0x7

.field static final TYPE_CALENDAR:I = 0x2

.field static final TYPE_CLASS:I = 0x3

.field static final TYPE_DATE:I = 0x1

.field static final TYPE_ENUM:I = 0x4

.field static final TYPE_INTEGER:I = 0x5

.field static final TYPE_LONG:I = 0x6

.field static final TYPE_TO_STRING:I = 0x8


# instance fields
.field protected final _typeId:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .param p1, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 147
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 148
    iput p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;->_typeId:I

    .line 149
    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget v0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;->_typeId:I

    packed-switch v0, :pswitch_data_0

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_1

    .line 187
    :pswitch_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    move-object v1, p1

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "encoded":Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 190
    .end local v0    # "encoded":Ljava/lang/String;
    goto :goto_1

    .line 183
    :pswitch_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldId(J)V

    .line 184
    goto :goto_1

    .line 167
    :pswitch_2
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    .line 172
    .local v0, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUM_KEYS_USING_INDEX:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .local v1, "key":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 178
    .local v0, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 180
    .end local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 161
    :pswitch_3
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 162
    goto :goto_1

    .line 158
    :pswitch_4
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(JLcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 159
    goto :goto_1

    .line 155
    :pswitch_5
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 156
    nop

    .line 195
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
