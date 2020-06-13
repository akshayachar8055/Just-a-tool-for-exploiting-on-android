.class Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NextWord"
.end annotation


# instance fields
.field frequency:I

.field nextWord:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;

.field word:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;I)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->word:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    .line 89
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;->frequency:I

    return-void
.end method
