.class Lorg/apache/cordova/CordovaDialogsHelper$5;
.super Ljava/lang/Object;
.source "CordovaDialogsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaDialogsHelper;->showConfirm(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaDialogsHelper;

.field final synthetic val$result:Lorg/apache/cordova/CordovaDialogsHelper$Result;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaDialogsHelper;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/CordovaDialogsHelper;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/cordova/CordovaDialogsHelper$5;->this$0:Lorg/apache/cordova/CordovaDialogsHelper;

    iput-object p2, p0, Lorg/apache/cordova/CordovaDialogsHelper$5;->val$result:Lorg/apache/cordova/CordovaDialogsHelper$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/cordova/CordovaDialogsHelper$5;->val$result:Lorg/apache/cordova/CordovaDialogsHelper$Result;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/cordova/CordovaDialogsHelper$Result;->gotResult(ZLjava/lang/String;)V

    .line 86
    return-void
.end method
