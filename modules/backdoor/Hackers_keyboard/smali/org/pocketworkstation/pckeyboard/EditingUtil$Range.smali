.class public Lorg/pocketworkstation/pckeyboard/EditingUtil$Range;
.super Ljava/lang/Object;
.source "EditingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/EditingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public charsAfter:I

.field public charsBefore:I

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 130
    iput p1, p0, Lorg/pocketworkstation/pckeyboard/EditingUtil$Range;->charsBefore:I

    .line 131
    iput p2, p0, Lorg/pocketworkstation/pckeyboard/EditingUtil$Range;->charsAfter:I

    .line 132
    iput-object p3, p0, Lorg/pocketworkstation/pckeyboard/EditingUtil$Range;->word:Ljava/lang/String;

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
