.class Lorg/apache/cordova/CordovaDialogsHelper$7;
.super Ljava/lang/Object;
.source "CordovaDialogsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 94
    iput-object p1, p0, Lorg/apache/cordova/CordovaDialogsHelper$7;->this$0:Lorg/apache/cordova/CordovaDialogsHelper;

    iput-object p2, p0, Lorg/apache/cordova/CordovaDialogsHelper$7;->val$result:Lorg/apache/cordova/CordovaDialogsHelper$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 97
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 99
    iget-object v1, p0, Lorg/apache/cordova/CordovaDialogsHelper$7;->val$result:Lorg/apache/cordova/CordovaDialogsHelper$Result;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/apache/cordova/CordovaDialogsHelper$Result;->gotResult(ZLjava/lang/String;)V

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
