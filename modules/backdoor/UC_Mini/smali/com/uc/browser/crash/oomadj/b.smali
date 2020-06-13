.class public final Lcom/uc/browser/crash/oomadj/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:Landroid/app/Service;

.field private c:Lcom/uc/browser/crash/oomadj/c;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/uc/browser/crash/oomadj/b;->a:I

    iput-object p1, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/crash/oomadj/b;)I
    .locals 1

    iget v0, p0, Lcom/uc/browser/crash/oomadj/b;->a:I

    return v0
.end method

.method private a(I)Landroid/app/Notification;
    .locals 5

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput p1, v0, Landroid/app/Notification;->icon:I

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    const-class v3, Lcom/uc/browser/ActivityBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    const-string v3, "UCBrowser"

    const-string v4, "Now running"

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static synthetic a(Lcom/uc/browser/crash/oomadj/b;I)Landroid/app/Notification;
    .locals 1

    invoke-direct {p0, p1}, Lcom/uc/browser/crash/oomadj/b;->a(I)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/uc/browser/crash/oomadj/b;)Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    return-object v0
.end method

.method static synthetic c(Lcom/uc/browser/crash/oomadj/b;)Lcom/uc/browser/crash/oomadj/c;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->c:Lcom/uc/browser/crash/oomadj/c;

    return-object v0
.end method

.method static synthetic d(Lcom/uc/browser/crash/oomadj/b;)Lcom/uc/browser/crash/oomadj/c;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->c:Lcom/uc/browser/crash/oomadj/c;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    iget v1, p0, Lcom/uc/browser/crash/oomadj/b;->a:I

    invoke-direct {p0, v2}, Lcom/uc/browser/crash/oomadj/b;->a(I)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->c:Lcom/uc/browser/crash/oomadj/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/uc/browser/crash/oomadj/c;

    invoke-direct {v0, p0, v2}, Lcom/uc/browser/crash/oomadj/c;-><init>(Lcom/uc/browser/crash/oomadj/b;B)V

    iput-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->c:Lcom/uc/browser/crash/oomadj/c;

    :cond_2
    iget-object v0, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/uc/browser/crash/oomadj/b;->b:Landroid/app/Service;

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/uc/browser/crash/oomadj/b;->c:Lcom/uc/browser/crash/oomadj/c;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Service;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method
