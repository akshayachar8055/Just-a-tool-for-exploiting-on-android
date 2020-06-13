.class public Lcom/facebook/ads/internal/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.flurry.android.FlurryAgent"

    aput-object v1, v0, v3

    const-string v1, "com.flurry.android.ads.FlurryAdErrorType"

    aput-object v1, v0, v4

    const-string v1, "com.flurry.android.ads.FlurryAdNative"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.flurry.android.ads.FlurryAdNativeAsset"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.flurry.android.ads.FlurryAdNativeListener"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/internal/d/a;->a:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.inmobi.ads.InMobiNative"

    aput-object v1, v0, v3

    const-string v1, "com.inmobi.sdk.InMobiSdk"

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/d/a;->b:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.formats.NativeAdView"

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/d/a;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/adapters/g;)Z
    .locals 2

    sget-object v0, Lcom/facebook/ads/internal/d/a$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/facebook/ads/internal/d/a;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/d/a;->a([Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/facebook/ads/internal/d/a;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/d/a;->a([Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/facebook/ads/internal/d/a;->c:[Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/d/a;->a([Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/facebook/ads/internal/d/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
