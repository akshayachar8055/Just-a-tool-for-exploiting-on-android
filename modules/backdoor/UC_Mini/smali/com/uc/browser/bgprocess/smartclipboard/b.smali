.class public final Lcom/uc/browser/bgprocess/smartclipboard/b;
.super Lcom/uc/browser/bgprocess/a;

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/uc/browser/bgprocess/smartclipboard/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/browser/bgprocess/b;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-direct {p0, v0, p2}, Lcom/uc/browser/bgprocess/a;-><init>(ILcom/uc/browser/bgprocess/b;)V

    iput-object v1, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->b:Lcom/uc/browser/bgprocess/smartclipboard/c;

    iput-object p1, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "56636D05AD82EB3AB6BA312132E4705E"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/uc/platform/h;->l(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/uc/browser/bgprocess/a;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/uc/platform/h;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/browser/bgprocess/smartclipboard/b;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/uc/browser/bgprocess/smartclipboard/b;->b()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/uc/browser/bgprocess/smartclipboard/b;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/uc/browser/bgprocess/smartclipboard/b;->a(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/uc/platform/h;->aY()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/browser/bgprocess/smartclipboard/b;->b()V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/uc/browser/bgprocess/smartclipboard/b;->a(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/uc/platform/h;->aY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uc/browser/bgprocess/smartclipboard/b;->a()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    invoke-super {p0}, Lcom/uc/browser/bgprocess/a;->b()V

    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onPrimaryClipChanged()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->a:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    iget-object v3, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->a:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->b:Lcom/uc/browser/bgprocess/smartclipboard/c;

    if-nez v1, :cond_1

    new-instance v1, Lcom/uc/browser/bgprocess/smartclipboard/c;

    iget-object v3, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/uc/browser/bgprocess/smartclipboard/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->b:Lcom/uc/browser/bgprocess/smartclipboard/c;

    :cond_1
    iget-object v1, p0, Lcom/uc/browser/bgprocess/smartclipboard/b;->b:Lcom/uc/browser/bgprocess/smartclipboard/c;

    invoke-virtual {v1, v2, v0}, Lcom/uc/browser/bgprocess/smartclipboard/c;->a(Landroid/content/ClipData;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
