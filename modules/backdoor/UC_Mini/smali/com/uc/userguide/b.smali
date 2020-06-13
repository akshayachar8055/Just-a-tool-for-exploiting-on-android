.class final Lcom/uc/userguide/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/userguide/FirstMarketingView;


# direct methods
.method constructor <init>(Lcom/uc/userguide/FirstMarketingView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/userguide/b;->a:Lcom/uc/userguide/FirstMarketingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/uc/userguide/b;->a:Lcom/uc/userguide/FirstMarketingView;

    invoke-static {v0}, Lcom/uc/userguide/FirstMarketingView;->b(Lcom/uc/userguide/FirstMarketingView;)Lcom/uc/userguide/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/userguide/b;->a:Lcom/uc/userguide/FirstMarketingView;

    invoke-static {v0}, Lcom/uc/userguide/FirstMarketingView;->b(Lcom/uc/userguide/FirstMarketingView;)Lcom/uc/userguide/o;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/userguide/b;->a:Lcom/uc/userguide/FirstMarketingView;

    invoke-static {v1}, Lcom/uc/userguide/FirstMarketingView;->c(Lcom/uc/userguide/FirstMarketingView;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/uc/userguide/o;->a(Z)V

    :cond_0
    return-void
.end method
