.class Lcom/google/android/voiceime/ServiceBridge;
.super Ljava/lang/Object;
.source "ServiceBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;,
        Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceBridge"


# instance fields
.field private final mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/google/android/voiceime/ServiceBridge;-><init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/voiceime/ServiceBridge;)Lcom/google/android/voiceime/IntentApiTrigger$Callback;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/android/voiceime/ServiceBridge;->mCallback:Lcom/google/android/voiceime/IntentApiTrigger$Callback;

    return-object p0
.end method


# virtual methods
.method public notifyResult(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;-><init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$ConnectionResponse;)V

    .line 63
    new-instance p2, Landroid/content/Intent;

    .line 64
    const-class v1, Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public startVoiceRecognition(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;-><init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;)V

    .line 48
    new-instance p2, Lcom/google/android/voiceime/ServiceBridge$1;

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/voiceime/ServiceBridge$1;-><init>(Lcom/google/android/voiceime/ServiceBridge;Landroid/content/Context;Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;)V

    invoke-static {v0, p2}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->access$1(Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    .line 57
    new-instance p2, Landroid/content/Intent;

    .line 58
    const-class v1, Lcom/google/android/voiceime/ServiceHelper;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
