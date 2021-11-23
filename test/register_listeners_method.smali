.class public Ledu/fandm/enovak/leaks/Main;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Main.java"


# direct methods
.method private registerListeners()V
    .locals 10

    .line 275
    const-string v0, "network"

    sget-object v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v2, "Registering listeners"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "success":Z
    :try_start_0
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "passive"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "passive"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 282
    const/4 v2, 0x1

    .line 283
    const-string v3, "Passive Provider Listening Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "network"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 288
    const/4 v2, 0x1

    .line 289
    const-string v3, "Network Provider Listening Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 294
    const/4 v2, 0x1

    .line 295
    const-string v3, "GPS Provider Listening Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    if-eqz v2, :cond_4

    .line 299
    const-string v3, "Leaking turned on!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 303
    .local v0, "lastKnownLocation":Landroid/location/Location;
    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->leakLoc(Landroid/location/Location;)V

    .line 307
    .end local v0    # "lastKnownLocation":Landroid/location/Location;
    :cond_3
    nop

    .line 317
    .end local v2    # "success":Z
    goto :goto_0

    .line 308
    .restart local v2    # "success":Z
    :cond_4
    const-string v0, "No providers available!"

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    const-string v0, "Could not get a provider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 314
    .end local v2    # "success":Z
    :catch_0
    move-exception v0

    .line 315
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x1

    const-string v2, "Insufficient permissions to get location data"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 316
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V

    .line 318
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method