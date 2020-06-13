.class Lorg/apache/cordova/statusbar/StatusBar$5;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/statusbar/StatusBar;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/statusbar/StatusBar;

.field final synthetic val$args:Lorg/apache/cordova/CordovaArgs;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaArgs;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/statusbar/StatusBar;

    .prologue
    .line 151
    iput-object p1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iput-object p2, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$args:Lorg/apache/cordova/CordovaArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$args:Lorg/apache/cordova/CordovaArgs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$400(Lorg/apache/cordova/statusbar/StatusBar;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ignore":Lorg/json/JSONException;
    const-string v1, "StatusBar"

    const-string v2, "Invalid boolean argument"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
