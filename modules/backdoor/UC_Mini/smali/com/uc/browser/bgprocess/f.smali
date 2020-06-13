.class final Lcom/uc/browser/bgprocess/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Intent;

.field private synthetic b:Lcom/uc/browser/bgprocess/e;


# direct methods
.method constructor <init>(Lcom/uc/browser/bgprocess/e;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bgprocess/f;->b:Lcom/uc/browser/bgprocess/e;

    iput-object p2, p0, Lcom/uc/browser/bgprocess/f;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/uc/browser/bgprocess/e;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/bgprocess/f;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/uc/browser/bgprocess/f;->b:Lcom/uc/browser/bgprocess/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uc/browser/bgprocess/e;->a(Lcom/uc/browser/bgprocess/e;Z)Z

    invoke-static {}, Lcom/uc/browser/bgprocess/e;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/browser/bgprocess/f;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/uc/browser/bgprocess/f;->b:Lcom/uc/browser/bgprocess/e;

    invoke-static {v2}, Lcom/uc/browser/bgprocess/e;->a(Lcom/uc/browser/bgprocess/e;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
