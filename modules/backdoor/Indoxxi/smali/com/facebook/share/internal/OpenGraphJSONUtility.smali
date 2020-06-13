.class public final Lcom/facebook/share/internal/OpenGraphJSONUtility;
.super Ljava/lang/Object;
.source "OpenGraphJSONUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toJSONArray(Ljava/util/List;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONArray;
    .locals 4
    .param p0, "list"    # Ljava/util/List;
    .param p1, "photoJSONProcessor"    # Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v1, "result":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "item":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 82
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public static toJSONObject(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "action"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "photoJSONProcessor"    # Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v2, "result":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 58
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 61
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static toJSONObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "object"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "photoJSONProcessor"    # Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v2, "result":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 69
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 72
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static toJSONValue(Ljava/lang/Object;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Ljava/lang/Object;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "photoJSONProcessor"    # Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p0, :cond_1

    .line 89
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 109
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 91
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 99
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_3

    .line 100
    if-eqz p1, :cond_2

    .line 101
    check-cast p0, Lcom/facebook/share/model/SharePhoto;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-interface {p1, p0}, Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;->toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 103
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 105
    :cond_3
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_4

    .line 106
    check-cast p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 108
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 109
    check-cast p0, Ljava/util/List;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/facebook/share/internal/OpenGraphJSONUtility;->toJSONArray(Ljava/util/List;Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    .line 111
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object found for JSON serialization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
