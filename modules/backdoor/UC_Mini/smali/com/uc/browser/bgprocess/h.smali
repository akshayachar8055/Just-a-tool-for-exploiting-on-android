.class final Lcom/uc/browser/bgprocess/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;


# direct methods
.method constructor <init>(Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bgprocess/h;->a:Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/bgprocess/h;->a:Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;

    invoke-static {v0}, Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;->a(Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/bgprocess/h;->a:Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;

    invoke-static {v0}, Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;->b(Lcom/uc/browser/bgprocess/IntlRemoteBackgroundProcess;)V

    :cond_0
    return-void
.end method
