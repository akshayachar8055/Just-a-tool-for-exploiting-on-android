.class final Lcom/uc/download/view/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/download/view/DownloadTabLayout;


# direct methods
.method constructor <init>(Lcom/uc/download/view/DownloadTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/download/view/ap;->a:Lcom/uc/download/view/DownloadTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/download/view/ap;->a:Lcom/uc/download/view/DownloadTabLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadTabLayout;->c(Lcom/uc/download/view/DownloadTabLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/uc/download/view/ap;->a:Lcom/uc/download/view/DownloadTabLayout;

    invoke-virtual {v0}, Lcom/uc/download/view/DownloadTabLayout;->b()V

    return-void
.end method
