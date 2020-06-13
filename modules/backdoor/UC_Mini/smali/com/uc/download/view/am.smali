.class final Lcom/uc/download/view/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/download/view/DownloadTabLayout;


# direct methods
.method constructor <init>(Lcom/uc/download/view/DownloadTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/download/view/am;->a:Lcom/uc/download/view/DownloadTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/download/view/am;->a:Lcom/uc/download/view/DownloadTabLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadTabLayout;->a(Lcom/uc/download/view/DownloadTabLayout;)Lcom/uc/download/view/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/download/view/am;->a:Lcom/uc/download/view/DownloadTabLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadTabLayout;->a(Lcom/uc/download/view/DownloadTabLayout;)Lcom/uc/download/view/aq;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/download/view/aq;->m()V

    :cond_0
    return-void
.end method
