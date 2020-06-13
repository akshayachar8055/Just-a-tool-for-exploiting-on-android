.class Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->onNativeToJsMessageAvailable(Lorg/apache/cordova/NativeToJsMessageQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

.field final synthetic val$queue:Lorg/apache/cordova/NativeToJsMessageQueue;


# direct methods
.method constructor <init>(Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    .prologue
    .line 294
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;->this$0:Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    iput-object p2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;->val$queue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 296
    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;->val$queue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v1}, Lorg/apache/cordova/NativeToJsMessageQueue;->popAndEncodeAsJs()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "js":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;->this$0:Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    invoke-static {v1}, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->access$000(Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;)Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/cordova/CordovaWebViewEngine;->loadUrl(Ljava/lang/String;Z)V

    .line 300
    :cond_0
    return-void
.end method
