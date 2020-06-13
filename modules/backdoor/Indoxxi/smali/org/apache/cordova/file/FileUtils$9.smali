.class Lorg/apache/cordova/file/FileUtils$9;
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

.field final synthetic val$rawArgs:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/file/FileUtils;

    .prologue
    .line 352
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$9;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$9;->val$rawArgs:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/file/FileUtils$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONArray;)V
    .locals 11
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
    const/4 v9, 0x3

    const/4 v10, 0x1

    .line 354
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "fname":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils$9;->this$0:Lorg/apache/cordova/file/FileUtils;

    invoke-static {v7, v1}, Lorg/apache/cordova/file/FileUtils;->access$000(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "nativeURL"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "nativeURL":Ljava/lang/String;
    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "data":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    .line 358
    .local v6, "offset":I
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 360
    .local v4, "isBinary":Ljava/lang/Boolean;
    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils$9;->this$0:Lorg/apache/cordova/file/FileUtils;

    invoke-static {v7, v5, v9}, Lorg/apache/cordova/file/FileUtils;->access$100(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 361
    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils$9;->this$0:Lorg/apache/cordova/file/FileUtils;

    iget-object v8, p0, Lorg/apache/cordova/file/FileUtils$9;->val$rawArgs:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/cordova/file/FileUtils$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v7, v8, v10, v9}, Lorg/apache/cordova/file/FileUtils;->access$200(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    .line 368
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils$9;->this$0:Lorg/apache/cordova/file/FileUtils;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v1, v0, v6, v8}, Lorg/apache/cordova/file/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;IZ)J

    move-result-wide v2

    .line 365
    .local v2, "fileSize":J
    iget-object v7, p0, Lorg/apache/cordova/file/FileUtils$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v8, Lorg/apache/cordova/PluginResult;

    sget-object v9, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    long-to-float v10, v2

    invoke-direct {v8, v9, v10}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;F)V

    invoke-virtual {v7, v8}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0
.end method
