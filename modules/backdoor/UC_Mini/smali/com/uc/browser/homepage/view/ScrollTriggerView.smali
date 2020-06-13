.class public Lcom/uc/browser/homepage/view/ScrollTriggerView;
.super Landroid/view/View;

# interfaces
.implements Lcom/uc/view/drag/d;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/util/Timer;

.field private c:Lcom/uc/browser/homepage/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/uc/browser/homepage/view/ScrollTriggerView;)Lcom/uc/browser/homepage/q;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->c:Lcom/uc/browser/homepage/q;

    return-object v0
.end method

.method static synthetic b(Lcom/uc/browser/homepage/view/ScrollTriggerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/uc/browser/homepage/view/o;

    invoke-direct {v0, p0}, Lcom/uc/browser/homepage/view/o;-><init>(Lcom/uc/browser/homepage/view/ScrollTriggerView;)V

    iput-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public final a(Lcom/uc/view/drag/DragView;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/ScrollTriggerView;->a()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->c:Lcom/uc/browser/homepage/q;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->b:Ljava/util/Timer;

    new-instance v1, Lcom/uc/browser/homepage/view/p;

    invoke-direct {v1, p0}, Lcom/uc/browser/homepage/view/p;-><init>(Lcom/uc/browser/homepage/view/ScrollTriggerView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x50

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/uc/view/drag/DragView;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-virtual {p0}, Lcom/uc/browser/homepage/view/ScrollTriggerView;->a()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setWidgetCenterCallBack(Lcom/uc/browser/homepage/q;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/ScrollTriggerView;->c:Lcom/uc/browser/homepage/q;

    return-void
.end method
