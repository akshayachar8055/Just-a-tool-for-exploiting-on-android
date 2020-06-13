.class Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecognitionTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/VoiceRecognitionTrigger;->register(Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field private final synthetic val$listener:Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/VoiceRecognitionTrigger;Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;->this$0:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    iput-object p2, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;->val$listener:Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;

    .line 136
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/google/android/voiceime/VoiceRecognitionTrigger$1;->val$listener:Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;

    invoke-interface {p1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger$Listener;->onVoiceImeEnabledStatusChange()V

    :cond_0
    return-void
.end method
