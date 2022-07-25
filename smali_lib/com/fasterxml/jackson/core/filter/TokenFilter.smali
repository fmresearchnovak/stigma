.class public Lcom/fasterxml/jackson/core/filter/TokenFilter;
.super Ljava/lang/Object;
.source "TokenFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/filter/TokenFilter$Inclusion;
    }
.end annotation


# static fields
.field public static final INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected _includeScalar()Z
    .locals 1

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public filterFinishArray()V
    .locals 0

    .line 134
    return-void
.end method

.method public filterFinishObject()V
    .locals 0

    .line 126
    return-void
.end method

.method public filterStartArray()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    .line 117
    return-object p0
.end method

.method public filterStartObject()Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0

    .line 90
    return-object p0
.end method

.method public includeBinary()Z
    .locals 1

    .line 404
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeBoolean(Z)Z
    .locals 1
    .param p1, "value"    # Z

    .line 267
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeElement(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0
    .param p1, "index"    # I

    .line 195
    return-object p0
.end method

.method public includeEmbeddedValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 432
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeNull()Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeNumber(D)Z
    .locals 1
    .param p1, "value"    # D

    .line 365
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeNumber(F)Z
    .locals 1
    .param p1, "value"    # F

    .line 352
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeNumber(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 326
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeNumber(J)Z
    .locals 1
    .param p1, "value"    # J

    .line 339
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeNumber(Ljava/math/BigDecimal;)Z
    .locals 1
    .param p1, "value"    # Ljava/math/BigDecimal;

    .line 378
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeNumber(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "value"    # Ljava/math/BigInteger;

    .line 391
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public includeRawValue()Z
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeRootValue(I)Lcom/fasterxml/jackson/core/filter/TokenFilter;
    .locals 0
    .param p1, "index"    # I

    .line 223
    return-object p0
.end method

.method public includeString(Ljava/io/Reader;I)Z
    .locals 1
    .param p1, "r"    # Ljava/io/Reader;
    .param p2, "maxLen"    # I

    .line 311
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public includeValue(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/filter/TokenFilter;->_includeScalar()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 443
    sget-object v0, Lcom/fasterxml/jackson/core/filter/TokenFilter;->INCLUDE_ALL:Lcom/fasterxml/jackson/core/filter/TokenFilter;

    if-ne p0, v0, :cond_0

    .line 444
    const-string v0, "TokenFilter.INCLUDE_ALL"

    return-object v0

    .line 446
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
