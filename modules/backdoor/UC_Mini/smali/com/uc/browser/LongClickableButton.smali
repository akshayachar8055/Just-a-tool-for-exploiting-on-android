.class public Lcom/uc/browser/LongClickableButton;
.super Landroid/widget/ImageView;


# static fields
.field private static final c:[I

.field private static final d:[I


# instance fields
.field public a:I

.field public b:I

.field private e:Lcom/uc/browser/cl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/uc/browser/LongClickableButton;->c:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/uc/browser/LongClickableButton;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/uc/browser/LongClickableButton;->a:I

    iput v0, p0, Lcom/uc/browser/LongClickableButton;->b:I

    return-void
.end method

.method private a(Z)Z
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/uc/browser/LongClickableButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/uc/browser/LongClickableButton;->c:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/uc/browser/LongClickableButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/uc/browser/LongClickableButton;->c:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/uc/browser/LongClickableButton;->invalidate()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/uc/browser/LongClickableButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/uc/browser/LongClickableButton;->d:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    invoke-virtual {p0}, Lcom/uc/browser/LongClickableButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/uc/browser/LongClickableButton;->d:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, -0x3e600000    # -20.0f

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/uc/browser/LongClickableButton;->a(Z)Z

    iget-object v0, p0, Lcom/uc/browser/LongClickableButton;->e:Lcom/uc/browser/cl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/browser/LongClickableButton;->e:Lcom/uc/browser/cl;

    iput-boolean v3, v0, Lcom/uc/browser/cl;->a:Z

    :cond_1
    new-instance v0, Lcom/uc/browser/cl;

    invoke-direct {v0, p0}, Lcom/uc/browser/cl;-><init>(Lcom/uc/browser/LongClickableButton;)V

    iput-object v0, p0, Lcom/uc/browser/LongClickableButton;->e:Lcom/uc/browser/cl;

    iget-object v0, p0, Lcom/uc/browser/LongClickableButton;->e:Lcom/uc/browser/cl;

    invoke-virtual {v0}, Lcom/uc/browser/cl;->start()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v2, v0, v4

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/uc/browser/LongClickableButton;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    cmpg-float v0, v1, v4

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/uc/browser/LongClickableButton;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/uc/browser/LongClickableButton;->a(Z)Z

    iget-object v0, p0, Lcom/uc/browser/LongClickableButton;->e:Lcom/uc/browser/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/LongClickableButton;->e:Lcom/uc/browser/cl;

    iput-boolean v3, v0, Lcom/uc/browser/cl;->a:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/uc/browser/LongClickableButton;->a(Z)Z

    iget-object v0, p0, Lcom/uc/browser/LongClickableButton;->e:Lcom/uc/browser/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/LongClickableButton;->e:Lcom/uc/browser/cl;

    iput-boolean v3, v0, Lcom/uc/browser/cl;->a:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
