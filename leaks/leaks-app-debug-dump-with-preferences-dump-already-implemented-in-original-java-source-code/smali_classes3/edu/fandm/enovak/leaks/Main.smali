.class public Ledu/fandm/enovak/leaks/Main;
.super Landroidx/appcompat/app/AppCompatActivity;
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


# instance fields
.field private host:Ljava/lang/String;

.field private imeiNumber:Ljava/lang/String;

.field private locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private phoneNumber:Ljava/lang/String;

.field private port:Ljava/lang/Integer;

.field private tb:Landroid/widget/ToggleButton;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    const-class v0, Ledu/fandm/enovak/leaks/Main;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    .line 48
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

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ledu/fandm/enovak/leaks/Main;)V
    .locals 0
    .param p0, "x0"    # Ledu/fandm/enovak/leaks/Main;

    .line 41
    invoke-direct {p0}, Ledu/fandm/enovak/leaks/Main;->registerListeners()V

    return-void
.end method

.method static synthetic access$200(Ledu/fandm/enovak/leaks/Main;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ledu/fandm/enovak/leaks/Main;

    .line 41
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ledu/fandm/enovak/leaks/Main;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Ledu/fandm/enovak/leaks/Main;

    .line 41
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->port:Ljava/lang/Integer;

    return-object v0
.end method

.method private prependToLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "newPart"    # Ljava/lang/String;

    .line 444
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    .local v0, "tv":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 447
    .local v1, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    return-void
.end method

.method private registerListeners()V
    .locals 10

    .line 330
    const-string v0, "network"

    sget-object v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v2, "Registering listeners"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "success":Z
    :try_start_0
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "passive"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "passive"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 337
    const/4 v2, 0x1

    .line 338
    const-string v3, "Passive Provider Listening Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "network"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 343
    const/4 v2, 0x1

    .line 344
    const-string v3, "Network Provider Listening Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 348
    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 349
    const/4 v2, 0x1

    .line 350
    const-string v3, "GPS Provider Listening Enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_2
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 354
    const-string v4, "Leaking turned on!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 358
    .local v0, "lastKnownLocation":Landroid/location/Location;
    if-eqz v0, :cond_3

    .line 359
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->leakLoc(Landroid/location/Location;)V

    .line 361
    new-instance v4, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 362
    .local v4, "obj_mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    sget-object v5, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v4, v5, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "jsonStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastKnownLocation as JSON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    .end local v3    # "jsonStr":Ljava/lang/String;
    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "jpe":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :try_start_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonProcessingException;->printStackTrace()V

    .line 374
    .end local v0    # "lastKnownLocation":Landroid/location/Location;
    .end local v1    # "jpe":Lcom/fasterxml/jackson/core/JsonProcessingException;
    .end local v4    # "obj_mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    :cond_3
    :goto_0
    nop

    .line 384
    .end local v2    # "success":Z
    goto :goto_1

    .line 375
    .restart local v2    # "success":Z
    :cond_4
    const-string v0, "No providers available!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    const-string v0, "Could not get a provider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 378
    return-void

    .line 381
    .end local v2    # "success":Z
    :catch_1
    move-exception v0

    .line 382
    .local v0, "se":Ljava/lang/SecurityException;
    const/4 v1, 0x1

    const-string v2, "Insufficient permissions to get location data"

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 383
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V

    .line 385
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_1
    return-void
.end method


# virtual methods
.method public leakIMEI(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 415
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "Phone state permissions required!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 420
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 421
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "IMEI_STR":Ljava/lang/String;
    sget-object v3, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Actual IMEI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 426
    .local v3, "imei":J
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 427
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 432
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 433
    .local v5, "mdformat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, "strDate":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Leaked IMEI: ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, "newPart":Ljava/lang/String;
    invoke-direct {p0, v7}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 437
    new-instance v8, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v8, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 438
    .local v8, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v1

    invoke-virtual {v8, v9}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 441
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

    .line 396
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "mdformat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "strDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Leaked Location: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "newPart":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    cmpg-double v7, v5, v3

    if-gez v7, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    .line 402
    const-wide v3, -0x3fafc00000000000L    # -65.0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const-wide v5, -0x3fa0c00000000000L    # -125.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_0

    .line 403
    sget-object v3, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v4, "Device seems to be in the continental United States"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    invoke-direct {p0, v2}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 409
    new-instance v3, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v3, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 410
    .local v3, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 411
    return-void
.end method

.method public leakPasswd(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 197
    const-string v0, "vegetable as JSON: "

    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 202
    .local v1, "et":Landroid/widget/EditText;
    new-instance v2, Ledu/fandm/enovak/leaks/Vegetable;

    const-string v3, "potato"

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {v2, v3, v4, v5}, Ledu/fandm/enovak/leaks/Vegetable;-><init>(Ljava/lang/String;D)V

    .line 203
    .local v2, "v1":Ledu/fandm/enovak/leaks/Vegetable;
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 204
    .local v3, "obj_mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    sget-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 206
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "jsonStr":Ljava/lang/String;
    sget-object v6, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v7, "Brown"

    iput-object v7, v2, Ledu/fandm/enovak/leaks/Vegetable;->color:Ljava/lang/String;

    .line 210
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .end local v4    # "jsonStr":Ljava/lang/String;
    .local v0, "jsonStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v as JSON: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    nop

    .end local v0    # "jsonStr":Ljava/lang/String;
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "jpe":Lcom/fasterxml/jackson/core/JsonProcessingException;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->printStackTrace()V

    .line 220
    .end local v0    # "jpe":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :goto_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "pass":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Leaked Password: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 224
    new-instance v4, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v4, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 227
    .local v4, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const-string v6, "password"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 228
    const-string v6, "a"

    .line 229
    .local v6, "coded":Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/String;

    aput-object v6, v7, v5

    invoke-virtual {v4, v7}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    .end local v6    # "coded":Ljava/lang/String;
    goto :goto_1

    .line 231
    :cond_0
    new-array v6, v7, [Ljava/lang/String;

    aput-object v0, v6, v5

    invoke-virtual {v4, v6}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 235
    :goto_1
    return-void
.end method

.method public leakPhoneNo(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 239
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    .line 243
    :cond_0
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    const-string v1, "555-1234"

    if-nez v0, :cond_1

    .line 244
    iput-object v1, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    .line 247
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Leaked Phone Number: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v1, "default phone number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    new-instance v0, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;

    invoke-direct {v0, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    .line 254
    .local v0, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ledu/fandm/enovak/leaks/Main;->phoneNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->setContentView(I)V

    .line 66
    const/high16 v0, 0x7f0f0000

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 68
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 70
    .local v2, "allDefaultPrefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 71
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SharedPrefsDump"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    goto :goto_0

    .line 76
    :cond_0
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 77
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 78
    const-string v6, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 80
    const-string v7, "Location and Phone state permissions required!"

    invoke-static {p0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    sget-object v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    const-string v7, "Requesting permissions!"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v7, "android.permission.INTERNET"

    filled-new-array {v1, v3, v7, v4, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 89
    :cond_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Ledu/fandm/enovak/leaks/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Ledu/fandm/enovak/leaks/Main;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    const v1, 0x7f07006c

    invoke-virtual {p0, v1}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, "tv":Landroid/widget/TextView;
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 94
    sget-object v3, Ledu/fandm/enovak/leaks/Main;->PERMS:[Ljava/lang/String;

    invoke-static {p0, v3, v5}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 96
    const v3, 0x7f07006b

    invoke-virtual {p0, v3}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    iput-object v3, p0, Ledu/fandm/enovak/leaks/Main;->tb:Landroid/widget/ToggleButton;

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/Menu;

    .line 126
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 127
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 132
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/fandm/enovak/leaks/SimpleLeak;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V

    .line 142
    goto :goto_0

    .line 134
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/fandm/enovak/leaks/SettingsAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V

    .line 136
    goto :goto_0

    .line 145
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/fandm/enovak/leaks/UserLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x7f070068
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 279
    return-void

    .line 264
    :pswitch_0
    const/4 v0, 0x0

    .line 265
    .local v0, "flag":Z
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p3, v2

    .line 266
    .local v3, "res":I
    if-eqz v3, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 265
    .end local v3    # "res":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 104
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "pref_cb_log_onoff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 108
    .local v1, "showLog":Ljava/lang/Boolean;
    const-string v2, "pref_et_ip"

    const-string v3, "this ain\'t it!"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ledu/fandm/enovak/leaks/Main;->host:Ljava/lang/String;

    .line 109
    const-string v2, "pref_et_port"

    const-string v3, "-1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Ledu/fandm/enovak/leaks/Main;->port:Ljava/lang/Integer;

    .line 111
    sget-object v2, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    hostName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ledu/fandm/enovak/leaks/Main;->port:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const v2, 0x7f07006d

    invoke-virtual {p0, v2}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 115
    .local v2, "tv_title":Landroid/widget/TextView;
    const v3, 0x7f07006c

    invoke-virtual {p0, v3}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 116
    .local v3, "tv_log":Landroid/widget/TextView;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 120
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_0
    return-void
.end method

.method public startLocationUpdates()V
    .locals 1

    .line 284
    const-string v0, "location"

    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    .line 286
    new-instance v0, Ledu/fandm/enovak/leaks/Main$1;

    invoke-direct {v0, p0}, Ledu/fandm/enovak/leaks/Main$1;-><init>(Ledu/fandm/enovak/leaks/Main;)V

    iput-object v0, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    .line 325
    invoke-direct {p0}, Ledu/fandm/enovak/leaks/Main;->registerListeners()V

    .line 327
    return-void
.end method

.method public startStopGPS(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 156
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tb checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ledu/fandm/enovak/leaks/Main;->tb:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Ledu/fandm/enovak/leaks/Main;->tb:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v1, :cond_1

    .line 162
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "Location permissions required!"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 166
    iget-object v1, p0, Ledu/fandm/enovak/leaks/Main;->tb:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 169
    const-string v1, "Requesting permissions!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Ledu/fandm/enovak/leaks/Main;->PERMS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 173
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->startLocationUpdates()V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V

    .line 185
    :goto_0
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->startLocationUpdates()V

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {p0}, Ledu/fandm/enovak/leaks/Main;->stopLocationUpdates()V

    .line 193
    :goto_1
    return-void
.end method

.method public stopLocationUpdates()V
    .locals 2

    .line 388
    iget-object v0, p0, Ledu/fandm/enovak/leaks/Main;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ledu/fandm/enovak/leaks/Main;->locationManager:Landroid/location/LocationManager;

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 392
    :cond_0
    return-void
.end method
