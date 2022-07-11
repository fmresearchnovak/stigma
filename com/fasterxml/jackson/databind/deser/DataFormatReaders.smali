.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.super Ljava/lang/Object;
.source "DataFormatReaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;,
        Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_INPUT_LOOKAHEAD:I = 0x40


# instance fields
.field protected final _maxInputLookahead:I

.field protected final _minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _readers:[Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "detectors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/ObjectReader;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V

    .line 71
    return-void
.end method

.method public varargs constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 3
    .param p1, "detectors"    # [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 65
    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    sget-object v1, Lcom/fasterxml/jackson/core/format/MatchStrength;->WEAK_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    .line 67
    return-void
.end method

.method private constructor <init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V
    .locals 0
    .param p1, "detectors"    # [Lcom/fasterxml/jackson/databind/ObjectReader;
    .param p2, "optMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;
    .param p3, "minMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;
    .param p4, "maxInputLookahead"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 78
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 79
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 80
    iput p4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    .line 81
    return-void
.end method

.method private _findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 9
    .param p1, "acc"    # Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "bestMatch":Lcom/fasterxml/jackson/databind/ObjectReader;
    const/4 v1, 0x0

    .line 219
    .local v1, "bestMatchStrength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 220
    .local v5, "f":Lcom/fasterxml/jackson/databind/ObjectReader;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->reset()V

    .line 221
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->hasFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v6

    .line 223
    .local v6, "strength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 224
    goto :goto_1

    .line 227
    :cond_0
    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v7

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 229
    goto :goto_1

    .line 233
    :cond_1
    move-object v0, v5

    .line 234
    move-object v1, v6

    .line 235
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 236
    goto :goto_2

    .line 219
    .end local v5    # "f":Lcom/fasterxml/jackson/databind/ObjectReader;
    .end local v6    # "strength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :cond_3
    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->createMatcher(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public findFormat(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    new-array v1, v1, [B

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>(Ljava/io/InputStream;[B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([B)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 1
    .param p1, "fullInputData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([BII)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 1
    .param p1, "fullInputData"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;-><init>([BII)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_findFormat(Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v2, v1

    .line 198
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 199
    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 201
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectReader;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 123
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v0, v0

    .line 124
    .local v0, "len":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 125
    .local v1, "r":[Lcom/fasterxml/jackson/databind/ObjectReader;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 126
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    aput-object v3, v1, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v2
.end method

.method public with([Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 4
    .param p1, "readers"    # [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 104
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method

.method public withMaxInputLookahead(I)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 4
    .param p1, "lookaheadBytes"    # I

    .line 109
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    if-ne p1, v0, :cond_0

    .line 110
    return-object p0

    .line 112
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method

.method public withMinimalMatch(Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 4
    .param p1, "minMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 97
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p1, v0, :cond_0

    .line 98
    return-object p0

    .line 100
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method

.method public withOptimalMatch(Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 4
    .param p1, "optMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p1, v0, :cond_0

    .line 91
    return-object p0

    .line 93
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v0
.end method

.method public withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
    .locals 6
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .line 133
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    array-length v0, v0

    .line 134
    .local v0, "len":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 135
    .local v1, "r":[Lcom/fasterxml/jackson/databind/ObjectReader;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 136
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_readers:[Lcom/fasterxml/jackson/databind/ObjectReader;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->forType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v5, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;->_maxInputLookahead:I

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;-><init>([Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    return-object v2
.end method
