.class Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;
.super Lorg/pocketworkstation/pckeyboard/Keyboard$Key;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LatinKey"
.end annotation


# instance fields
.field private final KEY_STATE_FUNCTIONAL_NORMAL:[I

.field private final KEY_STATE_FUNCTIONAL_PRESSED:[I

.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;


# direct methods
.method public constructor <init>(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 6

    .line 802
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 803
    invoke-direct/range {v0 .. v5}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;-><init>(Landroid/content/res/Resources;Lorg/pocketworkstation/pckeyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    const/4 p1, 0x1

    .line 791
    new-array p1, p1, [I

    const/4 p2, 0x0

    const p3, 0x10100a3

    aput p3, p1, p2

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    const/4 p1, 0x2

    .line 796
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a3
        0x10100a7
    .end array-data
.end method

.method private isFunctionalKey()Z
    .locals 1

    .line 809
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->sticky:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->modifier:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 1

    .line 829
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->isFunctionalKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->pressed:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    return-object v0

    .line 833
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    return-object v0

    .line 836
    :cond_1
    invoke-super {p0}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v0

    return-object v0
.end method

.method public isInside(II)Z
    .locals 1

    .line 819
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-virtual {v0, p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->isInside(Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;II)Z

    move-result p1

    return p1
.end method

.method isInsideSuper(II)Z
    .locals 0

    .line 824
    invoke-super {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/Keyboard$Key;->isInside(II)Z

    move-result p1

    return p1
.end method

.method public squaredDistanceFrom(II)I
    .locals 3

    .line 842
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->this$0:Lorg/pocketworkstation/pckeyboard/LatinKeyboard;

    invoke-static {v0}, Lorg/pocketworkstation/pckeyboard/LatinKeyboard;->access$100(Lorg/pocketworkstation/pckeyboard/LatinKeyboard;)I

    move-result v0

    .line 843
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->x:I

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 844
    iget p1, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->y:I

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/LatinKeyboard$LatinKey;->height:I

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    sub-int/2addr p1, p2

    mul-int v1, v1, v1

    mul-int p1, p1, p1

    add-int/2addr v1, p1

    return v1
.end method
