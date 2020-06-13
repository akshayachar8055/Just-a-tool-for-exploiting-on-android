.class final Lcom/uc/browser/homepage/view/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/WidgetCenter;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/WidgetCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/ab;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ab;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-static {v0}, Lcom/uc/browser/homepage/view/WidgetCenter;->f(Lcom/uc/browser/homepage/view/WidgetCenter;)Lcom/uc/browser/homepage/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/browser/homepage/q;->e()V

    return-void
.end method
