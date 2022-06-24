.class public Lnet/stigma/MarkedLocation;
.super Landroid/location/Location;
.source "MarkedLocation.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private origLoc:Landroid/location/Location;

.field private tagValue:D


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 2
    .param p1, "origLoc"    # Landroid/location/Location;

    .line 25
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 19
    const-string v0, "Stigma.MarkedLocation"

    iput-object v0, p0, Lnet/stigma/MarkedLocation;->TAG:Ljava/lang/String;

    .line 22
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lnet/stigma/MarkedLocation;->tagValue:D

    .line 26
    iput-object p1, p0, Lnet/stigma/MarkedLocation;->origLoc:Landroid/location/Location;

    .line 27
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 2
    .param p1, "dest"    # Landroid/location/Location;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bearingTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v1

    return v1
.end method

.method public describeContents()I
    .locals 2

    .line 52
    const-string v0, "describeContents()"

    .line 53
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Landroid/location/Location;->describeContents()I

    move-result v1

    return v1
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 2
    .param p1, "dest"    # Landroid/location/Location;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "distanceTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    return v1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "equals("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAccuracy()F
    .locals 2

    .line 84
    const-string v0, "getAccuracy()"

    .line 85
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    return v1
.end method

.method public getAltitude()D
    .locals 3

    .line 91
    const-string v0, "getAltitude()"

    .line 92
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 93
    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    return-wide v1
.end method

.method public getBearing()F
    .locals 2

    .line 98
    const-string v0, "getBearing()"

    .line 99
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 100
    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    return v1
.end method

.method public getBearingAccuracyDegrees()F
    .locals 2

    .line 105
    const-string v0, "getBearingAccuracyDegrees()"

    .line 106
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v1

    return v1
.end method

.method public getElapsedRealtimeNanos()J
    .locals 3

    .line 134
    const-string v0, "getElapsedRealtimeNanos()"

    .line 135
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    return-wide v1
.end method

.method public getElapsedRealtimeUncertaintyNanos()D
    .locals 3

    .line 141
    const-string v0, "getElapsedRealtimeUncertaintyNanos()"

    .line 142
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 143
    invoke-super {p0}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v1

    return-wide v1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 148
    const-string v0, "getExtras()"

    .line 149
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 150
    invoke-super {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getLatitude()D
    .locals 3

    .line 155
    const-string v0, "WARNINING!!! getLatitude()"

    .line 156
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    return-wide v1
.end method

.method public getLongitude()D
    .locals 3

    .line 162
    const-string v0, "WARNINING!!! getLongitude()"

    .line 163
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    return-wide v1
.end method

.method public getProvider()Ljava/lang/String;
    .locals 2

    .line 169
    const-string v0, "getProvider()"

    .line 170
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 171
    invoke-super {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSpeed()F
    .locals 2

    .line 176
    const-string v0, "getSpeed()"

    .line 177
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    return v1
.end method

.method public getSpeedAccuracyMetersPerSecond()F
    .locals 2

    .line 183
    const-string v0, "getSpeedAccuracyMetersPerSecond()"

    .line 184
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 185
    invoke-super {p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v1

    return v1
.end method

.method public getTime()J
    .locals 3

    .line 190
    const-string v0, "getTime()"

    .line 191
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 192
    invoke-super {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public getVerticalAccuracyMeters()F
    .locals 2

    .line 197
    const-string v0, "getVerticalAccuracyMeters()"

    .line 198
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 199
    invoke-super {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    return v1
.end method

.method public hasAccuracy()Z
    .locals 2

    .line 204
    const-string v0, "hasAccuracy()"

    .line 205
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 206
    invoke-super {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    return v1
.end method

.method public hasAltitude()Z
    .locals 2

    .line 211
    const-string v0, "hasAltitude()"

    .line 212
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 213
    invoke-super {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    return v1
.end method

.method public hasBearing()Z
    .locals 2

    .line 218
    const-string v0, "hasBearing()"

    .line 219
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 220
    invoke-super {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    return v1
.end method

.method public hasBearingAccuracy()Z
    .locals 2

    .line 225
    const-string v0, "hasBearingAccuracy()"

    .line 226
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 227
    invoke-super {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    return v1
.end method

.method public hasElapsedRealtimeUncertaintyNanos()Z
    .locals 2

    .line 232
    const-string v0, "hasElapsedRealtimeUncertaintyNanos()"

    .line 233
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 234
    invoke-super {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    return v1
.end method

.method public hasSpeed()Z
    .locals 2

    .line 239
    const-string v0, "hasSpeed()"

    .line 240
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 241
    invoke-super {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    return v1
.end method

.method public hasSpeedAccuracy()Z
    .locals 2

    .line 246
    const-string v0, "hasSpeedAccuracy()"

    .line 247
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 248
    invoke-super {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    return v1
.end method

.method public hasVerticalAccuracy()Z
    .locals 2

    .line 253
    const-string v0, "hasVerticalAccuracy()"

    .line 254
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 255
    invoke-super {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 260
    const-string v0, "hashCode()"

    .line 261
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 262
    invoke-super {p0}, Landroid/location/Location;->hashCode()I

    move-result v1

    return v1
.end method

.method public isFromMockProvider()Z
    .locals 2

    .line 278
    const-string v0, "isFromMockProvider()"

    .line 279
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 280
    invoke-super {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    return v1
.end method

.method public isMock()Z
    .locals 2

    .line 285
    const-string v0, "isMock()"

    .line 286
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 287
    invoke-super {p0}, Landroid/location/Location;->isMock()Z

    move-result v1

    return v1
.end method

.method public printLogMessages()V
    .locals 1

    .line 35
    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public printLogMessages(Ljava/lang/String;)V
    .locals 2
    .param p1, "message_extra"    # Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarkedLocation activity! (extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "Stigma.MarkedLocation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public removeAccuracy()V
    .locals 1

    .line 303
    const-string v0, "removeAccuracy()"

    .line 304
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 305
    invoke-super {p0}, Landroid/location/Location;->removeAccuracy()V

    .line 306
    return-void
.end method

.method public removeAltitude()V
    .locals 1

    .line 310
    const-string v0, "removeAltitude()"

    .line 311
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 312
    invoke-super {p0}, Landroid/location/Location;->removeAltitude()V

    .line 313
    return-void
.end method

.method public removeBearing()V
    .locals 1

    .line 317
    const-string v0, "removeBearing()"

    .line 318
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 319
    invoke-super {p0}, Landroid/location/Location;->removeBearing()V

    .line 320
    return-void
.end method

.method public removeSpeed()V
    .locals 1

    .line 333
    const-string v0, "removeSpeed()"

    .line 334
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 335
    invoke-super {p0}, Landroid/location/Location;->removeSpeed()V

    .line 336
    return-void
.end method

.method public reset()V
    .locals 1

    .line 355
    const-string v0, "reset()"

    .line 356
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 357
    invoke-super {p0}, Landroid/location/Location;->reset()V

    .line 358
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .locals 1
    .param p1, "l"    # Landroid/location/Location;

    .line 362
    const-string v0, "set()"

    .line 363
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 364
    invoke-super {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 365
    return-void
.end method

.method public setAccuracy(F)V
    .locals 1
    .param p1, "horizontalAccuracy"    # F

    .line 369
    const-string v0, "setAccuracy()"

    .line 370
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 371
    invoke-super {p0, p1}, Landroid/location/Location;->setAccuracy(F)V

    .line 372
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .line 376
    const-string v0, "setAltitude()"

    .line 377
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 378
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    .line 379
    return-void
.end method

.method public setBearing(F)V
    .locals 1
    .param p1, "bearing"    # F

    .line 383
    const-string v0, "setBearing()"

    .line 384
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 385
    invoke-super {p0, p1}, Landroid/location/Location;->setBearing(F)V

    .line 386
    return-void
.end method

.method public setBearingAccuracyDegrees(F)V
    .locals 1
    .param p1, "bearingAccuracyDegrees"    # F

    .line 390
    const-string v0, "setBearingAccuracyDegrees()"

    .line 391
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 392
    invoke-super {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    .line 393
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 1
    .param p1, "time"    # J

    .line 397
    const-string v0, "setElapsedRealtimeNanos()"

    .line 398
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 399
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 400
    return-void
.end method

.method public setElapsedRealtimeUncertaintyNanos(D)V
    .locals 1
    .param p1, "time"    # D

    .line 404
    const-string v0, "setElapsedRealtimeUncertaintyNanos()"

    .line 405
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 406
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setElapsedRealtimeUncertaintyNanos(D)V

    .line 407
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 411
    const-string v0, "setExtras()"

    .line 412
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 413
    invoke-super {p0, p1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 414
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .line 427
    const-string v0, "setLatitude()"

    .line 428
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 429
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 430
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .line 434
    const-string v0, "setLongitude()"

    .line 435
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 436
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 437
    return-void
.end method

.method public setMock(Z)V
    .locals 1
    .param p1, "mock"    # Z

    .line 441
    const-string v0, "setMock()"

    .line 442
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 443
    invoke-super {p0, p1}, Landroid/location/Location;->setMock(Z)V

    .line 444
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 448
    const-string v0, "setProvider()"

    .line 449
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 450
    invoke-super {p0, p1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 455
    const-string v0, "setSpeed()"

    .line 456
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 457
    invoke-super {p0, p1}, Landroid/location/Location;->setSpeed(F)V

    .line 458
    return-void
.end method

.method public setSpeedAccuracyMetersPerSecond(F)V
    .locals 1
    .param p1, "speedAccuracyMeterPerSecond"    # F

    .line 462
    const-string v0, "setSpeedAccuracyMetersPerSecond()"

    .line 463
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 464
    invoke-super {p0, p1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    .line 465
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 469
    const-string v0, "setTime()"

    .line 470
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 471
    invoke-super {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    .line 472
    return-void
.end method

.method public setVerticalAccuracyMeters(F)V
    .locals 1
    .param p1, "verticalAccuracyMeters"    # F

    .line 476
    const-string v0, "setVerticalAccuracyMeters()"

    .line 477
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 478
    invoke-super {p0, p1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    .line 479
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 483
    const-string v0, "WARNINING!!! toString()"

    .line 484
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 485
    invoke-super {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 490
    const-string v0, "writeToParcel()"

    .line 491
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 492
    invoke-super {p0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 493
    return-void
.end method
