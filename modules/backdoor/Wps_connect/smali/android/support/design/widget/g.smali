.class abstract Landroid/support/design/widget/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/g$a;
    }
.end annotation


# static fields
.field static final h:[I

.field static final i:[I

.field static final j:[I


# instance fields
.field private final a:Landroid/graphics/Rect;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Landroid/support/design/widget/b;

.field e:Landroid/graphics/drawable/Drawable;

.field f:F

.field g:F

.field final k:Landroid/support/design/widget/y;

.field final l:Landroid/support/design/widget/m;

.field private m:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/g;->h:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/g;->i:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/design/widget/g;->j:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/y;Landroid/support/design/widget/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/y;

    iput-object p2, p0, Landroid/support/design/widget/g;->l:Landroid/support/design/widget/m;

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/g$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/g$1;-><init>(Landroid/support/design/widget/g;)V

    iput-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method


# virtual methods
.method abstract a()F
.end method

.method abstract a(F)V
.end method

.method abstract a(I)V
.end method

.method abstract a(Landroid/content/res/ColorStateList;)V
.end method

.method abstract a(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract a(Landroid/graphics/Rect;)V
.end method

.method abstract a(Landroid/support/design/widget/g$a;Z)V
.end method

.method abstract a([I)V
.end method

.method abstract b()V
.end method

.method final b(F)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/g;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/g;->f:F

    invoke-virtual {p0, p1}, Landroid/support/design/widget/g;->a(F)V

    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method abstract b(Landroid/support/design/widget/g$a;Z)V
.end method

.method abstract c()V
.end method

.method d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method e()V
    .locals 0

    return-void
.end method

.method final f()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/g;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method final g()V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/g;->a(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/g;->b(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/support/design/widget/g;->l:Landroid/support/design/widget/m;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/m;->a(IIII)V

    return-void
.end method

.method h()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/g;->j()V

    iget-object v0, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/y;

    invoke-virtual {v0}, Landroid/support/design/widget/y;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/g;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method i()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->k:Landroid/support/design/widget/y;

    invoke-virtual {v0}, Landroid/support/design/widget/y;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/g;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method
