.class public abstract Lcom/uc/browser/core/homepage/card/view/menu/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Landroid/graphics/Point;

.field private c:Lcom/uc/browser/core/homepage/card/view/menu/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/uc/browser/core/homepage/card/view/menu/a;->a:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/uc/browser/core/homepage/card/view/menu/a;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/menu/a;->b:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/menu/a;->b:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public final a(Lcom/uc/browser/core/homepage/card/view/menu/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/core/homepage/card/view/menu/a;->c:Lcom/uc/browser/core/homepage/card/view/menu/e;

    return-void
.end method

.method public final b()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/menu/a;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public final c()Lcom/uc/browser/core/homepage/card/view/menu/e;
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/core/homepage/card/view/menu/a;->c:Lcom/uc/browser/core/homepage/card/view/menu/e;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
