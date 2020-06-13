.class Lcom/google/android/voiceime/ImeTrigger;
.super Ljava/lang/Object;
.source "ImeTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/Trigger;


# static fields
.field private static final VOICE_IME_PACKAGE_PREFIX:Ljava/lang/String; = "com.google.android"

.field private static final VOICE_IME_SUBTYPE_MODE:Ljava/lang/String; = "voice"


# instance fields
.field private final mInputMethodService:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method private static getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    const-string v0, "input_method"

    .line 65
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 64
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private static getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v1, 0x0

    .line 85
    :goto_1
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    const-string v3, "voice"

    .line 87
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getVoiceImeSubtype(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object p1

    .line 74
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 76
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static isInstalled(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 3

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    return v1

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public onStartInputView()V
    .locals 0

    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 3

    .line 49
    iget-object p1, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {p1}, Lcom/google/android/voiceime/ImeTrigger;->getInputMethodManager(Landroid/inputmethodservice/InputMethodService;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeInputMethodInfo(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/google/android/voiceime/ImeTrigger;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 59
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/google/android/voiceime/ImeTrigger;->getVoiceImeSubtype(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 57
    invoke-virtual {p1, v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method
