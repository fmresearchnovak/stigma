.class public Ledu/fandm/enovak/leaks/Main;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Main.java"


# methods
.method private registerListeners()V
    .locals 14

    .line 275
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    sget v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_p0:F
    
    sput v0, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v10:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for METHOD START
    
    move-object/16 v10, p0
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v11, 0x0
    
    sput v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v0:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-string v0, "network"

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SGET
    
    sget v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main__TAG:F
    
    sput v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for SGET
    
    sget-object v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v11, 0x0
    
    sput v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-string v2, "Registering listeners"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v11, 0x0
    
    sput v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v2, 0x0

    .line 280
    .local v2, "success":Z
    :try_start_0
    iget-object v3, v10, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "passive"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    iget-object v4, v10, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "passive"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v10, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 282
    const/4 v2, 0x1

    .line 283
    const-string v3, "Passive Provider Listening Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    iget-object v3, v10, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    iget-object v4, v10, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "network"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v10, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 288
    const/4 v2, 0x1

    .line 289
    const-string v3, "Network Provider Listening Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    iget-object v3, v10, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    iget-object v4, v10, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v10, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

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
    iget-object v1, v10, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 303
    .local v0, "lastKnownLocation":Landroid/location/Location;
    if-eqz v0, :cond_3

    .line 304
    invoke-virtual {v10, v0}, Ledu/fandm/enovak/leaks/Main;->leakLoc(Landroid/location/Location;)V

    .line 307
    .end local v0    # "lastKnownLocation":Landroid/location/Location;
    :cond_3
    nop

    .line 317
    .end local v2    # "success":Z
    goto :goto_0
    :cond_4
    const-string v0, "No providers available!"

    const/4 v3, 0x0

    invoke-static {v10, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    const-string v0, "Could not get a provider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v10}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void
    :catch_0
    move-exception v0

    .line 315
    .local v0, "se":Ljava/lang/SecurityException;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v11, 0x0
    
    sput v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const/4 v1, 0x1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const v11, 0x0
    
    sput v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v2:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for CONST
    
    const-string v2, "Insufficient permissions to get location data"

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    const/16 v11, 0x0
    
    sget v12, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v10:F
    
    add-float v11, v11, v12
    
    sget v12, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v2:F
    
    add-float v11, v11, v12
    
    sget v12, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v1:F
    
    add-float v11, v11, v12
    
    sput v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v1:F
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for EXTERNAL METHOD
    
    invoke-static {v10, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    
    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 316
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    sget v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_registerListeners_v10:F
    
    sput v11, Lnet/stigmastorage/StorageClass1;->edu_fandm_enovak_leaks_Main_stopLocationUpdates_p0:F
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for INTERNAL METHOD
    
    invoke-virtual {v10}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V

    .line 318
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_0
    return-void
.end method
