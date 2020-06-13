.class public Lorg/pocketworkstation/pckeyboard/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field private mAutoCapitalized:Z

.field private mCapsCount:I

.field private final mCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private mIsFirstCharCapitalized:Z

.field private mPreferredWord:Ljava/lang/String;

.field private final mTypedWord:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    return-void
.end method

.method constructor <init>(Lorg/pocketworkstation/pckeyboard/WordComposer;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p1, Lorg/pocketworkstation/pckeyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 55
    iget v0, p1, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    .line 56
    iget-boolean v0, p1, Lorg/pocketworkstation/pckeyboard/WordComposer;->mAutoCapitalized:Z

    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mAutoCapitalized:Z

    .line 57
    iget-boolean p1, p1, Lorg/pocketworkstation/pckeyboard/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mIsFirstCharCapitalized:Z

    return-void
.end method

.method private correctCodesCase([I)V
    .locals 2

    const/4 v0, 0x0

    .line 118
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 119
    aget v1, p1, v0

    if-lez v1, :cond_0

    .line 120
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    aput v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private correctPrimaryJuxtapos(I[I)V
    .locals 3

    .line 109
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 110
    aget v1, p2, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    aget v2, p2, v1

    if-lez v2, :cond_1

    aget v2, p2, v0

    if-eq v2, p1, :cond_1

    aget v2, p2, v1

    if-ne v2, p1, :cond_1

    .line 111
    aget v2, p2, v0

    aput v2, p2, v1

    .line 112
    aput p1, p2, v0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(I[I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->correctPrimaryJuxtapos(I[I)V

    .line 96
    invoke-direct {p0, p2}, Lorg/pocketworkstation/pckeyboard/WordComposer;->correctCodesCase([I)V

    .line 97
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    :cond_0
    return-void
.end method

.method public deleteLast()V
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 132
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 133
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    :cond_0
    return-void
.end method

.method public getCodesAt(I)[I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public getPreferredWord()Ljava/lang/CharSequence;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTypedWord()Ljava/lang/CharSequence;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public isAllUpperCase()Z
    .locals 2

    .line 167
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/WordComposer;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoCapitalized()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isFirstCharCapitalized()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .locals 2

    .line 190
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mIsFirstCharCapitalized:Z

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCapsCount:I

    return-void
.end method

.method public setAutoCapitalized(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mAutoCapitalized:Z

    return-void
.end method

.method public setFirstCharCapitalized(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mIsFirstCharCapitalized:Z

    return-void
.end method

.method public setPreferredWord(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
