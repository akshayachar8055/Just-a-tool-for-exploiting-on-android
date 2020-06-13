.class public Lcom/uc/base/push/gcm/GCMLocalCommandReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    const-class v0, Lcom/uc/base/push/gcm/GCMLocalCommandService;

    invoke-static {p1, p2, v0}, Lcom/uc/base/push/gcm/GCMLocalCommandService;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
