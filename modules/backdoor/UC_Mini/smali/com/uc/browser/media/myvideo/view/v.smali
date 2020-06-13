.class final Lcom/uc/browser/media/myvideo/view/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/media/myvideo/view/v;->a:Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/v;->a:Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;->a(Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;)Lcom/uc/browser/media/myvideo/view/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/v;->a:Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;

    invoke-static {v0}, Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;->a(Lcom/uc/browser/media/myvideo/view/MyVideoTabLayout;)Lcom/uc/browser/media/myvideo/view/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/browser/media/myvideo/view/y;->a()Z

    :cond_0
    return-void
.end method
