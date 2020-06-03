.class Ledu/fandm/enovak/leaks/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/fandm/enovak/leaks/Main;->startLocationUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field public static onLocationChanged_v0_TAINT:I

.field public static onLocationChanged_v1_TAINT:I

.field public static onProviderDisabled_v0_TAINT:I

.field public static onProviderDisabled_v1_TAINT:I

.field public static onProviderEnabled_v0_TAINT:I

.field public static onProviderEnabled_v1_TAINT:I

.field public static onStatusChanged_v0_TAINT:I

.field public static onStatusChanged_v1_TAINT:I

# instance fields
.field final synthetic this$0:Ledu/fandm/enovak/leaks/Main;


# methods
.method constructor <init>(Ledu/fandm/enovak/leaks/Main;)V
    .locals 0
    .param p1, "this$0"    # Ledu/fandm/enovak/leaks/Main;

    .line 235
    iput-object p1, p0, Ledu/fandm/enovak/leaks/Main$1;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .line 239
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sput v3, Ledu/fandm/enovak/leaks/Main$1;->onLocationChanged_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {}, Ledu/fandm/enovak/leaks/Main;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location Changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sget v4, Ledu/fandm/enovak/leaks/Main$1;->onLocationChanged_v1_TAINT:I
    or-int v3, v3, v4
    sput v3, Ledu/fandm/enovak/leaks/Main$1;->onLocationChanged_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main$1;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-virtual {v0, p1}, Ledu/fandm/enovak/leaks/Main;->leakLoc(Landroid/location/Location;)V

    .line 241
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 253
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sput v3, Ledu/fandm/enovak/leaks/Main$1;->onProviderDisabled_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {}, Ledu/fandm/enovak/leaks/Main;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sget v4, Ledu/fandm/enovak/leaks/Main$1;->onProviderDisabled_v1_TAINT:I
    or-int v3, v3, v4
    sput v3, Ledu/fandm/enovak/leaks/Main$1;->onProviderDisabled_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main$1;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-static {v0}, Ledu/fandm/enovak/leaks/Main;->access$100(Ledu/fandm/enovak/leaks/Main;)V

    .line 255
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 248
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sput v3, Ledu/fandm/enovak/leaks/Main$1;->onProviderEnabled_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {}, Ledu/fandm/enovak/leaks/Main;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sget v4, Ledu/fandm/enovak/leaks/Main$1;->onProviderEnabled_v1_TAINT:I
    or-int v3, v3, v4
    sput v3, Ledu/fandm/enovak/leaks/Main$1;->onProviderEnabled_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main$1;->this$0:Ledu/fandm/enovak/leaks/Main;

    invoke-static {v0}, Ledu/fandm/enovak/leaks/Main;->access$100(Ledu/fandm/enovak/leaks/Main;)V

    .line 250
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 244
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sput v3, Ledu/fandm/enovak/leaks/Main$1;->onStatusChanged_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {}, Ledu/fandm/enovak/leaks/Main;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status Changed!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sget v4, Ledu/fandm/enovak/leaks/Main$1;->onStatusChanged_v1_TAINT:I
    or-int v3, v3, v4
    sput v3, Ledu/fandm/enovak/leaks/Main$1;->onStatusChanged_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

