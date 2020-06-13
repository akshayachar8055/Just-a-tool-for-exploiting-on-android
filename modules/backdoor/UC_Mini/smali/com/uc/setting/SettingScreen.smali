.class public Lcom/uc/setting/SettingScreen;
.super Landroid/view/View;

# interfaces
.implements Lcom/uc/widget/t;


# instance fields
.field private a:Lcom/uc/setting/q;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uc/setting/SettingScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/uc/setting/SettingScreen;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/uc/setting/SettingScreen;->b:I

    iput v0, p0, Lcom/uc/setting/SettingScreen;->c:I

    invoke-direct {p0}, Lcom/uc/setting/SettingScreen;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uc/setting/SettingScreen;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/uc/setting/SettingScreen;->setFocusableInTouchMode(Z)V

    new-instance v0, Lcom/uc/setting/q;

    invoke-direct {v0, p0}, Lcom/uc/setting/q;-><init>(Lcom/uc/widget/t;)V

    iput-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    invoke-virtual {v0}, Lcom/uc/setting/q;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    return-void
.end method

.method public final a(Lcom/uc/setting/m;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    invoke-virtual {v0, p1}, Lcom/uc/setting/q;->b(Lcom/uc/setting/m;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/uc/setting/SettingScreen;->invalidate()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    invoke-virtual {v0, p1}, Lcom/uc/setting/q;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    invoke-virtual {v0, p1}, Lcom/uc/setting/q;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    const/4 v2, -0x1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/uc/setting/q;->a(IIII)V

    iget v0, p0, Lcom/uc/setting/SettingScreen;->b:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/uc/setting/SettingScreen;->b:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    iget v1, p0, Lcom/uc/setting/SettingScreen;->b:I

    invoke-virtual {v0, v1}, Lcom/uc/setting/q;->a(I)V

    iget v0, p0, Lcom/uc/setting/SettingScreen;->c:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    iget v1, p0, Lcom/uc/setting/SettingScreen;->c:I

    invoke-virtual {v0, v1}, Lcom/uc/setting/q;->a(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    invoke-virtual {v0, p1}, Lcom/uc/setting/q;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBackListener(Lcom/uc/setting/s;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    invoke-virtual {v0, p1}, Lcom/uc/setting/q;->a(Lcom/uc/setting/s;)V

    :cond_0
    return-void
.end method

.method public setSelectData(II)V
    .locals 0

    iput p1, p0, Lcom/uc/setting/SettingScreen;->b:I

    iput p2, p0, Lcom/uc/setting/SettingScreen;->c:I

    return-void
.end method

.method public setSettingGroupChangeListener(Lcom/uc/setting/r;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/setting/SettingScreen;->a:Lcom/uc/setting/q;

    invoke-virtual {v0, p1}, Lcom/uc/setting/q;->a(Lcom/uc/setting/r;)V

    :cond_0
    return-void
.end method
