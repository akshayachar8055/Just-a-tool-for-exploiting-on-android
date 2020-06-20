.class Landroid/support/design/widget/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/b;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;I)V
    .locals 0

    .line 564
    iput-object p1, p0, Landroid/support/design/widget/b$2;->b:Landroid/support/design/widget/b;

    iput p2, p0, Landroid/support/design/widget/b$2;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 572
    iget-object p1, p0, Landroid/support/design/widget/b$2;->b:Landroid/support/design/widget/b;

    iget v0, p0, Landroid/support/design/widget/b$2;->a:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/b;->c(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 567
    iget-object p1, p0, Landroid/support/design/widget/b$2;->b:Landroid/support/design/widget/b;

    invoke-static {p1}, Landroid/support/design/widget/b;->a(Landroid/support/design/widget/b;)Landroid/support/design/widget/b$c;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0xb4

    invoke-interface {p1, v0, v1}, Landroid/support/design/widget/b$c;->b(II)V

    return-void
.end method
