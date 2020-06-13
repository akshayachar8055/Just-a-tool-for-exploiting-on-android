.class Lorg/apache/cordova/engine/SystemWebViewEngine$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemWebViewEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/engine/SystemWebViewEngine;->initWebViewSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/engine/SystemWebViewEngine;

.field final synthetic val$settings:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Lorg/apache/cordova/engine/SystemWebViewEngine;Landroid/webkit/WebSettings;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/engine/SystemWebViewEngine;

    .prologue
    .line 213
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebViewEngine$2;->this$0:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebViewEngine$2;->val$settings:Landroid/webkit/WebSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebViewEngine$2;->val$settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 217
    return-void
.end method
