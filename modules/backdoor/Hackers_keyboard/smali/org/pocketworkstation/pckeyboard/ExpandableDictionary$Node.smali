.class Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field children:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;

.field code:C

.field frequency:I

.field ngrams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NextWord;",
            ">;"
        }
    .end annotation
.end field

.field parent:Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

.field terminal:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
