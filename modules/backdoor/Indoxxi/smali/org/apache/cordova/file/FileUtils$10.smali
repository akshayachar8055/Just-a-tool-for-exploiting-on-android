.class Lorg/apache/cordova/file/FileUtils$10;
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
    .line 372
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$10;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "fname":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 376
    .local v3, "offset":I
    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils$10;->this$0:Lorg/apache/cordova/file/FileUtils;

    int-to-long v6, v3

    invoke-static {v4, v2, v6, v7}, Lorg/apache/cordova/file/FileUtils;->access$300(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;J)J

    move-result-wide v0

    .line 377
    .local v0, "fileSize":J
    iget-object v4, p0, Lorg/apache/cordova/file/FileUtils$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    long-to-float v7, v0

    invoke-direct {v5, v6, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;F)V

    invoke-virtual {v4, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 378
    return-void
.end method
