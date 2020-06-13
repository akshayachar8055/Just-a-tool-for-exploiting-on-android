.class Lorg/apache/cordova/statusbar/StatusBar$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/statusbar/StatusBar;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/statusbar/StatusBar;

.field final synthetic val$cordova:Lorg/apache/cordova/CordovaInterface;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaInterface;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/statusbar/StatusBar;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iput-object p2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 59
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 60
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 63
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$000(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v2

    const-string v3, "StatusBarBackgroundColor"

    const-string v4, "#000000"

    invoke-virtual {v2, v3, v4}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$100(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$200(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v2

    const-string v3, "StatusBarStyle"

    const-string v4, "lightcontent"

    invoke-virtual {v2, v3, v4}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$300(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V

    .line 67
    return-void
.end method
