.class final Lcom/uc/browser/homepage/view/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/WidgetCenter;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/WidgetCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/z;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {v1, v1, v1, v0}, Lcom/google/android/gcm/a;->a(IIII)V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/z;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->c(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/view/WidgetView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/z;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->c(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/view/WidgetView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/uc/browser/homepage/view/WidgetView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method
