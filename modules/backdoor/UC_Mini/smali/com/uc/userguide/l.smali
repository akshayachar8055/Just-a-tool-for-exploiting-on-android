.class final Lcom/uc/userguide/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/userguide/UserGuideLayout;


# direct methods
.method constructor <init>(Lcom/uc/userguide/UserGuideLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/userguide/l;->a:Lcom/uc/userguide/UserGuideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/userguide/l;->a:Lcom/uc/userguide/UserGuideLayout;

    invoke-static {v0}, Lcom/uc/userguide/UserGuideLayout;->a(Lcom/uc/userguide/UserGuideLayout;)Lcom/uc/userguide/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/userguide/l;->a:Lcom/uc/userguide/UserGuideLayout;

    invoke-static {v0}, Lcom/uc/userguide/UserGuideLayout;->a(Lcom/uc/userguide/UserGuideLayout;)Lcom/uc/userguide/n;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/userguide/l;->a:Lcom/uc/userguide/UserGuideLayout;

    invoke-static {v1}, Lcom/uc/userguide/UserGuideLayout;->b(Lcom/uc/userguide/UserGuideLayout;)Lcom/uc/userguide/i;

    move-result-object v1

    iget-object v1, v1, Lcom/uc/userguide/i;->c:Lcom/uc/userguide/j;

    iget v1, v1, Lcom/uc/userguide/j;->b:I

    invoke-virtual {v0, v1}, Lcom/uc/userguide/n;->a(I)V

    :cond_0
    return-void
.end method
