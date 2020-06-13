.class Lorg/pocketworkstation/pckeyboard/Main$5;
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

.field final synthetic val$that:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/Main;Landroid/app/Activity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/Main$5;->this$0:Lorg/pocketworkstation/pckeyboard/Main;

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/Main$5;->val$that:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 94
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/Main$5;->this$0:Lorg/pocketworkstation/pckeyboard/Main;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/Main$5;->val$that:Landroid/app/Activity;

    const-class v2, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/pocketworkstation/pckeyboard/Main;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
