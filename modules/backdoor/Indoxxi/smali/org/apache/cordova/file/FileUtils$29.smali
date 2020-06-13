.class Lorg/apache/cordova/file/FileUtils$29;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Lorg/apache/cordova/file/FileUtils$FileOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/file/FileUtils;->onRequestPermissionResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/file/FileUtils;

.field final synthetic val$req:Lorg/apache/cordova/file/PendingRequests$Request;


# direct methods
.method constructor <init>(Lorg/apache/cordova/file/FileUtils;Lorg/apache/cordova/file/PendingRequests$Request;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/file/FileUtils;

    .prologue
    .line 1209
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$29;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$29;->val$req:Lorg/apache/cordova/file/PendingRequests$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONArray;)V
    .locals 10
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
    .line 1211
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1212
    .local v1, "fname":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "data":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 1214
    .local v5, "offset":I
    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1215
    .local v4, "isBinary":Ljava/lang/Boolean;
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils$29;->this$0:Lorg/apache/cordova/file/FileUtils;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v1, v0, v5, v7}, Lorg/apache/cordova/file/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;IZ)J

    move-result-wide v2

    .line 1216
    .local v2, "fileSize":J
    iget-object v6, p0, Lorg/apache/cordova/file/FileUtils$29;->val$req:Lorg/apache/cordova/file/PendingRequests$Request;

    invoke-virtual {v6}, Lorg/apache/cordova/file/PendingRequests$Request;->getCallbackContext()Lorg/apache/cordova/CallbackContext;

    move-result-object v6

    new-instance v7, Lorg/apache/cordova/PluginResult;

    sget-object v8, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    long-to-float v9, v2

    invoke-direct {v7, v8, v9}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;F)V

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 1217
    return-void
.end method
