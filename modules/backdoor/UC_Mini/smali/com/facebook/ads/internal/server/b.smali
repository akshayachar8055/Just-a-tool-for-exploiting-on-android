.class public Lcom/facebook/ads/internal/server/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/facebook/ads/internal/server/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/server/b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/server/b;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/server/b;->a:Lcom/facebook/ads/internal/server/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/facebook/ads/internal/server/b;
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/server/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/ads/internal/server/b;->a:Lcom/facebook/ads/internal/server/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/server/d;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "placements"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "definition"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/c/d;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/c/d;

    move-result-object v2

    const-string v3, "feature_config"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/ads/internal/c/c;

    invoke-direct {v4, v2, v3}, Lcom/facebook/ads/internal/c/c;-><init>(Lcom/facebook/ads/internal/c/d;Ljava/lang/String;)V

    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "adapter"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "trackers"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v6, Lcom/facebook/ads/internal/c/a;

    invoke-direct {v6, v3, v5, v2}, Lcom/facebook/ads/internal/c/a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    invoke-virtual {v4, v6}, Lcom/facebook/ads/internal/c/c;->a(Lcom/facebook/ads/internal/c/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/server/d;

    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/server/d;-><init>(Lcom/facebook/ads/internal/c/c;)V

    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/server/e;
    .locals 6

    :try_start_0
    const-string v0, "placements"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "definition"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/c/d;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/c/d;

    move-result-object v1

    const-string v2, "feature_config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/internal/server/e;

    const-string v3, "message"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "code"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Lcom/facebook/ads/internal/c/c;

    invoke-direct {v5, v1, v2}, Lcom/facebook/ads/internal/c/c;-><init>(Lcom/facebook/ads/internal/c/d;Ljava/lang/String;)V

    invoke-direct {v0, v3, v4, v5}, Lcom/facebook/ads/internal/server/e;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/c/c;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/server/b;->c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/server/e;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/server/e;
    .locals 4

    new-instance v0, Lcom/facebook/ads/internal/server/e;

    const-string v1, "message"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/server/e;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/c/c;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/facebook/ads/internal/server/c;
    .locals 4

    invoke-static {p1}, Lcom/facebook/ads/internal/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/server/b;->c(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/server/e;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_0
    const-string v3, "ads"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/server/b;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/server/d;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/server/b;->b(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/server/e;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/facebook/ads/internal/server/c;

    sget-object v1, Lcom/facebook/ads/internal/server/c$a;->a:Lcom/facebook/ads/internal/server/c$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/server/c;-><init>(Lcom/facebook/ads/internal/server/c$a;Lcom/facebook/ads/internal/c/c;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x178b0 -> :sswitch_0
        0x5c4d208 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
