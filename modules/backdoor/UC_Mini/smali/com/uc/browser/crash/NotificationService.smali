.class public Lcom/uc/browser/crash/NotificationService;
.super Landroid/app/Service;


# static fields
.field private static a:Landroid/app/ActivityManager;

.field private static b:Z


# instance fields
.field private c:Lcom/uc/browser/crash/oomadj/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/uc/browser/crash/NotificationService;->a:Landroid/app/ActivityManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/browser/crash/NotificationService;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/browser/crash/NotificationService;->b:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    sget-boolean v0, Lcom/uc/browser/crash/NotificationService;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/uc/browser/crash/NotificationService;->stopSelf()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lcom/uc/browser/crash/oomadj/b;

    invoke-direct {v0, p0}, Lcom/uc/browser/crash/oomadj/b;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/uc/browser/crash/NotificationService;->c:Lcom/uc/browser/crash/oomadj/b;

    iget-object v0, p0, Lcom/uc/browser/crash/NotificationService;->c:Lcom/uc/browser/crash/oomadj/b;

    const-class v1, Lcom/uc/browser/crash/oomadj/ForegroundAssistServiceMain;

    invoke-virtual {v0, v1}, Lcom/uc/browser/crash/oomadj/b;->a(Ljava/lang/Class;)V

    sget-object v0, Lcom/uc/browser/crash/NotificationService;->a:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/uc/browser/crash/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/uc/browser/crash/NotificationService;->a:Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/crash/NotificationService;->c:Lcom/uc/browser/crash/oomadj/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/crash/NotificationService;->c:Lcom/uc/browser/crash/oomadj/b;

    invoke-virtual {v0}, Lcom/uc/browser/crash/oomadj/b;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
