.class public abstract Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "NonBlockingJsonParserBase.java"


# static fields
.field protected static final MAJOR_ARRAY_ELEMENT_FIRST:I = 0x5

.field protected static final MAJOR_ARRAY_ELEMENT_NEXT:I = 0x6

.field protected static final MAJOR_CLOSED:I = 0x7

.field protected static final MAJOR_INITIAL:I = 0x0

.field protected static final MAJOR_OBJECT_FIELD_FIRST:I = 0x2

.field protected static final MAJOR_OBJECT_FIELD_NEXT:I = 0x3

.field protected static final MAJOR_OBJECT_VALUE:I = 0x4

.field protected static final MAJOR_ROOT:I = 0x1

.field protected static final MINOR_COMMENT_C:I = 0x35

.field protected static final MINOR_COMMENT_CLOSING_ASTERISK:I = 0x34

.field protected static final MINOR_COMMENT_CPP:I = 0x36

.field protected static final MINOR_COMMENT_LEADING_SLASH:I = 0x33

.field protected static final MINOR_COMMENT_YAML:I = 0x37

.field protected static final MINOR_FIELD_APOS_NAME:I = 0x9

.field protected static final MINOR_FIELD_LEADING_COMMA:I = 0x5

.field protected static final MINOR_FIELD_LEADING_WS:I = 0x4

.field protected static final MINOR_FIELD_NAME:I = 0x7

.field protected static final MINOR_FIELD_NAME_ESCAPE:I = 0x8

.field protected static final MINOR_FIELD_UNQUOTED_NAME:I = 0xa

.field protected static final MINOR_NUMBER_EXPONENT_DIGITS:I = 0x20

.field protected static final MINOR_NUMBER_EXPONENT_MARKER:I = 0x1f

.field protected static final MINOR_NUMBER_FRACTION_DIGITS:I = 0x1e

.field protected static final MINOR_NUMBER_INTEGER_DIGITS:I = 0x1a

.field protected static final MINOR_NUMBER_MINUS:I = 0x17

.field protected static final MINOR_NUMBER_MINUSZERO:I = 0x19

.field protected static final MINOR_NUMBER_ZERO:I = 0x18

.field protected static final MINOR_ROOT_BOM:I = 0x1

.field protected static final MINOR_ROOT_GOT_SEPARATOR:I = 0x3

.field protected static final MINOR_ROOT_NEED_SEPARATOR:I = 0x2

.field protected static final MINOR_VALUE_APOS_STRING:I = 0x2d

.field protected static final MINOR_VALUE_EXPECTING_COLON:I = 0xe

.field protected static final MINOR_VALUE_EXPECTING_COMMA:I = 0xd

.field protected static final MINOR_VALUE_LEADING_WS:I = 0xc

.field protected static final MINOR_VALUE_STRING:I = 0x28

.field protected static final MINOR_VALUE_STRING_ESCAPE:I = 0x29

.field protected static final MINOR_VALUE_STRING_UTF8_2:I = 0x2a

.field protected static final MINOR_VALUE_STRING_UTF8_3:I = 0x2b

.field protected static final MINOR_VALUE_STRING_UTF8_4:I = 0x2c

.field protected static final MINOR_VALUE_TOKEN_ERROR:I = 0x32

.field protected static final MINOR_VALUE_TOKEN_FALSE:I = 0x12

.field protected static final MINOR_VALUE_TOKEN_NON_STD:I = 0x13

.field protected static final MINOR_VALUE_TOKEN_NULL:I = 0x10

.field protected static final MINOR_VALUE_TOKEN_TRUE:I = 0x11

.field protected static final MINOR_VALUE_WS_AFTER_COMMA:I = 0xf

.field protected static final NON_STD_TOKENS:[Ljava/lang/String;

.field protected static final NON_STD_TOKEN_INFINITY:I = 0x1

.field protected static final NON_STD_TOKEN_MINUS_INFINITY:I = 0x3

.field protected static final NON_STD_TOKEN_NAN:I = 0x0

.field protected static final NON_STD_TOKEN_PLUS_INFINITY:I = 0x2

.field protected static final NON_STD_TOKEN_VALUES:[D


# instance fields
.field protected _currBufferStart:I

.field protected _currInputRowAlt:I

.field protected _endOfInput:Z

.field protected _majorState:I

.field protected _majorStateAfterValue:I

.field protected _minorState:I

.field protected _minorStateAfterSplit:I

.field protected _nonStdTokenType:I

.field protected _pending32:I

.field protected _pendingBytes:I

.field protected _quad1:I

.field protected _quadBuffer:[I

.field protected _quadLength:I

.field protected _quoted32:I

.field protected _quotedDigits:I

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 206
    const-string v0, "NaN"

    const-string v1, "Infinity"

    const-string v2, "+Infinity"

    const-string v3, "-Infinity"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->NON_STD_TOKENS:[Ljava/lang/String;

    .line 211
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->NON_STD_TOKEN_VALUES:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x7ff8000000000000L    # Double.NaN
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        -0x10000000000000L    # Double.NEGATIVE_INFINITY
    .end array-data
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "parserFeatures"    # I
    .param p3, "sym"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 147
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_quadBuffer:[I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_endOfInput:Z

    .line 233
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currBufferStart:I

    .line 242
    const/4 v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputRowAlt:I

    .line 254
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 255
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 256
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 257
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorStateAfterValue:I

    .line 258
    return-void
.end method

.method protected static final _padLastQuad(II)I
    .locals 2
    .param p0, "q"    # I
    .param p1, "bytes"    # I

    .line 790
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    move v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    shl-int/lit8 v1, p1, 0x3

    shl-int/2addr v0, v1

    or-int/2addr v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method protected final _addName([III)Ljava/lang/String;
    .locals 17
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 687
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    shl-int/lit8 v4, v2, 0x2

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 696
    .local v4, "byteLen":I
    if-ge v3, v5, :cond_0

    .line 697
    add-int/lit8 v6, v2, -0x1

    aget v6, v1, v6

    .line 699
    .local v6, "lastQuad":I
    add-int/lit8 v7, v2, -0x1

    rsub-int/lit8 v8, v3, 0x4

    shl-int/lit8 v8, v8, 0x3

    shl-int v8, v6, v8

    aput v8, v1, v7

    goto :goto_0

    .line 701
    .end local v6    # "lastQuad":I
    :cond_0
    const/4 v6, 0x0

    .line 705
    .restart local v6    # "lastQuad":I
    :goto_0
    iget-object v7, v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v7

    .line 706
    .local v7, "cbuf":[C
    const/4 v8, 0x0

    .line 708
    .local v8, "cix":I
    const/4 v9, 0x0

    .local v9, "ix":I
    :goto_1
    if-ge v9, v4, :cond_c

    .line 709
    shr-int/lit8 v10, v9, 0x2

    aget v10, v1, v10

    .line 710
    .local v10, "ch":I
    and-int/lit8 v11, v9, 0x3

    .line 711
    .local v11, "byteIx":I
    rsub-int/lit8 v12, v11, 0x3

    shl-int/lit8 v12, v12, 0x3

    shr-int v12, v10, v12

    and-int/lit16 v10, v12, 0xff

    .line 712
    add-int/lit8 v9, v9, 0x1

    .line 714
    const/16 v12, 0x7f

    if-le v10, v12, :cond_a

    .line 716
    and-int/lit16 v12, v10, 0xe0

    const/16 v13, 0xc0

    const/4 v14, 0x1

    if-ne v12, v13, :cond_1

    .line 717
    and-int/lit8 v10, v10, 0x1f

    .line 718
    const/4 v12, 0x1

    .local v12, "needed":I
    goto :goto_2

    .line 719
    .end local v12    # "needed":I
    :cond_1
    and-int/lit16 v12, v10, 0xf0

    const/16 v13, 0xe0

    if-ne v12, v13, :cond_2

    .line 720
    and-int/lit8 v10, v10, 0xf

    .line 721
    const/4 v12, 0x2

    .restart local v12    # "needed":I
    goto :goto_2

    .line 722
    .end local v12    # "needed":I
    :cond_2
    and-int/lit16 v12, v10, 0xf8

    const/16 v13, 0xf0

    if-ne v12, v13, :cond_3

    .line 723
    and-int/lit8 v10, v10, 0x7

    .line 724
    const/4 v12, 0x3

    .restart local v12    # "needed":I
    goto :goto_2

    .line 726
    .end local v12    # "needed":I
    :cond_3
    invoke-virtual {v0, v10}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportInvalidInitial(I)V

    .line 727
    move v10, v14

    move v12, v14

    .line 729
    .restart local v12    # "needed":I
    :goto_2
    add-int v13, v9, v12

    if-le v13, v4, :cond_4

    .line 730
    sget-object v13, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v15, " in field name"

    invoke-virtual {v0, v15, v13}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportInvalidEOF(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 734
    :cond_4
    shr-int/lit8 v13, v9, 0x2

    aget v13, v1, v13

    .line 735
    .local v13, "ch2":I
    and-int/lit8 v11, v9, 0x3

    .line 736
    rsub-int/lit8 v15, v11, 0x3

    shl-int/lit8 v15, v15, 0x3

    shr-int/2addr v13, v15

    .line 737
    add-int/lit8 v9, v9, 0x1

    .line 739
    and-int/lit16 v15, v13, 0xc0

    const/16 v5, 0x80

    if-eq v15, v5, :cond_5

    .line 740
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportInvalidOther(I)V

    .line 742
    :cond_5
    shl-int/lit8 v15, v10, 0x6

    and-int/lit8 v16, v13, 0x3f

    or-int v10, v15, v16

    .line 743
    const/4 v15, 0x2

    if-le v12, v14, :cond_8

    .line 744
    shr-int/lit8 v14, v9, 0x2

    aget v13, v1, v14

    .line 745
    and-int/lit8 v11, v9, 0x3

    .line 746
    rsub-int/lit8 v14, v11, 0x3

    shl-int/lit8 v14, v14, 0x3

    shr-int/2addr v13, v14

    .line 747
    add-int/lit8 v9, v9, 0x1

    .line 749
    and-int/lit16 v14, v13, 0xc0

    if-eq v14, v5, :cond_6

    .line 750
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportInvalidOther(I)V

    .line 752
    :cond_6
    shl-int/lit8 v14, v10, 0x6

    and-int/lit8 v16, v13, 0x3f

    or-int v10, v14, v16

    .line 753
    if-le v12, v15, :cond_8

    .line 754
    shr-int/lit8 v14, v9, 0x2

    aget v13, v1, v14

    .line 755
    and-int/lit8 v11, v9, 0x3

    .line 756
    rsub-int/lit8 v14, v11, 0x3

    shl-int/lit8 v14, v14, 0x3

    shr-int/2addr v13, v14

    .line 757
    add-int/lit8 v9, v9, 0x1

    .line 758
    and-int/lit16 v14, v13, 0xc0

    if-eq v14, v5, :cond_7

    .line 759
    and-int/lit16 v5, v13, 0xff

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportInvalidOther(I)V

    .line 761
    :cond_7
    shl-int/lit8 v5, v10, 0x6

    and-int/lit8 v14, v13, 0x3f

    or-int/2addr v5, v14

    move v10, v5

    .line 764
    :cond_8
    if-le v12, v15, :cond_a

    .line 765
    const/high16 v5, 0x10000

    sub-int/2addr v10, v5

    .line 766
    array-length v5, v7

    if-lt v8, v5, :cond_9

    .line 767
    iget-object v5, v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v5

    move-object v7, v5

    .line 769
    :cond_9
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "cix":I
    .local v5, "cix":I
    const v14, 0xd800

    shr-int/lit8 v15, v10, 0xa

    add-int/2addr v15, v14

    int-to-char v14, v15

    aput-char v14, v7, v8

    .line 770
    const v8, 0xdc00

    and-int/lit16 v14, v10, 0x3ff

    or-int v10, v14, v8

    move v8, v5

    .line 773
    .end local v5    # "cix":I
    .end local v12    # "needed":I
    .end local v13    # "ch2":I
    .restart local v8    # "cix":I
    :cond_a
    array-length v5, v7

    if-lt v8, v5, :cond_b

    .line 774
    iget-object v5, v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    move-result-object v5

    move-object v7, v5

    .line 776
    :cond_b
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "cix":I
    .restart local v5    # "cix":I
    int-to-char v12, v10

    aput-char v12, v7, v8

    .line 777
    .end local v10    # "ch":I
    .end local v11    # "byteIx":I
    move v8, v5

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 780
    .end local v5    # "cix":I
    .end local v9    # "ix":I
    .restart local v8    # "cix":I
    :cond_c
    new-instance v5, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9, v8}, Ljava/lang/String;-><init>([CII)V

    .line 782
    .local v5, "baseName":Ljava/lang/String;
    const/4 v9, 0x4

    if-ge v3, v9, :cond_d

    .line 783
    add-int/lit8 v9, v2, -0x1

    aput v6, v1, v9

    .line 785
    :cond_d
    iget-object v9, v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v9, v5, v1, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method protected final _closeArrayScope()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const/16 v0, 0x5d

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportMismatchedEndMarker(IC)V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    .line 595
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 597
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    const/4 v1, 0x3

    .local v1, "st":I
    goto :goto_0

    .line 599
    .end local v1    # "st":I
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    const/4 v1, 0x6

    .restart local v1    # "st":I
    goto :goto_0

    .line 602
    .end local v1    # "st":I
    :cond_2
    const/4 v1, 0x1

    .line 604
    .restart local v1    # "st":I
    :goto_0
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 605
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorStateAfterValue:I

    .line 606
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2
.end method

.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currBufferStart:I

    .line 318
    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_inputEnd:I

    .line 319
    return-void
.end method

.method protected final _closeObjectScope()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const/16 v0, 0x7d

    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportMismatchedEndMarker(IC)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    .line 615
    .local v0, "ctxt":Lcom/fasterxml/jackson/core/json/JsonReadContext;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 617
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 618
    const/4 v1, 0x3

    .local v1, "st":I
    goto :goto_0

    .line 619
    .end local v1    # "st":I
    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    const/4 v1, 0x6

    .restart local v1    # "st":I
    goto :goto_0

    .line 622
    .end local v1    # "st":I
    :cond_2
    const/4 v1, 0x1

    .line 624
    .restart local v1    # "st":I
    :goto_0
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 625
    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorStateAfterValue:I

    .line 626
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2
.end method

.method protected final _eofAsNextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    const/4 v0, 0x7

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 803
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_handleEOF()V

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->close()V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final _fieldComplete(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    const/4 v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 813
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 814
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final _findName(II)Ljava/lang/String;
    .locals 3
    .param p1, "q1"    # I
    .param p2, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 637
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_padLastQuad(II)I

    move-result p1

    .line 639
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 641
    return-object v0

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 645
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p2}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_addName([III)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final _findName(III)Ljava/lang/String;
    .locals 3
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 650
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_padLastQuad(II)I

    move-result p2

    .line 652
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(II)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 654
    return-object v0

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_quadBuffer:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 658
    const/4 v2, 0x1

    aput p2, v1, v2

    .line 659
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p3}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_addName([III)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final _findName(IIII)Ljava/lang/String;
    .locals 4
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I
    .param p4, "lastQuadBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 664
    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_padLastQuad(II)I

    move-result p3

    .line 665
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(III)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 667
    return-object v0

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_quadBuffer:[I

    .line 670
    .local v1, "quads":[I
    const/4 v2, 0x0

    aput p1, v1, v2

    .line 671
    const/4 v2, 0x1

    aput p2, v1, v2

    .line 672
    const/4 v2, 0x2

    invoke-static {p3, p4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_padLastQuad(II)I

    move-result v3

    aput v3, v1, v2

    .line 673
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, p4}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_addName([III)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected final _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 2
    .param p1, "t"    # Lcom/fasterxml/jackson/core/JsonToken;

    .line 383
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 384
    return-object v0

    .line 386
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 397
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 395
    :sswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 390
    :sswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    :sswitch_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final _nonStdToken(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 853
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->NON_STD_TOKENS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected _releaseBuffers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 302
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->release()V

    .line 304
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 872
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 873
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_throwInvalidSpace(I)V

    .line 875
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportInvalidInitial(I)V

    .line 876
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .param p1, "mask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "ptr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 883
    iput p2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_inputPtr:I

    .line 884
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportInvalidOther(I)V

    .line 885
    return-void
.end method

.method protected final _startArrayScope()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 576
    const/4 v0, 0x5

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 577
    const/4 v0, 0x6

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorStateAfterValue:I

    .line 578
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final _startObjectScope()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 584
    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 585
    const/4 v0, 0x3

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorStateAfterValue:I

    .line 586
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method protected final _updateTokenLocation()V
    .locals 5

    .line 864
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputRow:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputRowAlt:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_tokenInputRow:I

    .line 865
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_inputPtr:I

    .line 866
    .local v0, "ptr":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputRowStart:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_tokenInputCol:I

    .line 867
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputProcessed:J

    iget v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currBufferStart:I

    sub-int v3, v0, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_tokenInputTotal:J

    .line 868
    return-void
.end method

.method protected final _valueComplete(Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "t"    # Lcom/fasterxml/jackson/core/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorStateAfterValue:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 820
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 821
    return-object p1
.end method

.method protected final _valueCompleteInt(ILjava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1
    .param p1, "value"    # I
    .param p2, "asText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_intLength:I

    .line 828
    const/4 v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_numTypesValid:I

    .line 829
    iput p1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_numberInt:I

    .line 830
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorStateAfterValue:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 831
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 832
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 833
    return-object v0
.end method

.method protected final _valueNonStdNumberComplete(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->NON_STD_TOKENS:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 840
    .local v0, "tokenStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithString(Ljava/lang/String;)V

    .line 841
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 842
    const-string v1, "Non-standard token \'%s\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 845
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_intLength:I

    .line 846
    const/16 v1, 0x8

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_numTypesValid:I

    .line 847
    sget-object v1, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->NON_STD_TOKEN_VALUES:[D

    aget-wide v2, v1, p1

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_numberDouble:D

    .line 848
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorStateAfterValue:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_majorState:I

    .line 849
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v1
.end method

.method public canParseAsync()Z
    .locals 1

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 2
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "Current token (%s) not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_binaryValue:[B

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    move-result-object v0

    .line 544
    .local v0, "builder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 545
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_binaryValue:[B

    .line 547
    .end local v0    # "builder":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_binaryValue:[B

    return-object v0
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 11

    .line 345
    iget v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 347
    .local v0, "col":I
    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputRow:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputRowAlt:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 348
    .local v9, "row":I
    new-instance v10, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_contentReference()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v2

    iget-wide v3, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currInputProcessed:J

    iget v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currBufferStart:I

    sub-int/2addr v1, v5

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, -0x1

    move-object v1, v10

    move v7, v9

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v10
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_binaryValue:[B

    return-object v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadCapabilities()Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<",
            "Lcom/fasterxml/jackson/core/StreamReadCapability;",
            ">;"
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->JSON_READ_CAPABILITIES:Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;

    return-object v0
.end method

.method public getText(Ljava/io/Writer;)I
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 405
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsToWriter(Ljava/io/Writer;)I

    move-result v1

    return v1

    .line 408
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "n":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    return v2

    .line 413
    .end local v1    # "n":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_4

    .line 414
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsToWriter(Ljava/io/Writer;)I

    move-result v1

    return v1

    .line 417
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 418
    const-string v1, "Current token not available: can not call this method"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_reportError(Ljava/lang/String;)V

    .line 420
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v1

    .line 421
    .local v1, "ch":[C
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write([C)V

    .line 422
    array-length v2, v1

    return v2

    .line 424
    .end local v1    # "ch":[C
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 482
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    return-object v0

    .line 479
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v0

    return-object v0

    .line 462
    :pswitch_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopied:Z

    if-nez v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 465
    .local v1, "nameLen":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopyBuffer:[C

    if-nez v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopyBuffer:[C

    goto :goto_0

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopyBuffer:[C

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 468
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopyBuffer:[C

    .line 470
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopyBuffer:[C

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 471
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopied:Z

    .line 473
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "nameLen":I
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopyBuffer:[C

    return-object v0

    .line 485
    :cond_3
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTextLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 503
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    return v0

    .line 500
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    return v0

    .line 495
    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 506
    :cond_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTextOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v0

    return v0

    .line 516
    :pswitch_1
    return v1

    .line 525
    :cond_0
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 356
    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_contentReference()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_tokenInputTotal:J

    iget v6, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_tokenInputRow:I

    iget v7, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_tokenInputCol:I

    const-wide/16 v4, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v8
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 439
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 452
    :cond_1
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasTextCharacters()Z
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->hasTextAsCharacters()Z

    move-result v0

    return v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 336
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_nameCopied:Z

    return v0

    .line 339
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "b64variant"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    .line 554
    .local v0, "b":[B
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 555
    array-length v1, v0

    return v1
.end method

.method public abstract releaseBuffered(Ljava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 2
    .param p1, "c"    # Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not use ObjectMapper with non-blocking parser"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected symbolTableForTests()Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/async/NonBlockingJsonParserBase;->_symbols:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    return-object v0
.end method
