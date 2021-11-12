.method private registerListeners()V
    .locals 9

    .line 272
    const-string v0, "network"

    sget-object v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v2, "Registering listeners"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v3, "passive"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "passive"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 279
    const/4 v1, 0x1

    .line 280
    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v3, "Passive Provider Listening Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 285
    const/4 v1, 0x1

    .line 286
    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v3, "Network Provider Listening Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 291
    const/4 v1, 0x1

    .line 292
    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v3, "GPS Provider Listening Enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2
    if-eqz v1, :cond_4

    .line 296
    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v3, "Leaking turned on!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 300
    .local v0, "lastKnownLocation":Landroid/location/Location;
    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->leakLoc(Landroid/location/Location;)V

    .line 304
    .end local v0    # "lastKnownLocation":Landroid/location/Location;
    :cond_3
    nop

    .line 314
    .end local v1    # "success":Z
    goto :goto_0

    .line 305
    .restart local v1    # "success":Z
    :cond_4
    const-string v0, "No providers available!"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 306
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v2, "Could not get a provider"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    return-void

    .line 311
    .end local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 312
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x1

    const-string v2, "Insufficient permissions to get location data"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 313
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V

    .line 315
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method
