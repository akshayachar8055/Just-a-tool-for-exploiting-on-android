.class Landroid/support/design/widget/b$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/b;


# direct methods
.method constructor <init>(Landroid/support/design/widget/b;)V
    .locals 0

    .line 508
    iput-object p1, p0, Landroid/support/design/widget/b$8;->a:Landroid/support/design/widget/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 518
    iget-object p1, p0, Landroid/support/design/widget/b$8;->a:Landroid/support/design/widget/b;

    invoke-virtual {p1}, Landroid/support/design/widget/b;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 511
    iget-object p1, p0, Landroid/support/design/widget/b$8;->a:Landroid/support/design/widget/b;

    invoke-static {p1}, Landroid/support/design/widget/b;->a(Landroid/support/design/widget/b;)Landroid/support/design/widget/b$c;

    move-result-object p1

    const/16 v0, 0x46

    const/16 v1, 0xb4

    invoke-interface {p1, v0, v1}, Landroid/support/design/widget/b$c;->a(II)V

    return-void
.end method
