.class Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NodeArray"
.end annotation


# static fields
.field private static final INCREMENT:I = 0x2


# instance fields
.field data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

.field length:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    return-void
.end method


# virtual methods
.method add(Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;)V
    .locals 4

    .line 71
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 72
    iget v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    .line 73
    iget v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    if-lez v1, :cond_0

    .line 74
    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    iget v2, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    :cond_0
    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->data:[Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$Node;

    iget v1, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/pocketworkstation/pckeyboard/ExpandableDictionary$NodeArray;->length:I

    aput-object p1, v0, v1

    return-void
.end method
