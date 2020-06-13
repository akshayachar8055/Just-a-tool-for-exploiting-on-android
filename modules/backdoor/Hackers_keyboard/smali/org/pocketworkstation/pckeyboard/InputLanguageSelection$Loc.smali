.class Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;
.super Ljava/lang/Object;
.source "InputLanguageSelection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/InputLanguageSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 143
    sget-object v0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    check-cast p1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;

    iget-object p1, p1, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    return-object v0
.end method
