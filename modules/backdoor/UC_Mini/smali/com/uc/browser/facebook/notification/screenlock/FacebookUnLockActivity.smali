.class public Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->requestWindowFeature(I)Z

    return-void
.end method

.method protected onResume()V
    .locals 6

    const-wide/16 v4, 0x1f4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/uc/browser/facebook/notification/screenlock/f;

    invoke-direct {v1, p0}, Lcom/uc/browser/facebook/notification/screenlock/f;-><init>(Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "extra_msg_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_msg_STYLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/uc/browser/facebook/notification/screenlock/g;

    invoke-direct {v1, p0}, Lcom/uc/browser/facebook/notification/screenlock/g;-><init>(Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->a:Landroid/os/Handler;

    new-instance v3, Lcom/uc/browser/facebook/notification/screenlock/h;

    invoke-direct {v3, p0, v1, v0}, Lcom/uc/browser/facebook/notification/screenlock/h;-><init>(Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
