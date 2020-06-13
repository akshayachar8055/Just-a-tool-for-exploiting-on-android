.class final Lcom/uc/download/view/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/download/view/DownloadLayout;


# direct methods
.method constructor <init>(Lcom/uc/download/view/DownloadLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/download/view/ag;->a:Lcom/uc/download/view/DownloadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/download/view/ag;->a:Lcom/uc/download/view/DownloadLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadLayout;->d(Lcom/uc/download/view/DownloadLayout;)V

    return-void
.end method
