.class public final Lcom/fasterxml/jackson/core/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;
    }
.end annotation


# static fields
.field public static final BASE64_VALUE_INVALID:I = -0x1

.field public static final BASE64_VALUE_PADDING:I = -0x2

.field private static final INT_SPACE:I = 0x20

.field protected static final PADDING_CHAR_NONE:C = '\u0000'

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient _asciiToBase64:[I

.field private final transient _base64ToAsciiB:[B

.field private final transient _base64ToAsciiC:[C

.field private final _maxLineLength:I

.field final _name:Ljava/lang/String;

.field private final _paddingChar:C

.field private final _paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

.field private final _writePadding:Z


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;)V
    .locals 7
    .param p1, "base"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "paddingReadBehaviour"    # Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    .line 235
    iget-object v2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    iget-char v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iget v6, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCLcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;I)V

    .line 236
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V
    .locals 6
    .param p1, "base"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "maxLineLength"    # I

    .line 196
    iget-boolean v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    iget-char v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V
    .locals 7
    .param p1, "base"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "writePadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "maxLineLength"    # I

    .line 214
    iget-object v5, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCLcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;I)V

    .line 215
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCLcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;I)V
    .locals 6
    .param p1, "base"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "writePadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "paddingReadBehaviour"    # Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;
    .param p6, "maxLineLength"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 88
    const/16 v1, 0x40

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 94
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 220
    iput-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 221
    iget-object v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 222
    .local v3, "srcB":[B
    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v1, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 224
    .local v1, "srcC":[C
    array-length v4, v1

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget-object v2, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 226
    .local v2, "srcV":[I
    array-length v4, v2

    invoke-static {v2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    .line 229
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 230
    iput p6, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 231
    iput-object p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "base64Alphabet"    # Ljava/lang/String;
    .param p3, "writePadding"    # Z
    .param p4, "paddingChar"    # C
    .param p5, "maxLineLength"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    .line 88
    const/16 v1, 0x40

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    .line 94
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    .line 149
    iput-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 150
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    .line 151
    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    .line 152
    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    .line 157
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 158
    .local v3, "alphaLen":I
    if-ne v3, v1, :cond_3

    .line 163
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v3, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 164
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 166
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v1, v1, v0

    .line 167
    .local v1, "alpha":C
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v4, v1

    aput-byte v4, v2, v0

    .line 168
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aput v0, v2, v1

    .line 165
    .end local v1    # "alpha":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    :cond_0
    if-eqz p3, :cond_1

    .line 173
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v1, -0x2

    aput v1, v0, p4

    .line 178
    :cond_1
    if-eqz p3, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;->PADDING_REQUIRED:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;->PADDING_FORBIDDEN:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    .line 181
    return-void

    .line 159
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected _reportBase64EOF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->missingPaddingMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _reportBase64UnexpectedPadding()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->unexpectedPaddingMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _reportInvalidBase64(CILjava/lang/String;)V
    .locals 3
    .param p1, "ch"    # C
    .param p2, "bindex"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 837
    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "base":Ljava/lang/String;
    goto/16 :goto_1

    .line 839
    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_1

    .line 841
    .end local v0    # "base":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    const-string v1, ") in base64 content"

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 845
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' (code 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "base":Ljava/lang/String;
    goto :goto_1

    .line 843
    .end local v0    # "base":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    .restart local v0    # "base":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_4

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptsPaddingOnRead()Z
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    sget-object v1, Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;->PADDING_FORBIDDEN:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public decode(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;)V
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "ptr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 706
    .local v1, "len":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 707
    goto/16 :goto_1

    .line 709
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ptr":I
    .local v2, "ptr":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 710
    .local v0, "ch":C
    const/16 v3, 0x20

    if-le v0, v3, :cond_10

    .line 711
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v3

    .line 712
    .local v3, "bits":I
    const/4 v4, 0x0

    if-gez v3, :cond_1

    .line 713
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 715
    :cond_1
    move v5, v3

    .line 717
    .local v5, "decodedData":I
    if-lt v2, v1, :cond_2

    .line 718
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    .line 720
    :cond_2
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ptr":I
    .local v6, "ptr":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 721
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    .line 722
    .end local v3    # "bits":I
    .local v2, "bits":I
    if-gez v2, :cond_3

    .line 723
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 725
    :cond_3
    shl-int/lit8 v3, v5, 0x6

    or-int/2addr v3, v2

    .line 727
    .end local v5    # "decodedData":I
    .local v3, "decodedData":I
    if-lt v6, v1, :cond_5

    .line 729
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->requiresPaddingOnRead()Z

    move-result v5

    if-nez v5, :cond_4

    .line 730
    shr-int/lit8 v3, v3, 0x4

    .line 731
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 732
    move v0, v6

    goto :goto_1

    .line 734
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    .line 736
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ptr":I
    .local v5, "ptr":I
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 737
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    .line 740
    const/4 v6, 0x3

    const/4 v7, -0x2

    const/4 v8, 0x2

    if-gez v2, :cond_a

    .line 741
    if-eq v2, v7, :cond_6

    .line 742
    invoke-virtual {p0, v0, v8, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 744
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->acceptsPaddingOnRead()Z

    move-result v4

    if-nez v4, :cond_7

    .line 745
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64UnexpectedPadding()V

    .line 748
    :cond_7
    if-lt v5, v1, :cond_8

    .line 749
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    .line 751
    :cond_8
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ptr":I
    .local v4, "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 752
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v5

    if-nez v5, :cond_9

    .line 753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected padding character \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v6, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 756
    :cond_9
    shr-int/lit8 v3, v3, 0x4

    .line 757
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 758
    move v0, v4

    goto/16 :goto_0

    .line 761
    .end local v4    # "ptr":I
    .restart local v5    # "ptr":I
    :cond_a
    shl-int/lit8 v9, v3, 0x6

    or-int v3, v9, v2

    .line 763
    if-lt v5, v1, :cond_c

    .line 765
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->requiresPaddingOnRead()Z

    move-result v9

    if-nez v9, :cond_b

    .line 766
    shr-int/2addr v3, v8

    .line 767
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 768
    move v0, v5

    .line 789
    .end local v2    # "bits":I
    .end local v3    # "decodedData":I
    .end local v5    # "ptr":I
    .local v0, "ptr":I
    :goto_1
    return-void

    .line 770
    .local v0, "ch":C
    .restart local v2    # "bits":I
    .restart local v3    # "decodedData":I
    .restart local v5    # "ptr":I
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64EOF()V

    .line 772
    :cond_c
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "ptr":I
    .local v8, "ptr":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 773
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    .line 774
    if-gez v2, :cond_f

    .line 775
    if-eq v2, v7, :cond_d

    .line 776
    invoke-virtual {p0, v0, v6, v4}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportInvalidBase64(CILjava/lang/String;)V

    .line 778
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->acceptsPaddingOnRead()Z

    move-result v4

    if-nez v4, :cond_e

    .line 779
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->_reportBase64UnexpectedPadding()V

    .line 781
    :cond_e
    shr-int/lit8 v3, v3, 0x2

    .line 782
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto :goto_2

    .line 785
    :cond_f
    shl-int/lit8 v4, v3, 0x6

    or-int v3, v4, v2

    .line 786
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    .line 788
    .end local v0    # "ch":C
    .end local v2    # "bits":I
    .end local v3    # "decodedData":I
    :goto_2
    move v0, v8

    goto/16 :goto_0

    .line 710
    .end local v8    # "ptr":I
    .restart local v0    # "ch":C
    .local v2, "ptr":I
    :cond_10
    move v0, v2

    goto/16 :goto_0
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 675
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>()V

    .line 676
    .local v0, "b":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;)V

    .line 677
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public decodeBase64Byte(B)I
    .locals 2
    .param p1, "b"    # B

    .line 384
    move v0, p1

    .line 386
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 387
    const/4 v1, -0x1

    return v1

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    return v1
.end method

.method public decodeBase64Char(C)I
    .locals 2
    .param p1, "c"    # C

    .line 373
    move v0, p1

    .line 374
    .local v0, "ch":I
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public decodeBase64Char(I)I
    .locals 1
    .param p1, "ch"    # I

    .line 379
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # [B

    .line 550
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode([BZ)Ljava/lang/String;
    .locals 10
    .param p1, "input"    # [B
    .param p2, "addQuotes"    # Z

    .line 567
    array-length v0, p1

    .line 568
    .local v0, "inputEnd":I
    new-instance v1, Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v0

    shr-int/lit8 v3, v0, 0x3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x22

    if-eqz p2, :cond_0

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v3

    const/4 v4, 0x2

    shr-int/2addr v3, v4

    .line 576
    .local v3, "chunksBeforeLF":I
    const/4 v5, 0x0

    .line 577
    .local v5, "inputPtr":I
    add-int/lit8 v6, v0, -0x3

    .line 579
    .local v6, "safeInputEnd":I
    :goto_0
    if-gt v5, v6, :cond_2

    .line 581
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "inputPtr":I
    .local v7, "inputPtr":I
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    .line 582
    .local v5, "b24":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "inputPtr":I
    .local v8, "inputPtr":I
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 583
    shl-int/lit8 v7, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inputPtr":I
    .local v9, "inputPtr":I
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int v5, v7, v8

    .line 584
    invoke-virtual {p0, v1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    .line 585
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_1

    .line 587
    const/16 v7, 0x5c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    const/16 v7, 0x6e

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v7

    shr-int/lit8 v3, v7, 0x2

    .line 591
    .end local v5    # "b24":I
    :cond_1
    move v5, v9

    goto :goto_0

    .line 594
    .end local v9    # "inputPtr":I
    .local v5, "inputPtr":I
    :cond_2
    sub-int v7, v0, v5

    .line 595
    .local v7, "inputLeft":I
    if-lez v7, :cond_4

    .line 596
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "inputPtr":I
    .restart local v8    # "inputPtr":I
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    .line 597
    .local v5, "b24":I
    if-ne v7, v4, :cond_3

    .line 598
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "inputPtr":I
    .local v4, "inputPtr":I
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    goto :goto_1

    .line 597
    .end local v4    # "inputPtr":I
    .restart local v8    # "inputPtr":I
    :cond_3
    move v4, v8

    .line 600
    .end local v8    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :goto_1
    invoke-virtual {p0, v1, v5, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    move v5, v4

    .line 603
    .end local v4    # "inputPtr":I
    .local v5, "inputPtr":I
    :cond_4
    if-eqz p2, :cond_5

    .line 604
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encode([BZLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "input"    # [B
    .param p2, "addQuotes"    # Z
    .param p3, "linefeed"    # Ljava/lang/String;

    .line 624
    array-length v0, p1

    .line 625
    .local v0, "inputEnd":I
    new-instance v1, Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v0

    shr-int/lit8 v3, v0, 0x3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 626
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x22

    if-eqz p2, :cond_0

    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v3

    const/4 v4, 0x2

    shr-int/2addr v3, v4

    .line 632
    .local v3, "chunksBeforeLF":I
    const/4 v5, 0x0

    .line 633
    .local v5, "inputPtr":I
    add-int/lit8 v6, v0, -0x3

    .line 635
    .local v6, "safeInputEnd":I
    :goto_0
    if-gt v5, v6, :cond_2

    .line 636
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "inputPtr":I
    .local v7, "inputPtr":I
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    .line 637
    .local v5, "b24":I
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "inputPtr":I
    .local v8, "inputPtr":I
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    .line 638
    shl-int/lit8 v7, v5, 0x8

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inputPtr":I
    .local v9, "inputPtr":I
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int v5, v7, v8

    .line 639
    invoke-virtual {p0, v1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    .line 640
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_1

    .line 641
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v7

    shr-int/lit8 v3, v7, 0x2

    .line 644
    .end local v5    # "b24":I
    :cond_1
    move v5, v9

    goto :goto_0

    .line 645
    .end local v9    # "inputPtr":I
    .local v5, "inputPtr":I
    :cond_2
    sub-int v7, v0, v5

    .line 646
    .local v7, "inputLeft":I
    if-lez v7, :cond_4

    .line 647
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "inputPtr":I
    .restart local v8    # "inputPtr":I
    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    .line 648
    .local v5, "b24":I
    if-ne v7, v4, :cond_3

    .line 649
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "inputPtr":I
    .local v4, "inputPtr":I
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    goto :goto_1

    .line 648
    .end local v4    # "inputPtr":I
    .restart local v8    # "inputPtr":I
    :cond_3
    move v4, v8

    .line 651
    .end local v8    # "inputPtr":I
    .restart local v4    # "inputPtr":I
    :goto_1
    invoke-virtual {p0, v1, v5, v7}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    move v5, v4

    .line 654
    .end local v4    # "inputPtr":I
    .local v5, "inputPtr":I
    :cond_4
    if-eqz p2, :cond_5

    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public encodeBase64BitsAsByte(I)B
    .locals 1
    .param p1, "value"    # I

    .line 481
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public encodeBase64BitsAsChar(I)C
    .locals 1
    .param p1, "value"    # I

    .line 402
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public encodeBase64Chunk(I[BI)I
    .locals 3
    .param p1, "b24"    # I
    .param p2, "buffer"    # [B
    .param p3, "outPtr"    # I

    .line 496
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p2, p3

    .line 497
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p3    # "outPtr":I
    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p2, v0

    .line 498
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p2, p3

    .line 499
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p3    # "outPtr":I
    and-int/lit8 v2, p1, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, v0

    .line 500
    return p3
.end method

.method public encodeBase64Chunk(I[CI)I
    .locals 3
    .param p1, "b24"    # I
    .param p2, "buffer"    # [C
    .param p3, "outPtr"    # I

    .line 419
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    aput-char v2, p2, p3

    .line 420
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p3    # "outPtr":I
    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    aput-char v2, p2, v0

    .line 421
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outPtr":I
    .restart local v0    # "outPtr":I
    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    aput-char v2, p2, p3

    .line 422
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p3    # "outPtr":I
    and-int/lit8 v2, p1, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    .line 423
    return p3
.end method

.method public encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "b24"    # I

    .line 428
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v1, p2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    return-void
.end method

.method public encodeBase64Partial(II[BI)I
    .locals 4
    .param p1, "bits"    # I
    .param p2, "outputBytes"    # I
    .param p3, "buffer"    # [B
    .param p4, "outPtr"    # I

    .line 518
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v1, v2

    aput-byte v2, p3, p4

    .line 519
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p3, v0

    .line 520
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 521
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    .line 522
    .local v0, "pb":B
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "outPtr":I
    .local v2, "outPtr":I
    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    aput-byte v1, p3, p4

    .line 524
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "outPtr":I
    .restart local p4    # "outPtr":I
    aput-byte v0, p3, v2

    .line 525
    .end local v0    # "pb":B
    goto :goto_1

    .line 526
    :cond_1
    if-ne p2, v1, :cond_2

    .line 527
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    move p4, v0

    .line 530
    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    :cond_2
    :goto_1
    return p4
.end method

.method public encodeBase64Partial(II[CI)I
    .locals 3
    .param p1, "bits"    # I
    .param p2, "outputBytes"    # I
    .param p3, "buffer"    # [C
    .param p4, "outPtr"    # I

    .line 449
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .local v0, "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v1, v2

    aput-char v2, p3, p4

    .line 450
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, v0

    .line 451
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 452
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    goto :goto_0

    :cond_0
    iget-char v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    :goto_0
    aput-char v1, p3, p4

    .line 454
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    iget-char v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    aput-char v1, p3, v0

    goto :goto_1

    .line 456
    :cond_1
    if-ne p2, v1, :cond_2

    .line 457
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "outPtr":I
    .restart local v0    # "outPtr":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    move p4, v0

    .line 460
    .end local v0    # "outPtr":I
    .restart local p4    # "outPtr":I
    :cond_2
    :goto_1
    return p4
.end method

.method public encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "bits"    # I
    .param p3, "outputBytes"    # I

    .line 465
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 468
    if-ne p3, v1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    goto :goto_0

    :cond_0
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 472
    :cond_1
    if-ne p3, v1, :cond_2

    .line 473
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    :cond_2
    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 804
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 805
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 807
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/core/Base64Variant;

    .line 808
    .local v2, "other":Lcom/fasterxml/jackson/core/Base64Variant;
    iget-char v3, v2, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iget-char v4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne v3, v4, :cond_2

    iget v3, v2, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    iget v4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    iget-object v4, v2, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    .line 812
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 808
    :goto_0
    return v0

    .line 805
    .end local v2    # "other":Lcom/fasterxml/jackson/core/Base64Variant;
    :cond_3
    :goto_1
    return v1
.end method

.method public getMaxLineLength()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingByte()B
    .locals 1

    .line 356
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v0, v0

    return v0
.end method

.method public getPaddingChar()C
    .locals 1

    .line 355
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public missingPaddingMessage()Ljava/lang/String;
    .locals 3

    .line 883
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 884
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 883
    const-string v1, "Unexpected end of base64-encoded String: base64 variant \'%s\' expects padding (one or more \'%c\' characters) at the end. This Base64Variant might have been incorrectly configured"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public paddingReadBehaviour()Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 9

    .line 299
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/jackson/core/Base64Variants;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    .line 300
    .local v0, "base":Lcom/fasterxml/jackson/core/Base64Variant;
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    iget-boolean v1, v0, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    if-ne v4, v1, :cond_1

    iget-char v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iget-char v3, v0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    iget-object v3, v0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    iget v3, v0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    if-ne v2, v3, :cond_1

    if-eq v4, v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    return-object v0

    .line 306
    :cond_1
    :goto_0
    new-instance v8, Lcom/fasterxml/jackson/core/Base64Variant;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    iget-char v5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iget-object v6, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    iget v7, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCLcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;I)V

    return-object v8
.end method

.method public requiresPaddingOnRead()Z
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    sget-object v1, Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;->PADDING_REQUIRED:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method protected unexpectedPaddingMessage()Ljava/lang/String;
    .locals 3

    .line 870
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 871
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 870
    const-string v1, "Unexpected end of base64-encoded String: base64 variant \'%s\' expects no padding at the end while decoding. This Base64Variant might have been incorrectly configured"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPadding()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    return v0
.end method

.method public usesPaddingChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 344
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public usesPaddingChar(I)Z
    .locals 1
    .param p1, "ch"    # I

    .line 345
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withPaddingAllowed()Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 1

    .line 244
    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;->PADDING_ALLOWED:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->withReadPadding(Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public withPaddingForbidden()Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 1

    .line 260
    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;->PADDING_FORBIDDEN:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->withReadPadding(Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public withPaddingRequired()Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 1

    .line 252
    sget-object v0, Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;->PADDING_REQUIRED:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->withReadPadding(Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public withReadPadding(Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;)Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 1
    .param p1, "readPadding"    # Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    .line 272
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingReadBehaviour:Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/Base64Variant;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Lcom/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour;)V

    :goto_0
    return-object v0
.end method

.method public withWritePadding(Z)Lcom/fasterxml/jackson/core/Base64Variant;
    .locals 7
    .param p1, "writePadding"    # Z

    .line 284
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_writePadding:Z

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/Base64Variant;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    iget-char v5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iget v6, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    :goto_0
    return-object v0
.end method
