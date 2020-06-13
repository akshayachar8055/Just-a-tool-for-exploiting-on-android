.class Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;
.super Ljava/lang/Object;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/UserBigramDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bigram"
.end annotation


# instance fields
.field frequency:I

.field word1:Ljava/lang/String;

.field word2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word1:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word2:Ljava/lang/String;

    .line 118
    iput p3, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->frequency:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 123
    check-cast p1, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;

    .line 124
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word1:Ljava/lang/String;

    iget-object v1, p1, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word2:Ljava/lang/String;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word2:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/UserBigramDictionary$Bigram;->word2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
