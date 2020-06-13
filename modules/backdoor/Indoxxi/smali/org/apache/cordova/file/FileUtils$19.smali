.class Lorg/apache/cordova/file/FileUtils$19;
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
    .line 479
    iput-object p1, p0, Lorg/apache/cordova/file/FileUtils$19;->this$0:Lorg/apache/cordova/file/FileUtils;

    iput-object p2, p0, Lorg/apache/cordova/file/FileUtils$19;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "args"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/cordova/file/NoModificationAllowedException;,
            Lorg/apache/cordova/file/InvalidModificationException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "fname":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$19;->this$0:Lorg/apache/cordova/file/FileUtils;

    invoke-static {v2, v0}, Lorg/apache/cordova/file/FileUtils;->access$1100(Lorg/apache/cordova/file/FileUtils;Ljava/lang/String;)Z

    move-result v1

    .line 483
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 484
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$19;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/file/FileUtils$19;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    sget v3, Lorg/apache/cordova/file/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0
.end method
