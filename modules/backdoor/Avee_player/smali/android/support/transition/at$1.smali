.class Landroid/support/transition/at$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/at;->b(Landroid/view/ViewGroup;Landroid/support/transition/aa;ILandroid/support/transition/aa;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/transition/ae;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/transition/at;


# direct methods
.method constructor <init>(Landroid/support/transition/at;Landroid/support/transition/ae;Landroid/view/View;)V
    .locals 0

    .line 404
    iput-object p1, p0, Landroid/support/transition/at$1;->c:Landroid/support/transition/at;

    iput-object p2, p0, Landroid/support/transition/at$1;->a:Landroid/support/transition/ae;

    iput-object p3, p0, Landroid/support/transition/at$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 407
    iget-object p1, p0, Landroid/support/transition/at$1;->a:Landroid/support/transition/ae;

    iget-object v0, p0, Landroid/support/transition/at$1;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/support/transition/ae;->b(Landroid/view/View;)V

    return-void
.end method
