.class Lorg/pocketworkstation/pckeyboard/ModifierKeyState;
.super Ljava/lang/Object;
.source "ModifierKeyState.java"


# static fields
.field private static final CHORDING:I = 0x2

.field private static final PRESSING:I = 0x1

.field private static final RELEASING:I


# instance fields
.field private mState:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->mState:I

    return-void
.end method


# virtual methods
.method public isChording()Z
    .locals 2

    .line 40
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onOtherKeyPressed()V
    .locals 2

    .line 35
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->mState:I

    :cond_0
    return-void
.end method

.method public onPress()V
    .locals 1

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->mState:I

    return-void
.end method

.method public onRelease()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModifierKeyState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/ModifierKeyState;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
