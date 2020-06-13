.class Lcom/facebook/login/DeviceAuthDialog$5;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/login/DeviceAuthDialog;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "alertDialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 349
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->access$800(Lcom/facebook/login/DeviceAuthDialog;Z)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v1}, Lcom/facebook/login/DeviceAuthDialog;->access$900(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 351
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$5;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    invoke-static {v2}, Lcom/facebook/login/DeviceAuthDialog;->access$1000(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/login/DeviceAuthDialog;->startLogin(Lcom/facebook/login/LoginClient$Request;)V

    .line 352
    return-void
.end method
