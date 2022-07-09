.class public Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.source "SqlDateSerializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;-><init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "useTimestamp"    # Ljava/lang/Boolean;
    .param p2, "customFormat"    # Ljava/text/DateFormat;

    .line 27
    const-class v0, Ljava/sql/Date;

    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected bridge synthetic _timestamp(Ljava/lang/Object;)J
    .locals 2

    .line 16
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->_timestamp(Ljava/sql/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _timestamp(Ljava/sql/Date;)J
    .locals 2
    .param p1, "value"    # Ljava/sql/Date;

    .line 37
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->serialize(Ljava/sql/Date;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/sql/Date;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .param p1, "value"    # Ljava/sql/Date;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->_asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->_timestamp(Ljava/sql/Date;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 46
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->_customFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->_serializeAsString(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 57
    return-void
.end method

.method public bridge synthetic withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;

    move-result-object p1

    return-object p1
.end method

.method public withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;
    .locals 1
    .param p1, "timestamp"    # Ljava/lang/Boolean;
    .param p2, "customFormat"    # Ljava/text/DateFormat;

    .line 32
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;-><init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-object v0
.end method
