.class final Lcom/uc/browser/homepage/view/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/WidgetCenter;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/WidgetCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/w;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/homepage/view/w;->a:Lcom/uc/browser/homepage/view/WidgetCenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/browser/homepage/view/WidgetCenter;->a(Lcom/uc/browser/homepage/view/WidgetCenter;Z)V

    return-void
.end method
