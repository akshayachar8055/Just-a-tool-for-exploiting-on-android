.class public Lcom/google/android/voiceime/ActivityHelper;
.super Landroid/app/Activity;
.source "ActivityHelper.java"


# static fields
.field private static final RECOGNITION_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityHelper"


# instance fields
.field private mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/voiceime/ActivityHelper;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V

    return-void
.end method

.method private createResultDialog([Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x1030071

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 85
    :goto_0
    new-instance v1, Lcom/google/android/voiceime/ActivityHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/voiceime/ActivityHelper$1;-><init>(Lcom/google/android/voiceime/ActivityHelper;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 93
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance p1, Lcom/google/android/voiceime/ActivityHelper$2;

    invoke-direct {p1, p0}, Lcom/google/android/voiceime/ActivityHelper$2;-><init>(Lcom/google/android/voiceime/ActivityHelper;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 102
    new-instance v1, Lcom/google/android/voiceime/ActivityHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/ActivityHelper$3;-><init>(Lcom/google/android/voiceime/ActivityHelper;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private notifyResult(Ljava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/voiceime/ActivityHelper;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/voiceime/ServiceBridge;->notifyResult(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/voiceime/ActivityHelper;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android.speech.extra.RESULTS"

    .line 67
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.speech.extra.RESULTS"

    .line 69
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ActivityHelper;->createResultDialog([Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ActivityHelper;->notifyResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {v0}, Lcom/google/android/voiceime/ServiceBridge;-><init>()V

    iput-object v0, p0, Lcom/google/android/voiceime/ActivityHelper;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "calling_package"

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x5

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "android.speech.extra.LANGUAGE"

    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "android.speech.extra.LANGUAGE"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/google/android/voiceime/ActivityHelper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
