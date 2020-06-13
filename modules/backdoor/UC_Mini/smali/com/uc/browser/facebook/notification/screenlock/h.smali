.class final Lcom/uc/browser/facebook/notification/screenlock/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;


# direct methods
.method constructor <init>(Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->c:Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;

    iput-object p2, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->c:Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;

    invoke-virtual {v1}, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/uc/browser/ActivityBrowser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->c:Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;

    invoke-virtual {v1}, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.uc.browser.intent.action.LOADURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "tp"

    const-string v2, "UCM_OPEN_FB_NOTIF_URL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "policy"

    const-string v2, "UCM_NO_NEED_BACK|UCM_NEW_WINDOW|UCM_REUSE_WHEN_MAX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    iget-object v2, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "msg_t"

    iget-object v2, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type_push"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/uc/browser/facebook/notification/screenlock/h;->c:Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;

    invoke-virtual {v1, v0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
