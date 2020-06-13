.class Lcom/google/android/voiceime/IntentApiTrigger;
.super Ljava/lang/Object;
.source "IntentApiTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/Trigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/IntentApiTrigger$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceIntentApiTrigger"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mLastRecognitionResult:Ljava/lang/String;

.field private final mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

.field private mToken:Landroid/os/IBinder;

.field private mUpperCaseChars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    .line 60
    new-instance p1, Lcom/google/android/voiceime/ServiceBridge;

    new-instance v0, Lcom/google/android/voiceime/IntentApiTrigger$1;

    invoke-direct {v0, p0}, Lcom/google/android/voiceime/IntentApiTrigger$1;-><init>(Lcom/google/android/voiceime/IntentApiTrigger;)V

    invoke-direct {p1, v0}, Lcom/google/android/voiceime/ServiceBridge;-><init>(Lcom/google/android/voiceime/IntentApiTrigger$Callback;)V

    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    .line 68
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    .line 69
    iget-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/google/android/voiceime/IntentApiTrigger;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/voiceime/IntentApiTrigger;->postResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/voiceime/IntentApiTrigger;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/google/android/voiceime/IntentApiTrigger;->commitResult()V

    return-void
.end method

.method private commitResult()V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "VoiceIntentApiTrigger"

    const-string v1, "Unable to commit recognition result, as the current input connection is null. Did someone kill the IME?"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "VoiceIntentApiTrigger"

    const-string v1, "Unable to commit recognition result, as a batch edit cannot start"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_2
    :try_start_0
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x1

    .line 144
    iput v3, v2, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    const/4 v3, 0x0

    .line 146
    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "VoiceIntentApiTrigger"

    const-string v2, "Unable to commit recognition result, as extracted text is null"

    .line 149
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_3
    iget-object v4, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    .line 155
    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-eq v4, v5, :cond_4

    .line 156
    iget v4, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v5, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 159
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/google/android/voiceime/IntentApiTrigger;->format(Landroid/view/inputmethod/ExtractedText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_5
    invoke-interface {v1, v0, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "VoiceIntentApiTrigger"

    const-string v2, "Unable to commit recognition result"

    .line 163
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 167
    :try_start_1
    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 170
    throw v0
.end method

.method private format(Landroid/view/inputmethod/ExtractedText;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 178
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_1

    .line 180
    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mUpperCaseChars:Ljava/util/Set;

    iget-object v3, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 188
    :cond_3
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_4

    .line 189
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_4

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 193
    :cond_4
    iget v0, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 194
    iget-object v0, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget p1, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-nez p1, :cond_5

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_5
    return-object p2
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v1, "input_method"

    .line 93
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static isInstalled(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 2

    .line 85
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 88
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private postResult(Ljava/lang/String;)V
    .locals 2

    .line 97
    iput-object p1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/google/android/voiceime/IntentApiTrigger;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    return-void
.end method

.method private scheduleCommit()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/voiceime/IntentApiTrigger$2;

    invoke-direct {v1, p0}, Lcom/google/android/voiceime/IntentApiTrigger$2;-><init>(Lcom/google/android/voiceime/IntentApiTrigger;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onStartInputView()V
    .locals 2

    const-string v0, "VoiceIntentApiTrigger"

    const-string v1, "#onStartInputView"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mLastRecognitionResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/google/android/voiceime/IntentApiTrigger;->scheduleCommit()V

    :cond_0
    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mToken:Landroid/os/IBinder;

    .line 81
    iget-object v0, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mServiceBridge:Lcom/google/android/voiceime/ServiceBridge;

    iget-object v1, p0, Lcom/google/android/voiceime/IntentApiTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/voiceime/ServiceBridge;->startVoiceRecognition(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
