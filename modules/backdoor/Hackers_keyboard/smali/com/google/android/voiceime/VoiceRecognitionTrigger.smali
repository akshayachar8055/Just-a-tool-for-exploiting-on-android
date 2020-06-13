.class public Lcom/google/android/voiceime/VoiceRecognitionTrigger;
.super Ljava/lang/Object;
.source "VoiceRecognitionTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;
    }
.end annotation


# instance fields
.field private mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTrigger:Lcom/google/android/voiceime/Trigger;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 46
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    return-void
.end method

.method private getImeTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/google/android/voiceime/ImeTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/ImeTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mImeTrigger:Lcom/google/android/voiceime/ImeTrigger;

    return-object v0
.end method

.method private getIntentTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/google/android/voiceime/IntentApiTrigger;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v0, v1}, Lcom/google/android/voiceime/IntentApiTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mIntentApiTrigger:Lcom/google/android/voiceime/IntentApiTrigger;

    return-object v0
.end method

.method private getTrigger()Lcom/google/android/voiceime/Trigger;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/ImeTrigger;->isInstalled(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getImeTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v0}, Lcom/google/android/voiceime/IntentApiTrigger;->isInstalled(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getIntentTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private isNetworkAvailable()Z
    .locals 3

    const/4 v0, 0x1

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v2, "connectivity"

    .line 116
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 118
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    return v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStartInputView()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0}, Lcom/google/android/voiceime/Trigger;->onStartInputView()V

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->getTrigger()Lcom/google/android/voiceime/Trigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    return-void
.end method

.method public register(Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V
    .locals 2

    .line 136
    new-instance v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;-><init>(Lcom/google/android/voiceime/VoiceRecognitionTrigger;Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V

    iput-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startVoiceRecognition()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition(Ljava/lang/String;)V

    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mTrigger:Lcom/google/android/voiceime/Trigger;

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/Trigger;->startVoiceRecognition(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
