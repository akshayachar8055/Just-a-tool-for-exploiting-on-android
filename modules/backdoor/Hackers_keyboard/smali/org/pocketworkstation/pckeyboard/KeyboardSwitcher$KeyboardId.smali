.class Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardId"
.end annotation


# instance fields
.field public final mEnableShiftLock:Z

.field public final mHasVoice:Z

.field private final mHashCode:I

.field public final mKeyboardHeightPercent:F

.field public final mKeyboardMode:I

.field public final mUsingExtension:Z

.field public final mXml:I


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 2

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    .line 236
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    .line 237
    iput-boolean p3, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    .line 238
    iput-boolean p4, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    .line 239
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->keyboardHeightPercent:F

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mKeyboardHeightPercent:F

    .line 240
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinIME;->sKeyboardSettings:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iget-boolean v0, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->useExtension:Z

    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mUsingExtension:Z

    const/4 v0, 0x4

    .line 242
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 243
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 242
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mHashCode:I

    return-void
.end method

.method static synthetic access$000(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Z
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->equals(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Z

    move-result p0

    return p0
.end method

.method private equals(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 252
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mUsingExtension:Z

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mUsingExtension:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    iget-boolean v1, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 248
    instance-of v0, p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, p1}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->equals(Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 262
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher$KeyboardId;->mHashCode:I

    return v0
.end method
