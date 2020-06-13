.class Lorg/pocketworkstation/pckeyboard/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pocketworkstation/pckeyboard/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/Main;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/Main;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Main$2;->this$0:Lorg/pocketworkstation/pckeyboard/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Main$2;->this$0:Lorg/pocketworkstation/pckeyboard/Main;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method
