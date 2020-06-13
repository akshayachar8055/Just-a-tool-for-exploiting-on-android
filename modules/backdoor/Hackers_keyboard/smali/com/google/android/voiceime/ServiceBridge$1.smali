.class Lcom/google/android/voiceime/ServiceBridge$1;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Lcom/google/android/voiceime/ServiceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voiceime/ServiceBridge;->startVoiceRecognition(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;

.field private final synthetic val$conReq:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$conReq:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$1;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    invoke-static {v0}, Lcom/google/android/voiceime/ServiceBridge;->access$0(Lcom/google/android/voiceime/ServiceBridge;)Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/IntentApiTrigger$Callback;->onRecognitionResult(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$1;->val$conReq:Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
