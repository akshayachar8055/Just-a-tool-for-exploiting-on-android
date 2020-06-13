.class abstract Landroid/support/design/widget/e$a;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/e;

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(Landroid/support/design/widget/e;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/e$a;->a:Landroid/support/design/widget/e;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/e;Landroid/support/design/widget/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/e$a;-><init>(Landroid/support/design/widget/e;)V

    return-void
.end method


# virtual methods
.method protected abstract a()F
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/e$a;->a:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->a:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/e$a;->b:F

    iget v2, p0, Landroid/support/design/widget/e$a;->c:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(F)V

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Landroid/support/design/widget/e$a;->a:Landroid/support/design/widget/e;

    iget-object v0, v0, Landroid/support/design/widget/e;->a:Landroid/support/design/widget/l;

    invoke-virtual {v0}, Landroid/support/design/widget/l;->a()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/e$a;->b:F

    invoke-virtual {p0}, Landroid/support/design/widget/e$a;->a()F

    move-result v0

    iget v1, p0, Landroid/support/design/widget/e$a;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/e$a;->c:F

    return-void
.end method
