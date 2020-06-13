.class Lorg/pocketworkstation/pckeyboard/UserDictionary$1;
.super Landroid/database/ContentObserver;
.source "UserDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pocketworkstation/pckeyboard/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/UserDictionary;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/UserDictionary;Landroid/os/Handler;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary$1;->this$0:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 53
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/UserDictionary$1;->this$0:Lorg/pocketworkstation/pckeyboard/UserDictionary;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/pocketworkstation/pckeyboard/UserDictionary;->setRequiresReload(Z)V

    return-void
.end method
