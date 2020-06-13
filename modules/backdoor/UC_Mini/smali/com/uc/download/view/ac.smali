.class final Lcom/uc/download/view/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/download/view/DownloadLayout;


# direct methods
.method constructor <init>(Lcom/uc/download/view/DownloadLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/download/view/ac;->a:Lcom/uc/download/view/DownloadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/download/view/ac;->a:Lcom/uc/download/view/DownloadLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadLayout;->b(Lcom/uc/download/view/DownloadLayout;)Lcom/uc/download/view/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/download/view/ac;->a:Lcom/uc/download/view/DownloadLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadLayout;->b(Lcom/uc/download/view/DownloadLayout;)Lcom/uc/download/view/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/download/view/ah;->c()V

    :cond_0
    return-void
.end method
