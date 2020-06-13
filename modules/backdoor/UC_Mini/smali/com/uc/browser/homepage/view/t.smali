.class final Lcom/uc/browser/homepage/view/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/WidgetCenter;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/WidgetCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/t;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/t;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->i(Lcom/uc/browser/homepage/view/WidgetCenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/uc/browser/homepage/view/t;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->o()V

    return-void
.end method
