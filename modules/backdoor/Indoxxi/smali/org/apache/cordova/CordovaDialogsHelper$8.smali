.class Lorg/apache/cordova/CordovaDialogsHelper$8;
.super Ljava/lang/Object;
.source "CordovaDialogsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/CordovaDialogsHelper;->showPrompt(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/CordovaDialogsHelper;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$result:Lorg/apache/cordova/CordovaDialogsHelper$Result;


# direct methods
.method constructor <init>(Lorg/apache/cordova/CordovaDialogsHelper;Landroid/widget/EditText;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/CordovaDialogsHelper;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/apache/cordova/CordovaDialogsHelper$8;->this$0:Lorg/apache/cordova/CordovaDialogsHelper;

    iput-object p2, p0, Lorg/apache/cordova/CordovaDialogsHelper$8;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/apache/cordova/CordovaDialogsHelper$8;->val$result:Lorg/apache/cordova/CordovaDialogsHelper$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lorg/apache/cordova/CordovaDialogsHelper$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "userText":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/cordova/CordovaDialogsHelper$8;->val$result:Lorg/apache/cordova/CordovaDialogsHelper$Result;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lorg/apache/cordova/CordovaDialogsHelper$Result;->gotResult(ZLjava/lang/String;)V

    .line 132
    return-void
.end method
