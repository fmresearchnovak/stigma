.class public Lnet/stigma/MarkedLocation;
.super Landroid/location/Location;
.source "MarkedLocation.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public curClass:Ljava/lang/String;

.field public lineNum:J

.field private origLoc:Landroid/location/Location;

.field private tagValue:D


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .locals 2
    .param p1, "origLoc"    # Landroid/location/Location;

    .line 17
    invoke-direct {p0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 8
    const-string v0, "Stigma.MarkedLocation"

    iput-object v0, p0, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->TAG:Ljava/lang/String;

    .line 11
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->tagValue:D

    .line 18
    iput-object p1, p0, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->origLoc:Landroid/location/Location;

    .line 19
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .locals 2
    .param p1, "dest"    # Landroid/location/Location;

    .line 32
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

    .line 33
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result v1

    return v1
.end method

.method public describeContents()I
    .locals 2

    .line 44
    const-string v0, "describeContents()"

    .line 45
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 46
    invoke-super {p0}, Landroid/location/Location;->describeContents()I

    move-result v1

    return v1
.end method

.method public distanceTo(Landroid/location/Location;)F
    .locals 2
    .param p1, "dest"    # Landroid/location/Location;

    .line 55
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

    .line 56
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    return v1
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 62
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

    .line 63
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
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

    .line 70
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAccuracy()F
    .locals 2

    .line 76
    const-string v0, "getAccuracy()"

    .line 77
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 78
    invoke-super {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    return v1
.end method

.method public getAltitude()D
    .locals 3

    .line 83
    const-string v0, "getAltitude()"

    .line 84
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 85
    invoke-super {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    return-wide v1
.end method

.method public getBearing()F
    .locals 2

    .line 90
    const-string v0, "getBearing()"

    .line 91
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    return v1
.end method

.method public printLogMessage()V
    .locals 1

    .line 27
    const-string v0, ""

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->printLogMessage(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public printLogMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message_extra"    # Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MarkedLocation activity!.  File: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->curClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Line:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->lineNum:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  (extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Ledu/fandm/enovak/markedlocationstage/MarkedLocation;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method
