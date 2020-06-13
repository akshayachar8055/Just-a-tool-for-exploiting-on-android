.class Lorg/pocketworkstation/pckeyboard/ContactsDictionary$1;
.super Landroid/database/ContentObserver;
.source "ContactsDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pocketworkstation/pckeyboard/ContactsDictionary;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/ContactsDictionary;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/ContactsDictionary;Landroid/os/Handler;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary$1;->this$0:Lorg/pocketworkstation/pckeyboard/ContactsDictionary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 59
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/ContactsDictionary$1;->this$0:Lorg/pocketworkstation/pckeyboard/ContactsDictionary;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/ContactsDictionary;->setRequiresReload(Z)V

    return-void
.end method
