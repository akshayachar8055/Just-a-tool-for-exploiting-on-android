.class public Lorg/pocketworkstation/pckeyboard/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field public static final ACTION_SETTINGS:Ljava/lang/String; = "org.pocketworkstation.pckeyboard.SETTINGS"

.field public static final ACTION_SHOW:Ljava/lang/String; = "org.pocketworkstation.pckeyboard.SHOW"

.field static final TAG:Ljava/lang/String; = "PCKeyboard/Notification"


# instance fields
.field private mIME:Lorg/pocketworkstation/pckeyboard/LatinIME;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinIME;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/NotificationReceiver;->mIME:Lorg/pocketworkstation/pckeyboard/LatinIME;

    const-string p1, "PCKeyboard/Notification"

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationReceiver created, ime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/NotificationReceiver;->mIME:Lorg/pocketworkstation/pckeyboard/LatinIME;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PCKeyboard/Notification"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationReceiver.onReceive called, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "org.pocketworkstation.pckeyboard.SHOW"

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "input_method"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    .line 31
    iget-object p2, p0, Lorg/pocketworkstation/pckeyboard/NotificationReceiver;->mIME:Lorg/pocketworkstation/pckeyboard/LatinIME;

    iget-object p2, p2, Lorg/pocketworkstation/pckeyboard/LatinIME;->mToken:Landroid/os/IBinder;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_0
    const-string v0, "org.pocketworkstation.pckeyboard.SETTINGS"

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 34
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/NotificationReceiver;->mIME:Lorg/pocketworkstation/pckeyboard/LatinIME;

    const-class v1, Lorg/pocketworkstation/pckeyboard/LatinIMESettings;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
