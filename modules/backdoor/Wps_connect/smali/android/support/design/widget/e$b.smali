.class Landroid/support/design/widget/e$b;
.super Landroid/support/design/widget/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/design/widget/e;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/e;)V
    .locals 1

    iput-object p1, p0, Landroid/support/design/widget/e$b;->b:Landroid/support/design/widget/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/e$a;-><init>(Landroid/support/design/widget/e;Landroid/support/design/widget/e$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/e;Landroid/support/design/widget/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/design/widget/e$b;-><init>(Landroid/support/design/widget/e;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/e$b;->b:Landroid/support/design/widget/e;

    iget v0, v0, Landroid/support/design/widget/e;->f:F

    iget-object v1, p0, Landroid/support/design/widget/e$b;->b:Landroid/support/design/widget/e;

    iget v1, v1, Landroid/support/design/widget/e;->g:F

    add-float/2addr v0, v1

    return v0
.end method
