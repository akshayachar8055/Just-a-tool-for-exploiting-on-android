.class final Lcom/uc/userguide/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uc/widget/tabbar/b;


# instance fields
.field private synthetic a:Lcom/uc/userguide/FirstMarketingView;


# direct methods
.method constructor <init>(Lcom/uc/userguide/FirstMarketingView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/userguide/a;->a:Lcom/uc/userguide/FirstMarketingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(II)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/uc/userguide/a;->a:Lcom/uc/userguide/FirstMarketingView;

    invoke-static {v0}, Lcom/uc/userguide/FirstMarketingView;->a(Lcom/uc/userguide/FirstMarketingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/uc/userguide/a;->a:Lcom/uc/userguide/FirstMarketingView;

    invoke-static {v0, p1}, Lcom/uc/userguide/FirstMarketingView;->a(Lcom/uc/userguide/FirstMarketingView;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/userguide/a;->a:Lcom/uc/userguide/FirstMarketingView;

    invoke-static {v0}, Lcom/uc/userguide/FirstMarketingView;->a(Lcom/uc/userguide/FirstMarketingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
