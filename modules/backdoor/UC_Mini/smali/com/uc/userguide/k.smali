.class final Lcom/uc/userguide/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/userguide/UserGuideLayout;


# direct methods
.method constructor <init>(Lcom/uc/userguide/UserGuideLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/userguide/k;->a:Lcom/uc/userguide/UserGuideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/userguide/k;->a:Lcom/uc/userguide/UserGuideLayout;

    invoke-static {v0}, Lcom/uc/userguide/UserGuideLayout;->a(Lcom/uc/userguide/UserGuideLayout;)Lcom/uc/userguide/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/userguide/k;->a:Lcom/uc/userguide/UserGuideLayout;

    invoke-static {v0}, Lcom/uc/userguide/UserGuideLayout;->a(Lcom/uc/userguide/UserGuideLayout;)Lcom/uc/userguide/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/userguide/n;->a()V

    :cond_0
    return-void
.end method
