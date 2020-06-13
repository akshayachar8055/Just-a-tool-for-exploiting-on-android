.class Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;
.super Ljava/lang/Object;
.source "LatinKeyboardView.java"

# interfaces
.implements Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtensionKeyboardListener"
.end annotation


# instance fields
.field private mTarget:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;->mTarget:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;->mTarget:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onCancel()V

    return-void
.end method

.method public onKey(I[III)V
    .locals 1

    .line 496
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;->mTarget:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    return-void
.end method

.method public onPress(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;->mTarget:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    return-void
.end method

.method public onRelease(I)V
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;->mTarget:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView$ExtensionKeyboardListener;->mTarget:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public swipeDown()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public swipeLeft()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public swipeRight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public swipeUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
