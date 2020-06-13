.class public Lcom/uc/browser/crash/oomadj/ForegroundAssistService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/uc/browser/crash/oomadj/a;

    invoke-direct {v0, p0}, Lcom/uc/browser/crash/oomadj/a;-><init>(Lcom/uc/browser/crash/oomadj/ForegroundAssistService;)V

    return-object v0
.end method
