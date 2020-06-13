.class Lorg/apache/cordova/file/FileUtils$13;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Lorg/apache/cordova/file/FileUtils$FileOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/file/FileUtils;->execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/file/FileUtils;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/file/FileUtils;

    .prologue
    .line 401
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$13;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 404
    .local v0, "fstype":I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v2

    .line 405
    .local v2, "requiredSize":J
    iget-object v1, p0, Lorg/apache/cordova/file/FileUtils$13;->this$0:Lorg/apache/cordova/file/FileUtils;

    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils$13;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/cordova/file/FileUtils;->access$600(Lorg/apache/cordova/file/FileUtils;IJLorg/apache/cordova/CallbackContext;)V

    .line 406
    return-void
.end method
