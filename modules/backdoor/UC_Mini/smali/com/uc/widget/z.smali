.class public final Lcom/uc/widget/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    sub-float/2addr v0, p1

    :cond_0
    iput v0, p0, Lcom/uc/widget/z;->a:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/uc/widget/z;->a:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    sub-float v0, v4, p1

    sub-float v1, v4, p1

    mul-float/2addr v0, v1

    sub-float p1, v4, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/uc/widget/z;->a:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/uc/widget/z;->a:F

    sub-float v0, v4, v0

    iget v1, p0, Lcom/uc/widget/z;->a:F

    iget v2, p0, Lcom/uc/widget/z;->a:F

    sub-float v2, p1, v2

    div-float/2addr v2, v0

    sub-float v2, v4, v2

    iget v3, p0, Lcom/uc/widget/z;->a:F

    sub-float v3, p1, v3

    div-float/2addr v3, v0

    sub-float v3, v4, v3

    mul-float/2addr v2, v3

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    add-float p1, v1, v0

    goto :goto_0
.end method
