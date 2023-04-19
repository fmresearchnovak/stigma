.class public Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
.end method

.method public static beginObjectHeader(Landroid/os/Parcel;)I
    .locals 1

    .line 17
    const/16 v0, 0x4f45

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method

.method public static finishObjectHeader(Landroid/os/Parcel;I)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 19
    return-void
.end method

.method public static writeBigDecimal(Landroid/os/Parcel;ILjava/math/BigDecimal;Z)V
    .locals 0

    .line 87
    if-nez p2, :cond_1

    .line 88
    if-eqz p3, :cond_0

    .line 89
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 90
    :cond_0
    return-void

    .line 91
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 92
    invoke-virtual {p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 93
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 95
    return-void
.end method

.method public static writeBigDecimalArray(Landroid/os/Parcel;I[Ljava/math/BigDecimal;Z)V
    .locals 2

    .line 208
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 209
    if-eqz p3, :cond_0

    .line 210
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 211
    :cond_0
    return-void

    .line 212
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 213
    array-length p3, p2

    .line 214
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 216
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 217
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 220
    return-void
.end method

.method public static writeBigInteger(Landroid/os/Parcel;ILjava/math/BigInteger;Z)V
    .locals 0

    .line 59
    if-nez p2, :cond_1

    .line 60
    if-eqz p3, :cond_0

    .line 61
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 62
    :cond_0
    return-void

    .line 63
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 64
    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 65
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 66
    return-void
.end method

.method public static writeBigIntegerArray(Landroid/os/Parcel;I[Ljava/math/BigInteger;Z)V
    .locals 2

    .line 180
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 181
    if-eqz p3, :cond_0

    .line 182
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 183
    :cond_0
    return-void

    .line 184
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 185
    array-length p3, p2

    .line 186
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 188
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 191
    return-void
.end method

.method public static writeBoolean(Landroid/os/Parcel;IZ)V
    .locals 1

    .line 20
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 21
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    return-void
.end method

.method public static writeBooleanArray(Landroid/os/Parcel;I[ZZ)V
    .locals 0

    .line 148
    if-nez p2, :cond_1

    .line 149
    if-eqz p3, :cond_0

    .line 150
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 151
    :cond_0
    return-void

    .line 152
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 153
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 154
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 155
    return-void
.end method

.method public static writeBooleanList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 238
    if-eqz p3, :cond_0

    .line 239
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 240
    :cond_0
    return-void

    .line 241
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 242
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 243
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 245
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 248
    return-void
.end method

.method public static writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .locals 0

    .line 23
    if-nez p2, :cond_1

    .line 24
    if-eqz p3, :cond_0

    .line 25
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 26
    :cond_0
    return-void

    .line 27
    :cond_1
    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 28
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    return-void
.end method

.method public static writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 0

    .line 120
    if-nez p2, :cond_1

    .line 121
    if-eqz p3, :cond_0

    .line 122
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 123
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 125
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 126
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 127
    return-void
.end method

.method public static writeByte(Landroid/os/Parcel;IB)V
    .locals 1

    .line 30
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 31
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return-void
.end method

.method public static writeByteArray(Landroid/os/Parcel;I[BZ)V
    .locals 0

    .line 128
    if-nez p2, :cond_1

    .line 129
    if-eqz p3, :cond_0

    .line 130
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 131
    :cond_0
    return-void

    .line 132
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 133
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 134
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 135
    return-void
.end method

.method public static writeByteArrayArray(Landroid/os/Parcel;I[[BZ)V
    .locals 2

    .line 136
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 137
    if-eqz p3, :cond_0

    .line 138
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 139
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 141
    array-length p3, p2

    .line 142
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 144
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 147
    return-void
.end method

.method public static writeByteArraySparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "[B>;Z)V"
        }
    .end annotation

    .line 519
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 520
    if-eqz p3, :cond_0

    .line 521
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 522
    :cond_0
    return-void

    .line 523
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 524
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 525
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 527
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 531
    return-void
.end method

.method public static writeChar(Landroid/os/Parcel;IC)V
    .locals 1

    .line 33
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 34
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    return-void
.end method

.method public static writeCharArray(Landroid/os/Parcel;I[CZ)V
    .locals 0

    .line 156
    if-nez p2, :cond_1

    .line 157
    if-eqz p3, :cond_0

    .line 158
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 159
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 161
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 162
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 163
    return-void
.end method

.method public static writeDouble(Landroid/os/Parcel;ID)V
    .locals 1

    .line 77
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 78
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 79
    return-void
.end method

.method public static writeDoubleArray(Landroid/os/Parcel;I[DZ)V
    .locals 0

    .line 200
    if-nez p2, :cond_1

    .line 201
    if-eqz p3, :cond_0

    .line 202
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 203
    :cond_0
    return-void

    .line 204
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 205
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 206
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 207
    return-void
.end method

.method public static writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .line 285
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 286
    if-eqz p3, :cond_0

    .line 287
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 288
    :cond_0
    return-void

    .line 289
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 290
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 291
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 293
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 296
    return-void
.end method

.method public static writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V
    .locals 0

    .line 80
    if-nez p2, :cond_1

    .line 81
    if-eqz p3, :cond_0

    .line 82
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 83
    :cond_0
    return-void

    .line 84
    :cond_1
    const/16 p3, 0x8

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 86
    return-void
.end method

.method public static writeDoubleSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .line 408
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 409
    if-eqz p3, :cond_0

    .line 410
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 411
    :cond_0
    return-void

    .line 412
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 413
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 414
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 416
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 420
    return-void
.end method

.method public static writeFloat(Landroid/os/Parcel;IF)V
    .locals 1

    .line 67
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 68
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 69
    return-void
.end method

.method public static writeFloatArray(Landroid/os/Parcel;I[FZ)V
    .locals 0

    .line 192
    if-nez p2, :cond_1

    .line 193
    if-eqz p3, :cond_0

    .line 194
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 195
    :cond_0
    return-void

    .line 196
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 197
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 198
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 199
    return-void
.end method

.method public static writeFloatList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 274
    if-eqz p3, :cond_0

    .line 275
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 276
    :cond_0
    return-void

    .line 277
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 278
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 279
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 281
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 284
    return-void
.end method

.method public static writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V
    .locals 0

    .line 70
    if-nez p2, :cond_1

    .line 71
    if-eqz p3, :cond_0

    .line 72
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 73
    :cond_0
    return-void

    .line 74
    :cond_1
    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 75
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 76
    return-void
.end method

.method public static writeFloatSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 421
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 422
    if-eqz p3, :cond_0

    .line 423
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 424
    :cond_0
    return-void

    .line 425
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 426
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 427
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 429
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 433
    return-void
.end method

.method public static writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .locals 0

    .line 104
    if-nez p2, :cond_1

    .line 105
    if-eqz p3, :cond_0

    .line 106
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 107
    :cond_0
    return-void

    .line 108
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 109
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 110
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 111
    return-void
.end method

.method public static writeIBinderArray(Landroid/os/Parcel;I[Landroid/os/IBinder;Z)V
    .locals 0

    .line 229
    if-nez p2, :cond_1

    .line 230
    if-eqz p3, :cond_0

    .line 231
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 232
    :cond_0
    return-void

    .line 233
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 234
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    .line 235
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 236
    return-void
.end method

.method public static writeIBinderList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .line 305
    if-nez p2, :cond_1

    .line 306
    if-eqz p3, :cond_0

    .line 307
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 308
    :cond_0
    return-void

    .line 309
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 310
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 311
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 312
    return-void
.end method

.method public static writeIBinderSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;Z)V"
        }
    .end annotation

    .line 506
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 507
    if-eqz p3, :cond_0

    .line 508
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 509
    :cond_0
    return-void

    .line 510
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 511
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 512
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 514
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 518
    return-void
.end method

.method public static writeInt(Landroid/os/Parcel;II)V
    .locals 1

    .line 39
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 40
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method

.method public static writeIntArray(Landroid/os/Parcel;I[IZ)V
    .locals 0

    .line 164
    if-nez p2, :cond_1

    .line 165
    if-eqz p3, :cond_0

    .line 166
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 167
    :cond_0
    return-void

    .line 168
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 169
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 170
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 171
    return-void
.end method

.method public static writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 250
    if-eqz p3, :cond_0

    .line 251
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 252
    :cond_0
    return-void

    .line 253
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 254
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 255
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 257
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 260
    return-void
.end method

.method public static writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .locals 0

    .line 42
    if-nez p2, :cond_1

    .line 43
    if-eqz p3, :cond_0

    .line 44
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 45
    :cond_0
    return-void

    .line 46
    :cond_1
    const/4 p3, 0x4

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method

.method public static writeList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0

    .line 392
    if-nez p2, :cond_1

    .line 393
    if-eqz p3, :cond_0

    .line 394
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 395
    :cond_0
    return-void

    .line 396
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 397
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 398
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 399
    return-void
.end method

.method public static writeLong(Landroid/os/Parcel;IJ)V
    .locals 1

    .line 49
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 50
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    return-void
.end method

.method public static writeLongArray(Landroid/os/Parcel;I[JZ)V
    .locals 0

    .line 172
    if-nez p2, :cond_1

    .line 173
    if-eqz p3, :cond_0

    .line 174
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 175
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 177
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 178
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 179
    return-void
.end method

.method public static writeLongList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 262
    if-eqz p3, :cond_0

    .line 263
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 264
    :cond_0
    return-void

    .line 265
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 266
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 267
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 269
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 272
    return-void
.end method

.method public static writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .locals 0

    .line 52
    if-nez p2, :cond_1

    .line 53
    if-eqz p3, :cond_0

    .line 54
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 55
    :cond_0
    return-void

    .line 56
    :cond_1
    const/16 p3, 0x8

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 57
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    return-void
.end method

.method public static writeParcel(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .locals 1

    .line 352
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 353
    if-eqz p3, :cond_0

    .line 354
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 355
    :cond_0
    return-void

    .line 356
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result p3

    invoke-virtual {p0, p2, v0, p3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 358
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 359
    return-void
.end method

.method public static writeParcelArray(Landroid/os/Parcel;I[Landroid/os/Parcel;Z)V
    .locals 4

    .line 360
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 361
    if-eqz p3, :cond_0

    .line 362
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 363
    :cond_0
    return-void

    .line 364
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 365
    array-length p3, p2

    .line 366
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 368
    aget-object v2, p2, v1

    .line 369
    if-eqz v2, :cond_2

    .line 370
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 372
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 375
    return-void
.end method

.method public static writeParcelList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 377
    if-eqz p3, :cond_0

    .line 378
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 379
    :cond_0
    return-void

    .line 380
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 381
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 382
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 384
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    .line 385
    if-eqz v2, :cond_2

    .line 386
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 388
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 391
    return-void
.end method

.method public static writeParcelSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcel;",
            ">;Z)V"
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 474
    if-eqz p3, :cond_0

    .line 475
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 476
    :cond_0
    return-void

    .line 477
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 478
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 479
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 481
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    .line 483
    if-eqz v2, :cond_2

    .line 484
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_1

    .line 486
    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 489
    return-void
.end method

.method public static writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 0

    .line 112
    if-nez p2, :cond_1

    .line 113
    if-eqz p4, :cond_0

    .line 114
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 115
    :cond_0
    return-void

    .line 116
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 117
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 119
    return-void
.end method

.method public static writeShort(Landroid/os/Parcel;IS)V
    .locals 1

    .line 36
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 37
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method

.method public static writeSparseBooleanArray(Landroid/os/Parcel;ILandroid/util/SparseBooleanArray;Z)V
    .locals 0

    .line 400
    if-nez p2, :cond_1

    .line 401
    if-eqz p3, :cond_0

    .line 402
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 403
    :cond_0
    return-void

    .line 404
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 405
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 406
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 407
    return-void
.end method

.method public static writeSparseIntArray(Landroid/os/Parcel;ILandroid/util/SparseIntArray;Z)V
    .locals 2

    .line 434
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 435
    if-eqz p3, :cond_0

    .line 436
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 437
    :cond_0
    return-void

    .line 438
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 439
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    .line 440
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 442
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 446
    return-void
.end method

.method public static writeSparseLongArray(Landroid/os/Parcel;ILandroid/util/SparseLongArray;Z)V
    .locals 3

    .line 447
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 448
    if-eqz p3, :cond_0

    .line 449
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 450
    :cond_0
    return-void

    .line 451
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 452
    invoke-virtual {p2}, Landroid/util/SparseLongArray;->size()I

    move-result p3

    .line 453
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 455
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 459
    return-void
.end method

.method public static writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 0

    .line 96
    if-nez p2, :cond_1

    .line 97
    if-eqz p3, :cond_0

    .line 98
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 99
    :cond_0
    return-void

    .line 100
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 101
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 103
    return-void
.end method

.method public static writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .locals 0

    .line 221
    if-nez p2, :cond_1

    .line 222
    if-eqz p3, :cond_0

    .line 223
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 224
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 226
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 227
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 228
    return-void
.end method

.method public static writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 297
    if-nez p2, :cond_1

    .line 298
    if-eqz p3, :cond_0

    .line 299
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 300
    :cond_0
    return-void

    .line 301
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 302
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 303
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 304
    return-void
.end method

.method public static writeStringSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 460
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 461
    if-eqz p3, :cond_0

    .line 462
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 463
    :cond_0
    return-void

    .line 464
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 465
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 466
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    nop

    :goto_0
    if-ge v0, p3, :cond_2

    .line 468
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 472
    return-void
.end method

.method public static writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 314
    if-eqz p4, :cond_0

    .line 315
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 316
    :cond_0
    return-void

    .line 317
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 318
    array-length p4, p2

    .line 319
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_3

    .line 321
    aget-object v2, p2, v1

    .line 322
    if-nez v2, :cond_2

    .line 323
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 324
    :cond_2
    invoke-static {p0, v2, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 325
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 327
    return-void
.end method

.method public static writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 328
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 329
    if-eqz p3, :cond_0

    .line 330
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 331
    :cond_0
    return-void

    .line 332
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 333
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    .line 334
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 336
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 337
    if-nez v2, :cond_2

    .line 338
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 339
    :cond_2
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 340
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 342
    return-void
.end method

.method public static writeTypedSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 491
    if-eqz p3, :cond_0

    .line 492
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;II)V

    .line 493
    :cond_0
    return-void

    .line 494
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 495
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 496
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_3

    .line 498
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 500
    if-nez v2, :cond_2

    .line 501
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 502
    :cond_2
    invoke-static {p0, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 503
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    .line 505
    return-void
.end method

.method private static zza(Landroid/os/Parcel;I)I
    .locals 1

    .line 8
    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static zza(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 344
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 346
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 348
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 349
    sub-int p2, p1, v1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 351
    return-void
.end method

.method private static zzb(Landroid/os/Parcel;I)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 12
    sub-int v1, v0, p1

    .line 13
    add-int/lit8 p1, p1, -0x4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 16
    return-void
.end method

.method private static zzb(Landroid/os/Parcel;II)V
    .locals 1

    .line 3
    const v0, 0xffff

    if-lt p2, v0, :cond_0

    .line 4
    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 6
    :cond_0
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    return-void
.end method
