.class public Lnet/stigma/MarkedLocation;
.super Landroid/location/Location;
.source "MarkedLocation.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private origLoc:Landroid/location/Location;

.field private tagValue:D


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 2
    .param p1, "origLoc"    # Landroid/location/Location;

    .line 14
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 8
    const-string v0, "Stigma.MarkedLocation"

    iput-object v0, p0, Lnet/stigma/MarkedLocation;->TAG:Ljava/lang/String;

    .line 11
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lnet/stigma/MarkedLocation;->tagValue:D

    .line 15
    iput-object p1, p0, Lnet/stigma/MarkedLocation;->origLoc:Landroid/location/Location;

    .line 16
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 2
    .param p1, "dest"    # Landroid/location/Location;

    .line 31
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

    .line 32
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v1

    return v1
.end method

.method public describeContents()I
    .locals 2

    .line 43
    const-string v0, "describeContents()"

    .line 44
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 45
    invoke-super {p0}, Landroid/location/Location;->describeContents()I

    move-result v1

    return v1
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 2
    .param p1, "dest"    # Landroid/location/Location;

    .line 54
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

    .line 55
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    return v1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 61
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

    .line 62
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1, p2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 68
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

    .line 69
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAccuracy()F
    .locals 2

    .line 75
    const-string v0, "getAccuracy()"

    .line 76
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    return v1
.end method

.method public getAltitude()D
    .locals 3

    .line 82
    const-string v0, "getAltitude()"

    .line 83
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 84
    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    return-wide v1
.end method

.method public getBearing()F
    .locals 2

    .line 89
    const-string v0, "getBearing()"

    .line 90
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    return v1
.end method

.method public printLogMessages()V
    .locals 1

    .line 26
    const-string v0, ""

    invoke-virtual {p0, v0}, Lnet/stigma/MarkedLocation;->printLogMessages(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public printLogMessages(Ljava/lang/String;)V
    .locals 2
    .param p1, "message_extra"    # Ljava/lang/String;

    .line 19
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

    .line 20
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lnet/stigma/MarkedLocation;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method
