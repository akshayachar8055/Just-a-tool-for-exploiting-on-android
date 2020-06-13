.class Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;
.super Ljava/lang/Object;
.source "LatinKeyboardBaseView.java"

# interfaces
.implements Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->inflateMiniKeyboardContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1363
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$600(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onCancel()V

    .line 1364
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    return-void
.end method

.method public onKey(I[III)V
    .locals 1

    .line 1353
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$600(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 1354
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    return-void
.end method

.method public onPress(I)V
    .locals 1

    .line 1380
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$600(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    return-void
.end method

.method public onRelease(I)V
    .locals 1

    .line 1383
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$600(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1358
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->access$600(Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;)Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1359
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView$2;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    return-void
.end method

.method public swipeDown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public swipeLeft()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public swipeRight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public swipeUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
