.class final Lcom/uc/download/view/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/uc/download/view/DownloadLayout;


# direct methods
.method constructor <init>(Lcom/uc/download/view/DownloadLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/download/view/ad;->a:Lcom/uc/download/view/DownloadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/download/view/ad;->a:Lcom/uc/download/view/DownloadLayout;

    invoke-static {v0}, Lcom/uc/download/view/DownloadLayout;->c(Lcom/uc/download/view/DownloadLayout;)V

    const/4 v0, 0x1

    return v0
.end method
