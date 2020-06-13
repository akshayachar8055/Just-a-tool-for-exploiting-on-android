.class final Lcom/uc/download/view/v;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/uc/download/view/DownloadItemView;


# direct methods
.method constructor <init>(Lcom/uc/download/view/DownloadItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/download/view/v;->a:Lcom/uc/download/view/DownloadItemView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uc/download/view/v;->a:Lcom/uc/download/view/DownloadItemView;

    new-instance v1, Lcom/uc/download/view/w;

    invoke-direct {v1, p0}, Lcom/uc/download/view/w;-><init>(Lcom/uc/download/view/v;)V

    invoke-virtual {v0, v1}, Lcom/uc/download/view/DownloadItemView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
