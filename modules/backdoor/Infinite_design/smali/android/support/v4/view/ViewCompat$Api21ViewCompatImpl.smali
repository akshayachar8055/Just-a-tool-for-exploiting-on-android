.class Landroid/support/v4/view/ViewCompat$Api21ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getElevation(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method
