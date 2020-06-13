.class final Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;
.super Landroid/util/SparseArray;
.source "ComposeSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/ComposeSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const-string v0, "quot"

    const/16 v1, 0x22

    .line 78
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "\u2191"

    const v1, 0xffed

    .line 79
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "\u2193"

    const v1, 0xffec

    .line 80
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "\u2190"

    const v1, 0xffeb

    .line 81
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "\u2192"

    const v1, 0xffea

    .line 82
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "\u25ef"

    const v1, 0xffe9

    .line 83
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "PgUp"

    const v1, 0xffa4

    .line 84
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "PgDn"

    const v1, 0xffa3

    .line 85
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "Esc"

    const v1, 0xff91

    .line 86
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "Del"

    const v1, 0xff90

    .line 87
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "Caps"

    const v1, 0xff8d

    .line 88
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "Scroll"

    const v1, 0xff8c

    .line 89
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "SysRq"

    const v1, 0xff88

    .line 90
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "Break"

    const v1, 0xff87

    .line 91
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "Home"

    const v1, 0xff86

    .line 92
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "End"

    const v1, 0xff85

    .line 93
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "Insert"

    const v1, 0xff84

    .line 94
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F1"

    const v1, 0xff7d

    .line 95
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F2"

    const v1, 0xff7c

    .line 96
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F3"

    const v1, 0xff7b

    .line 97
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F4"

    const v1, 0xff7a

    .line 98
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F5"

    const v1, 0xff79

    .line 99
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F6"

    const v1, 0xff78

    .line 100
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F7"

    const v1, 0xff77

    .line 101
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F8"

    const v1, 0xff76

    .line 102
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F9"

    const v1, 0xff75

    .line 103
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F10"

    const v1, 0xff74

    .line 104
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F11"

    const v1, 0xff73

    .line 105
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "F12"

    const v1, 0xff72

    .line 106
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    const-string v0, "Num"

    const v1, 0xff71

    .line 107
    invoke-virtual {p0, v1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;->append(ILjava/lang/Object;)V

    return-void
.end method
