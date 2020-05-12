.class public Ledu/fandm/enovak/leaks/Main;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    }
.end annotation


# static fields
.field private static final MY_PERMISSIONS_REQUEST:I = 0x1

.field private static final PERMS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


.field public static clinit_v0_TAINT:I

.field public static prependToLog_v2_TAINT:I

.field public static prependToLog_v0_TAINT:I

.field public static prependToLog_v1_TAINT:I

.field public static registerListeners_v0_TAINT:I

.field public static registerListeners_v2_TAINT:I

.field public static registerListeners_v1_TAINT:I

.field public static leakIMEI_v0_TAINT:I

.field public static leakIMEI_v1_TAINT:I

.field public static leakIMEI_v2_TAINT:I

.field public static leakIMEI_v4_TAINT:I

.field public static leakIMEI_v3_TAINT:I

.field public static leakIMEI_v5_TAINT:I

.field public static leakIMEI_v6_TAINT:I

.field public static leakIMEI_v7_TAINT:I

.field public static leakLoc_v1_TAINT:I

.field public static leakLoc_v0_TAINT:I

.field public static leakLoc_v3_TAINT:I

.field public static leakLoc_v2_TAINT:I

.field public static leakPasswd_v1_TAINT:I

.field public static leakPasswd_v0_TAINT:I

.field public static leakPasswd_v2_TAINT:I

.field public static leakPhoneNo_v0_TAINT:I

.field public static onCreate_v0_TAINT:I

.field public static onCreate_v5_TAINT:I

.field public static onRequestPermissionsResult_v2_TAINT:I

.field public static onResume_v0_TAINT:I

.field public static onResume_v1_TAINT:I

.field public static onResume_v2_TAINT:I

.field public static onResume_v3_TAINT:I

.field public static startStopGPS_v1_TAINT:I

.field public static startStopGPS_v0_TAINT:I

# instance fields
.field private host:Ljava/lang/String;

.field private imeiNumber:Ljava/lang/String;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private phoneNumber:Ljava/lang/String;

.field private port:Ljava/lang/Integer;

.field private tb:Landroid/widget/ToggleButton;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    const-class v0, Ledu/fandm/enovak/leaks/Main;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v4, 0x0
    const/4 v5, 0x0
    sget v5, Ledu/fandm/enovak/leaks/Main;->clinit_v0_TAINT:I
    or-int v4, v4, v5
    sput v4, Ledu/fandm/enovak/leaks/Main;->clinit_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    .line 44
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.INTERNET"

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledu/fandm/enovak/leaks/Main;->PERMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ledu/fandm/enovak/leaks/Main;)V
    .locals 0
    .param p0, "x0"    # Ledu/fandm/enovak/leaks/Main;

    .line 37
    invoke-direct {p0}, Ledu/fandm/enovak/leaks/Main;->registerListeners()V

    return-void
.end method

.method static synthetic access$200(Ledu/fandm/enovak/leaks/Main;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ledu/fandm/enovak/leaks/Main;

    .line 37
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ledu/fandm/enovak/leaks/Main;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Ledu/fandm/enovak/leaks/Main;

    .line 37
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->port:Ljava/lang/Integer;

    return-object v0
.end method

.method private prependToLog(Ljava/lang/String;)V
    .locals 6
    .param p1, "newPart"    # Ljava/lang/String;

    .line 365
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 366
    .local v0, "tv":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v4, 0x0
    const/4 v5, 0x0
    sget v5, Ledu/fandm/enovak/leaks/Main;->prependToLog_v2_TAINT:I
    or-int v4, v4, v5
    sput v4, Ledu/fandm/enovak/leaks/Main;->prependToLog_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v4, 0x0
    const/4 v5, 0x0
    sget v5, Ledu/fandm/enovak/leaks/Main;->prependToLog_v0_TAINT:I
    or-int v4, v4, v5
    sput v4, Ledu/fandm/enovak/leaks/Main;->prependToLog_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v4, 0x0
    const/4 v5, 0x0
    sget v5, Ledu/fandm/enovak/leaks/Main;->prependToLog_v2_TAINT:I
    or-int v4, v4, v5
    sput v4, Ledu/fandm/enovak/leaks/Main;->prependToLog_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v4, 0x0
    const/4 v5, 0x0
    sget v5, Ledu/fandm/enovak/leaks/Main;->prependToLog_v1_TAINT:I
    or-int v4, v4, v5
    sput v4, Ledu/fandm/enovak/leaks/Main;->prependToLog_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method

.method private registerListeners()V
    .locals 11

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

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v9, 0x0
    const/4 v10, 0x0
    sget v10, Ledu/fandm/enovak/leaks/Main;->registerListeners_v2_TAINT:I
    or-int v9, v9, v10
    sget v10, Ledu/fandm/enovak/leaks/Main;->registerListeners_v0_TAINT:I
    or-int v9, v9, v10
    sput v9, Ledu/fandm/enovak/leaks/Main;->registerListeners_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
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

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v9, 0x0
    const/4 v10, 0x0
    sget v10, Ledu/fandm/enovak/leaks/Main;->registerListeners_v0_TAINT:I
    or-int v9, v9, v10
    sget v10, Ledu/fandm/enovak/leaks/Main;->registerListeners_v2_TAINT:I
    or-int v9, v9, v10
    sput v9, Ledu/fandm/enovak/leaks/Main;->registerListeners_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
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

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v9, 0x0
    const/4 v10, 0x0
    sget v10, Ledu/fandm/enovak/leaks/Main;->registerListeners_v2_TAINT:I
    or-int v9, v9, v10
    sget v10, Ledu/fandm/enovak/leaks/Main;->registerListeners_v1_TAINT:I
    or-int v9, v9, v10
    sput v9, Ledu/fandm/enovak/leaks/Main;->registerListeners_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
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

.method public leakIMEI(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .line 336
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "Phone state permissions required!"

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v10, 0x0
    const/4 v11, 0x0
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v0_TAINT:I
    or-int v10, v10, v11
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v1_TAINT:I
    or-int v10, v10, v11
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 341
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 342
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()
    const v10, 0x1
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "IMEI_STR":Ljava/lang/String;
    sget-object v3, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Actual IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v10, 0x0
    const/4 v11, 0x0
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v4_TAINT:I
    or-int v10, v10, v11
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v4_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v10, 0x0
    const/4 v11, 0x0
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v2_TAINT:I
    or-int v10, v10, v11
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v3_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 347
    .local v3, "imei":J
    const-wide/16 v5, 0x1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/4 v10, 0x0
    const/4 v11, 0x0
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v3_TAINT:I
    or-int v10, v10, v11
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v5_TAINT:I
    or-int v10, v10, v11
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v3_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    add-long/2addr v3, v5

    .line 348
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v10, 0x0
    const/4 v11, 0x0
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v3_TAINT:I
    or-int v10, v10, v11
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v4_TAINT:I
    or-int v10, v10, v11
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 353
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    .local v5, "mdformat":Ljava/text/SimpleDateFormat;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v10, 0x0
    const/4 v11, 0x0
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v6_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v10, 0x0
    const/4 v11, 0x0
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v6_TAINT:I
    or-int v10, v10, v11
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v6_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v10, 0x0
    const/4 v11, 0x0
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v5_TAINT:I
    or-int v10, v10, v11
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v6_TAINT:I
    or-int v10, v10, v11
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v6_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "strDate":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Leaked IMEI: ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v10, 0x0
    const/4 v11, 0x0
    sget v11, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v7_TAINT:I
    or-int v10, v10, v11
    sput v10, Ledu/fandm/enovak/leaks/Main;->leakIMEI_v7_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "newPart":Ljava/lang/String;
    invoke-direct {p0, v7}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 358
    new-instance v8, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v8, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 359
    .local v8, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v1

    invoke-virtual {v8, v9}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 362
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "IMEI_STR":Ljava/lang/String;
    .end local v3    # "imei":J
    .end local v5    # "mdformat":Ljava/text/SimpleDateFormat;
    .end local v6    # "strDate":Ljava/lang/String;
    .end local v7    # "newPart":Ljava/lang/String;
    .end local v8    # "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    :goto_0
    return-void
.end method

.method public leakLoc(Landroid/location/Location;)V
    .locals 8
    .param p1, "loc"    # Landroid/location/Location;

    .line 324
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "mdformat":Ljava/text/SimpleDateFormat;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakLoc_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sget v7, Ledu/fandm/enovak/leaks/Main;->leakLoc_v1_TAINT:I
    or-int v6, v6, v7
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakLoc_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sget v7, Ledu/fandm/enovak/leaks/Main;->leakLoc_v0_TAINT:I
    or-int v6, v6, v7
    sget v7, Ledu/fandm/enovak/leaks/Main;->leakLoc_v1_TAINT:I
    or-int v6, v6, v7
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakLoc_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "strDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaked Location: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakLoc_v3_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakLoc_v3_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ") at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sget v7, Ledu/fandm/enovak/leaks/Main;->leakLoc_v2_TAINT:I
    or-int v6, v6, v7
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakLoc_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "newPart":Ljava/lang/String;
    invoke-direct {p0, v2}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 330
    new-instance v3, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v3, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 331
    .local v3, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 332
    return-void
.end method

.method public leakPasswd(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 180
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 181
    .local v0, "et":Landroid/widget/EditText;
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sget v7, Ledu/fandm/enovak/leaks/Main;->leakPasswd_v0_TAINT:I
    or-int v6, v6, v7
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakPasswd_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sget v7, Ledu/fandm/enovak/leaks/Main;->leakPasswd_v1_TAINT:I
    or-int v6, v6, v7
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakPasswd_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "pass":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaked Password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sget v7, Ledu/fandm/enovak/leaks/Main;->leakPasswd_v2_TAINT:I
    or-int v6, v6, v7
    sput v6, Ledu/fandm/enovak/leaks/Main;->leakPasswd_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 185
    new-instance v2, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v2, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 188
    .local v2, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const-string v3, "password"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 189
    const-string v3, "a"

    .line 190
    .local v3, "coded":Ljava/lang/String;
    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v4

    invoke-virtual {v2, v5}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 191
    .end local v3    # "coded":Ljava/lang/String;
    goto :goto_0

    .line 192
    :cond_0
    new-array v3, v5, [Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    :goto_0
    return-void
.end method

.method public leakPhoneNo(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 201
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->telephonyManager:Landroid/telephony/TelephonyManager;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v4, 0x0
    const/4 v5, 0x0
    sget v5, Ledu/fandm/enovak/leaks/Main;->leakPhoneNo_v0_TAINT:I
    or-int v4, v4, v5
    sput v4, Ledu/fandm/enovak/leaks/Main;->leakPhoneNo_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    .line 205
    :cond_0
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 206
    const-string v0, "555-1234"

    iput-object v0, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leaked Phone Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v4, 0x0
    const/4 v5, 0x0
    sget v5, Ledu/fandm/enovak/leaks/Main;->leakPhoneNo_v0_TAINT:I
    or-int v4, v4, v5
    sput v4, Ledu/fandm/enovak/leaks/Main;->leakPhoneNo_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v0, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 212
    .local v0, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->setContentView(I)V

    .line 62
    const/4 v0, 0x0

    const/high16 v1, 0x7f0f0000

    invoke-static {p0, v1, v0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 66
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    const-string v5, "Location and Phone state permissions required!"

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v6, 0x0
    const/4 v7, 0x0
    sget v7, Ledu/fandm/enovak/leaks/Main;->onCreate_v5_TAINT:I
    or-int v6, v6, v7
    sget v7, Ledu/fandm/enovak/leaks/Main;->onCreate_v0_TAINT:I
    or-int v6, v6, v7
    sput v6, Ledu/fandm/enovak/leaks/Main;->onCreate_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {p0, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v5, "Requesting permissions!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "android.permission.INTERNET"

    filled-new-array {v0, v1, v5, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 79
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Ledu/fandm/enovak/leaks/Main;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 81
    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, "tv":Landroid/widget/TextView;
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 84
    sget-object v1, Ledu/fandm/enovak/leaks/Main;->PERMS:[Ljava/lang/String;

    invoke-static {p0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 86
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Ledu/fandm/enovak/leaks/Main;->tb:Landroid/widget/ToggleButton;

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/Menu;

    .line 114
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 115
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 116
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/fandm/enovak/leaks/SimpleLeak;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/fandm/enovak/leaks/SettingsAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V

    .line 124
    nop

    .line 133
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x7f070056
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 218
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 237
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    .line 223
    .local v0, "flag":Z
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p3, v2

    .line 224
    .local v3, "res":I
    if-eqz v3, :cond_1

    .line 225
    const/4 v0, 0x1

    .line 223
    .end local v3    # "res":I
    :cond_1
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    const/4 v4, 0x0
    const/4 v5, 0x0
    sget v5, Ledu/fandm/enovak/leaks/Main;->onRequestPermissionsResult_v2_TAINT:I
    or-int v4, v4, v5
    sget v5, Ledu/fandm/enovak/leaks/Main;->onRequestPermissionsResult_v2_TAINT:I
    or-int v4, v4, v5
    sput v4, Ledu/fandm/enovak/leaks/Main;->onRequestPermissionsResult_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for ADD instruction
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 91
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 93
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v5, 0x0
    const/4 v6, 0x0
    sput v5, Ledu/fandm/enovak/leaks/Main;->onResume_v0_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "pref_cb_log_onoff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v5, 0x0
    const/4 v6, 0x0
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v1_TAINT:I
    or-int v5, v5, v6
    sput v5, Ledu/fandm/enovak/leaks/Main;->onResume_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 96
    .local v1, "showLog":Ljava/lang/Boolean;
    const-string v2, "pref_et_ip"

    const-string v3, "this ain\'t it!"

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v5, 0x0
    const/4 v6, 0x0
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v0_TAINT:I
    or-int v5, v5, v6
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v2_TAINT:I
    or-int v5, v5, v6
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v3_TAINT:I
    or-int v5, v5, v6
    sput v5, Ledu/fandm/enovak/leaks/Main;->onResume_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ledu/fandm/enovak/leaks/Main;->host:Ljava/lang/String;

    .line 97
    const-string v2, "pref_et_port"

    const-string v3, "-1"

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v5, 0x0
    const/4 v6, 0x0
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v0_TAINT:I
    or-int v5, v5, v6
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v2_TAINT:I
    or-int v5, v5, v6
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v3_TAINT:I
    or-int v5, v5, v6
    sput v5, Ledu/fandm/enovak/leaks/Main;->onResume_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v5, 0x0
    const/4 v6, 0x0
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v2_TAINT:I
    or-int v5, v5, v6
    sput v5, Ledu/fandm/enovak/leaks/Main;->onResume_v2_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Ledu/fandm/enovak/leaks/Main;->port:Ljava/lang/Integer;

    .line 99
    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "    hostName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->port:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v5, 0x0
    const/4 v6, 0x0
    sget v6, Ledu/fandm/enovak/leaks/Main;->onResume_v3_TAINT:I
    or-int v5, v5, v6
    sput v5, Ledu/fandm/enovak/leaks/Main;->onResume_v3_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v2, 0x7f07005a

    invoke-virtual {p0, v2}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    .local v2, "tv_title":Landroid/widget/TextView;
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, "tv_log":Landroid/widget/TextView;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :goto_0
    return-void
.end method

.method public startLocationUpdates()V
    .locals 1

    .line 242
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    .line 244
    new-instance v0, Ledu/fandm/enovak/leaks/Main$1;

    invoke-direct {v0, p0}, Ledu/fandm/enovak/leaks/Main$1;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    iput-object v0, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    .line 267
    invoke-direct {p0}, Ledu/fandm/enovak/leaks/Main;->registerListeners()V

    .line 269
    return-void
.end method

.method public startStopGPS(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 139
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tb checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->tb:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sget v4, Ledu/fandm/enovak/leaks/Main;->startStopGPS_v1_TAINT:I
    or-int v3, v3, v4
    sput v3, Ledu/fandm/enovak/leaks/Main;->startStopGPS_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->tb:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v0, :cond_1

    .line 145
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    const-string v1, "Location permissions required!"

    
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    const/4 v3, 0x0
    const/4 v4, 0x0
    sget v4, Ledu/fandm/enovak/leaks/Main;->startStopGPS_v1_TAINT:I
    or-int v3, v3, v4
    sget v4, Ledu/fandm/enovak/leaks/Main;->startStopGPS_v0_TAINT:I
    or-int v3, v3, v4
    sput v3, Ledu/fandm/enovak/leaks/Main;->startStopGPS_v1_TAINT:I
    # IFT INSTRUCTIONS ADDED BY STIGMA for external method call
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v1, p0, Ledu/fandm/enovak/leaks/Main;->tb:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 152
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v1, "Requesting permissions!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->PERMS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 156
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->startLocationUpdates()V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V

    .line 168
    :goto_0
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->startLocationUpdates()V

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V

    .line 176
    :goto_1
    return-void
.end method

.method public stopLocationUpdates()V
    .locals 2

    .line 318
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 320
    return-void
.end method

