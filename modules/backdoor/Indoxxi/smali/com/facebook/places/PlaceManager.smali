.class public Lcom/facebook/places/PlaceManager;
.super Ljava/lang/Object;
.source "PlaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;,
        Lcom/facebook/places/PlaceManager$LocationError;
    }
.end annotation


# static fields
.field private static final CURRENT_PLACE_FEEDBACK:Ljava/lang/String; = "current_place/feedback"

.field private static final CURRENT_PLACE_RESULTS:Ljava/lang/String; = "current_place/results"

.field private static final PARAM_ACCESS_POINTS:Ljava/lang/String; = "access_points"

.field private static final PARAM_ACCURACY:Ljava/lang/String; = "accuracy"

.field private static final PARAM_ALTITUDE:Ljava/lang/String; = "altitude"

.field private static final PARAM_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field private static final PARAM_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final PARAM_CENTER:Ljava/lang/String; = "center"

.field private static final PARAM_COORDINATES:Ljava/lang/String; = "coordinates"

.field private static final PARAM_CURRENT_CONNECTION:Ljava/lang/String; = "current_connection"

.field private static final PARAM_DISTANCE:Ljava/lang/String; = "distance"

.field private static final PARAM_ENABLED:Ljava/lang/String; = "enabled"

.field private static final PARAM_FIELDS:Ljava/lang/String; = "fields"

.field private static final PARAM_FREQUENCY:Ljava/lang/String; = "frequency"

.field private static final PARAM_HEADING:Ljava/lang/String; = "heading"

.field private static final PARAM_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final PARAM_LIMIT:Ljava/lang/String; = "limit"

.field private static final PARAM_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final PARAM_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final PARAM_MIN_CONFIDENCE_LEVEL:Ljava/lang/String; = "min_confidence_level"

.field private static final PARAM_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PARAM_PLACE_ID:Ljava/lang/String; = "place_id"

.field private static final PARAM_Q:Ljava/lang/String; = "q"

.field private static final PARAM_RSSI:Ljava/lang/String; = "rssi"

.field private static final PARAM_SCANS:Ljava/lang/String; = "scans"

.field private static final PARAM_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final PARAM_SPEED:Ljava/lang/String; = "speed"

.field private static final PARAM_SSID:Ljava/lang/String; = "ssid"

.field private static final PARAM_SUMMARY:Ljava/lang/String; = "summary"

.field private static final PARAM_TRACKING:Ljava/lang/String; = "tracking"

.field private static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final PARAM_WAS_HERE:Ljava/lang/String; = "was_here"

.field private static final PARAM_WIFI:Ljava/lang/String; = "wifi"

.field private static final SEARCH:Ljava/lang/String; = "search"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/internal/ScannerException$Type;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/facebook/places/PlaceManager;->getLocationError(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/internal/LocationPackage;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/model/CurrentPlaceRequestParams;
    .param p1, "x1"    # Lcom/facebook/places/internal/LocationPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/facebook/places/PlaceManager;->getCurrentPlaceParameters(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/internal/LocationPackage;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentPlaceParameters(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/internal/LocationPackage;)Landroid/os/Bundle;
    .locals 24
    .param p0, "request"    # Lcom/facebook/places/model/CurrentPlaceRequestParams;
    .param p1, "locationPackage"    # Lcom/facebook/places/internal/LocationPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .prologue
    .line 395
    if-nez p0, :cond_0

    .line 396
    new-instance v21, Lcom/facebook/FacebookException;

    const-string v22, "Request and location must be specified."

    invoke-direct/range {v21 .. v22}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 398
    :cond_0
    if-nez p1, :cond_1

    .line 399
    new-instance p1, Lcom/facebook/places/internal/LocationPackage;

    .end local p1    # "locationPackage":Lcom/facebook/places/internal/LocationPackage;
    invoke-direct/range {p1 .. p1}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 401
    .restart local p1    # "locationPackage":Lcom/facebook/places/internal/LocationPackage;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getLocation()Landroid/location/Location;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    .line 404
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    .line 405
    new-instance v21, Lcom/facebook/FacebookException;

    const-string v22, "A location must be specified"

    invoke-direct/range {v21 .. v22}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 409
    :cond_3
    :try_start_0
    new-instance v18, Landroid/os/Bundle;

    const/16 v21, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 410
    .local v18, "parameters":Landroid/os/Bundle;
    const-string v21, "summary"

    const-string v22, "tracking"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getLimit()I

    move-result v14

    .line 412
    .local v14, "limit":I
    if-lez v14, :cond_4

    .line 413
    const-string v21, "limit"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getFields()Ljava/util/Set;

    move-result-object v13

    .line 416
    .local v13, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    .line 417
    const-string v21, "fields"

    const-string v22, ","

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_5
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    .line 422
    .local v15, "location":Landroid/location/Location;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 423
    .local v11, "coordinates":Lorg/json/JSONObject;
    const-string v21, "latitude"

    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 424
    const-string v21, "longitude"

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 425
    invoke-virtual {v15}, Landroid/location/Location;->hasAccuracy()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 426
    const-string v21, "accuracy"

    invoke-virtual {v15}, Landroid/location/Location;->getAccuracy()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 428
    :cond_6
    invoke-virtual {v15}, Landroid/location/Location;->hasAltitude()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 429
    const-string v21, "altitude"

    invoke-virtual {v15}, Landroid/location/Location;->getAltitude()D

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 431
    :cond_7
    invoke-virtual {v15}, Landroid/location/Location;->hasBearing()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 432
    const-string v21, "heading"

    invoke-virtual {v15}, Landroid/location/Location;->getBearing()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 434
    :cond_8
    invoke-virtual {v15}, Landroid/location/Location;->hasSpeed()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 435
    const-string v21, "speed"

    invoke-virtual {v15}, Landroid/location/Location;->getSpeed()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 437
    :cond_9
    const-string v21, "coordinates"

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getMinConfidenceLevel()Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    move-result-object v16

    .line 441
    .local v16, "minConfidenceLevel":Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    sget-object v21, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->LOW:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-object v21, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->MEDIUM:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    sget-object v21, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->HIGH:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 445
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    .line 446
    .local v17, "minConfidenceLevelString":Ljava/lang/String;
    const-string v21, "min_confidence_level"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .end local v17    # "minConfidenceLevelString":Ljava/lang/String;
    :cond_b
    if-eqz p1, :cond_11

    .line 451
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 452
    .local v19, "wifi":Lorg/json/JSONObject;
    const-string v21, "enabled"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 453
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/facebook/places/internal/LocationPackage;->connectedWifi:Lcom/facebook/places/internal/WifiScanResult;

    .line 454
    .local v10, "connectedWifi":Lcom/facebook/places/internal/WifiScanResult;
    if-eqz v10, :cond_c

    .line 455
    const-string v21, "current_connection"

    invoke-static {v10}, Lcom/facebook/places/PlaceManager;->getWifiScanJson(Lcom/facebook/places/internal/WifiScanResult;)Lorg/json/JSONObject;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/facebook/places/internal/LocationPackage;->ambientWifi:Ljava/util/List;

    .line 458
    .local v4, "ambientWifi":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    if-eqz v4, :cond_e

    .line 459
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 460
    .local v5, "array":Lorg/json/JSONArray;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/facebook/places/internal/WifiScanResult;

    .line 461
    .local v20, "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    invoke-static/range {v20 .. v20}, Lcom/facebook/places/PlaceManager;->getWifiScanJson(Lcom/facebook/places/internal/WifiScanResult;)Lorg/json/JSONObject;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 486
    .end local v4    # "ambientWifi":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v10    # "connectedWifi":Lcom/facebook/places/internal/WifiScanResult;
    .end local v11    # "coordinates":Lorg/json/JSONObject;
    .end local v13    # "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "limit":I
    .end local v15    # "location":Landroid/location/Location;
    .end local v16    # "minConfidenceLevel":Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .end local v18    # "parameters":Landroid/os/Bundle;
    .end local v19    # "wifi":Lorg/json/JSONObject;
    .end local v20    # "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    :catch_0
    move-exception v12

    .line 487
    .local v12, "ex":Lorg/json/JSONException;
    new-instance v21, Lcom/facebook/FacebookException;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 463
    .end local v12    # "ex":Lorg/json/JSONException;
    .restart local v4    # "ambientWifi":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    .restart local v5    # "array":Lorg/json/JSONArray;
    .restart local v10    # "connectedWifi":Lcom/facebook/places/internal/WifiScanResult;
    .restart local v11    # "coordinates":Lorg/json/JSONObject;
    .restart local v13    # "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "limit":I
    .restart local v15    # "location":Landroid/location/Location;
    .restart local v16    # "minConfidenceLevel":Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .restart local v18    # "parameters":Landroid/os/Bundle;
    .restart local v19    # "wifi":Lorg/json/JSONObject;
    :cond_d
    :try_start_1
    const-string v21, "access_points"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    .end local v5    # "array":Lorg/json/JSONArray;
    :cond_e
    const-string v21, "wifi"

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 469
    .local v6, "bluetooth":Lorg/json/JSONObject;
    const-string v21, "enabled"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 470
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    .line 472
    .local v9, "bluetoothScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    if-eqz v9, :cond_10

    .line 473
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 474
    .restart local v5    # "array":Lorg/json/JSONArray;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/places/internal/BluetoothScanResult;

    .line 475
    .local v8, "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 476
    .local v7, "bluetoothData":Lorg/json/JSONObject;
    const-string v22, "payload"

    iget-object v0, v8, Lcom/facebook/places/internal/BluetoothScanResult;->payload:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string v22, "rssi"

    iget v0, v8, Lcom/facebook/places/internal/BluetoothScanResult;->rssi:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 480
    .end local v7    # "bluetoothData":Lorg/json/JSONObject;
    .end local v8    # "bluetoothScanResult":Lcom/facebook/places/internal/BluetoothScanResult;
    :cond_f
    const-string v21, "scans"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    .end local v5    # "array":Lorg/json/JSONArray;
    :cond_10
    const-string v21, "bluetooth"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 485
    .end local v4    # "ambientWifi":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    .end local v6    # "bluetooth":Lorg/json/JSONObject;
    .end local v9    # "bluetoothScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/BluetoothScanResult;>;"
    .end local v10    # "connectedWifi":Lcom/facebook/places/internal/WifiScanResult;
    .end local v19    # "wifi":Lorg/json/JSONObject;
    :cond_11
    return-object v18
.end method

.method private static getLocationError(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;
    .locals 1
    .param p0, "type"    # Lcom/facebook/places/internal/ScannerException$Type;

    .prologue
    .line 501
    sget-object v0, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    if-ne p0, v0, :cond_0

    .line 502
    sget-object v0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_PERMISSION_DENIED:Lcom/facebook/places/PlaceManager$LocationError;

    .line 508
    :goto_0
    return-object v0

    .line 503
    :cond_0
    sget-object v0, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    if-ne p0, v0, :cond_1

    .line 504
    sget-object v0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_SERVICES_DISABLED:Lcom/facebook/places/PlaceManager$LocationError;

    goto :goto_0

    .line 505
    :cond_1
    sget-object v0, Lcom/facebook/places/internal/ScannerException$Type;->TIMEOUT:Lcom/facebook/places/internal/ScannerException$Type;

    if-ne p0, v0, :cond_2

    .line 506
    sget-object v0, Lcom/facebook/places/PlaceManager$LocationError;->LOCATION_TIMEOUT:Lcom/facebook/places/PlaceManager$LocationError;

    goto :goto_0

    .line 508
    :cond_2
    sget-object v0, Lcom/facebook/places/PlaceManager$LocationError;->UNKNOWN_ERROR:Lcom/facebook/places/PlaceManager$LocationError;

    goto :goto_0
.end method

.method private static getWifiScanJson(Lcom/facebook/places/internal/WifiScanResult;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "wifiScanResult"    # Lcom/facebook/places/internal/WifiScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 493
    .local v0, "wifiData":Lorg/json/JSONObject;
    const-string v1, "mac_address"

    iget-object v2, p0, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v1, "ssid"

    iget-object v2, p0, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v1, "signal_strength"

    iget v2, p0, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 496
    const-string v1, "frequency"

    iget v2, p0, Lcom/facebook/places/internal/WifiScanResult;->frequency:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 497
    return-object v0
.end method

.method public static newCurrentPlaceFeedbackRequest(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;)Lcom/facebook/GraphRequest;
    .locals 8
    .param p0, "requestParams"    # Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "placeId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->getTracking()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "tracking":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->wasHere()Ljava/lang/Boolean;

    move-result-object v3

    .line 375
    .local v3, "wasHere":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 376
    :cond_0
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "tracking, placeId and wasHere must be specified."

    invoke-direct {v4, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 380
    .local v0, "parameters":Landroid/os/Bundle;
    const-string v4, "tracking"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v4, "place_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v4, "was_here"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 384
    new-instance v4, Lcom/facebook/GraphRequest;

    .line 385
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    const-string v6, "current_place/feedback"

    sget-object v7, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {v4, v5, v6, v0, v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 384
    return-object v4
.end method

.method public static newCurrentPlaceRequest(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
    .locals 5
    .param p0, "requestParams"    # Lcom/facebook/places/model/CurrentPlaceRequestParams;
    .param p1, "callback"    # Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    .prologue
    const/4 v4, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getLocation()Landroid/location/Location;

    move-result-object v1

    .line 315
    .local v1, "location":Landroid/location/Location;
    invoke-virtual {p0}, Lcom/facebook/places/model/CurrentPlaceRequestParams;->getScanMode()Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    move-result-object v2

    .line 317
    .local v2, "scanMode":Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    new-instance v0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    invoke-direct {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;-><init>()V

    .line 321
    .local v0, "builder":Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->setLocationScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    .line 323
    if-eqz v2, :cond_0

    sget-object v3, Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;->LOW_LATENCY:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    if-ne v2, v3, :cond_0

    .line 326
    invoke-virtual {v0, v4}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->setWifiActiveScanAllowed(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    .line 330
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->build()Lcom/facebook/places/internal/LocationPackageRequestParams;

    move-result-object v3

    new-instance v4, Lcom/facebook/places/PlaceManager$2;

    invoke-direct {v4, p1, p0}, Lcom/facebook/places/PlaceManager$2;-><init>(Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;Lcom/facebook/places/model/CurrentPlaceRequestParams;)V

    .line 329
    invoke-static {v3, v4}, Lcom/facebook/places/internal/LocationPackageManager;->requestLocationPackage(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V

    .line 351
    return-void

    :cond_1
    move v3, v4

    .line 321
    goto :goto_0
.end method

.method public static newPlaceInfoRequest(Lcom/facebook/places/model/PlaceInfoRequestParams;)Lcom/facebook/GraphRequest;
    .locals 6
    .param p0, "requestParams"    # Lcom/facebook/places/model/PlaceInfoRequestParams;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceInfoRequestParams;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "placeId":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 280
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "placeId must be specified."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 283
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 285
    .local v1, "parameters":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/places/model/PlaceInfoRequestParams;->getFields()Ljava/util/Set;

    move-result-object v0

    .line 286
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    const-string v3, "fields"

    const-string v4, ","

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_1
    new-instance v3, Lcom/facebook/GraphRequest;

    .line 291
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v3, v4, v2, v1, v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 290
    return-object v3
.end method

.method public static newPlaceSearchRequest(Lcom/facebook/places/model/PlaceSearchRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
    .locals 3
    .param p0, "requestParams"    # Lcom/facebook/places/model/PlaceSearchRequestParams;
    .param p1, "callback"    # Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    .prologue
    const/4 v1, 0x0

    .line 168
    new-instance v0, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    invoke-direct {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;-><init>()V

    .line 169
    .local v0, "builder":Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;
    invoke-virtual {v0, v1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->setWifiScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    .line 170
    invoke-virtual {v0, v1}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->setBluetoothScanEnabled(Z)Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;

    .line 173
    invoke-virtual {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams$Builder;->build()Lcom/facebook/places/internal/LocationPackageRequestParams;

    move-result-object v1

    new-instance v2, Lcom/facebook/places/PlaceManager$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/places/PlaceManager$1;-><init>(Lcom/facebook/places/model/PlaceSearchRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V

    .line 172
    invoke-static {v1, v2}, Lcom/facebook/places/internal/LocationPackageManager;->requestLocationPackage(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V

    .line 187
    return-void
.end method

.method public static newPlaceSearchRequestForLocation(Lcom/facebook/places/model/PlaceSearchRequestParams;Landroid/location/Location;)Lcom/facebook/GraphRequest;
    .locals 16
    .param p0, "requestParams"    # Lcom/facebook/places/model/PlaceSearchRequestParams;
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getSearchText()Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "searchText":Ljava/lang/String;
    if-nez p1, :cond_0

    if-nez v7, :cond_0

    .line 211
    new-instance v8, Lcom/facebook/FacebookException;

    const-string v9, "Either location or searchText must be specified."

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 213
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getLimit()I

    move-result v5

    .line 214
    .local v5, "limit":I
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getFields()Ljava/util/Set;

    move-result-object v4

    .line 215
    .local v4, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 217
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Landroid/os/Bundle;

    const/4 v8, 0x7

    invoke-direct {v6, v8}, Landroid/os/Bundle;-><init>(I)V

    .line 218
    .local v6, "parameters":Landroid/os/Bundle;
    const-string v8, "type"

    const-string v9, "place"

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p1, :cond_1

    .line 221
    const-string v8, "center"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%f,%f"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    .line 223
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 221
    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/places/model/PlaceSearchRequestParams;->getDistance()I

    move-result v3

    .line 230
    .local v3, "distance":I
    if-lez v3, :cond_1

    .line 231
    const-string v8, "distance"

    invoke-virtual {v6, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    .end local v3    # "distance":I
    :cond_1
    if-lez v5, :cond_2

    .line 235
    const-string v8, "limit"

    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    :cond_2
    invoke-static {v7}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 238
    const-string v8, "q"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_3
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 241
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 242
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 243
    .local v2, "category":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 245
    .end local v2    # "category":Ljava/lang/String;
    :cond_4
    const-string v8, "categories"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 248
    const-string v8, "fields"

    const-string v9, ","

    invoke-static {v9, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_6
    new-instance v8, Lcom/facebook/GraphRequest;

    .line 252
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v9

    const-string v10, "search"

    sget-object v11, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v8, v9, v10, v6, v11}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 251
    return-object v8
.end method
