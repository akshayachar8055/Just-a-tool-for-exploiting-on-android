.class Lorg/pocketworkstation/pckeyboard/Main$4;
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

    .line 76
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Main$4;->this$0:Lorg/pocketworkstation/pckeyboard/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "market://search?q=pub:\"Klaus Weidner\""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Main$4;->this$0:Lorg/pocketworkstation/pckeyboard/Main;

    invoke-virtual {v0, p1}, Lorg/pocketworkstation/pckeyboard/Main;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Main$4;->this$0:Lorg/pocketworkstation/pckeyboard/Main;

    invoke-virtual {p1}, Lorg/pocketworkstation/pckeyboard/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/Main$4;->this$0:Lorg/pocketworkstation/pckeyboard/Main;

    .line 83
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 82
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
