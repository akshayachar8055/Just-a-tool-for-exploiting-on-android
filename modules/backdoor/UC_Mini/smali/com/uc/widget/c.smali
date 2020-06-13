.class public final Lcom/uc/widget/c;
.super Lcom/uc/widget/b;


# instance fields
.field private o:B

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x2755

    invoke-direct {p0, v0, v1, v1}, Lcom/uc/widget/b;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p2, p0, Lcom/uc/widget/c;->p:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/uc/widget/c;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final d()V
    .locals 2

    iget-byte v0, p0, Lcom/uc/widget/c;->o:B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uc/widget/c;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/uc/widget/c;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/uc/widget/c;->o:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/uc/widget/c;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/uc/widget/c;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final g(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/uc/widget/c;->o:B

    invoke-virtual {p0}, Lcom/uc/widget/c;->d()V

    return-void
.end method
