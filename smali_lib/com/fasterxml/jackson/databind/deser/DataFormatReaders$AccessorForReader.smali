.class public Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;
.super Lcom/fasterxml/jackson/core/format/InputAccessor$Std;
.source "DataFormatReaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/DataFormatReaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccessorForReader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B

    .line 254
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>(Ljava/io/InputStream;[B)V

    .line 255
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "inputDocument"    # [B

    .line 257
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([B)V

    .line 258
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "inputDocument"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 260
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([BII)V

    .line 261
    return-void
.end method


# virtual methods
.method public createMatcher(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;
    .locals 8
    .param p1, "match"    # Lcom/fasterxml/jackson/databind/ObjectReader;
    .param p2, "matchStrength"    # Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 265
    new-instance v7, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_buffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedStart:I

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedEnd:I

    iget v4, p0, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$AccessorForReader;->_bufferedStart:I

    sub-int v4, v0, v4

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/DataFormatReaders$Match;-><init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)V

    return-object v7
.end method
