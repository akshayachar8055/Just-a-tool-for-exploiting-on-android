.class final Lcom/uc/browser/facebook/notification/screenlock/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;


# direct methods
.method constructor <init>(Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/facebook/notification/screenlock/d;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/d;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;

    invoke-static {v0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;->c(Lcom/uc/browser/facebook/notification/screenlock/FacebookScreenLockPushActivity;)V

    :cond_0
    return-void
.end method
