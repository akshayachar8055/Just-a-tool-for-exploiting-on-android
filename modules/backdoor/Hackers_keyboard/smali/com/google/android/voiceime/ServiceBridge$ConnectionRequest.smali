.class Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voiceime/ServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRequest"
.end annotation


# instance fields
.field private final mLanguageCode:Ljava/lang/String;

.field private mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

.field final synthetic this$0:Lcom/google/android/voiceime/ServiceBridge;


# direct methods
.method private constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->this$0:Lcom/google/android/voiceime/ServiceBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mLanguageCode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;-><init>(Lcom/google/android/voiceime/ServiceBridge;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->setServiceCallback(Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    return-void
.end method

.method private setServiceCallback(Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 87
    check-cast p2, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    invoke-virtual {p2}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;->getService()Lcom/google/android/voiceime/ServiceHelper;

    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mLanguageCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/voiceime/ServiceBridge$ConnectionRequest;->mServiceCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/voiceime/ServiceHelper;->startRecognition(Ljava/lang/String;Lcom/google/android/voiceime/ServiceHelper$Callback;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
