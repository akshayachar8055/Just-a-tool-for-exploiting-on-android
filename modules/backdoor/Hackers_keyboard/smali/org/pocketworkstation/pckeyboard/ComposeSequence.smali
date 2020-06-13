.class public Lorg/pocketworkstation/pckeyboard/ComposeSequence;
.super Ljava/lang/Object;
.source "ComposeSequence.java"


# static fields
.field protected static final BREAK:C = '\uff87'

.field protected static final CAPS_LOCK:C = '\uff8d'

.field protected static final COMPOSE:C = '\uffe9'

.field protected static final DELETE:C = '\uff90'

.field protected static final DOWN:C = '\uffec'

.field protected static final END:C = '\uff85'

.field protected static final ESCAPE:C = '\uff91'

.field protected static final F1:C = '\uff7d'

.field protected static final F10:C = '\uff74'

.field protected static final F11:C = '\uff73'

.field protected static final F12:C = '\uff72'

.field protected static final F2:C = '\uff7c'

.field protected static final F3:C = '\uff7b'

.field protected static final F4:C = '\uff7a'

.field protected static final F5:C = '\uff79'

.field protected static final F6:C = '\uff78'

.field protected static final F7:C = '\uff77'

.field protected static final F8:C = '\uff76'

.field protected static final F9:C = '\uff75'

.field protected static final HOME:C = '\uff86'

.field protected static final INSERT:C = '\uff84'

.field protected static final LEFT:C = '\uffeb'

.field protected static final NUM_LOCK:C = '\uff71'

.field protected static final PAGE_DOWN:C = '\uffa3'

.field protected static final PAGE_UP:C = '\uffa4'

.field protected static final RIGHT:C = '\uffea'

.field protected static final SCROLL_LOCK:C = '\uff8c'

.field protected static final SYSRQ:C = '\uff88'

.field private static final TAG:Ljava/lang/String; = "HK/ComposeSequence"

.field protected static final UP:C = '\uffed'

.field private static final keyNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final mPrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected composeBuffer:Ljava/lang/StringBuilder;

.field protected composeUser:Lorg/pocketworkstation/pckeyboard/ComposeSequencing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mPrefixes:Ljava/util/Set;

    .line 76
    new-instance v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;

    invoke-direct {v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence$1;-><init>()V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->keyNames:Landroid/util/SparseArray;

    .line 1135
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/pocketworkstation/pckeyboard/ComposeSequencing;)V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeBuffer:Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->init(Lorg/pocketworkstation/pckeyboard/ComposeSequencing;)V

    return-void
.end method

.method protected static format(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x22

    if-ge v0, v1, :cond_7

    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 145
    sget-object v7, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->keyNames:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x20

    if-eqz v7, :cond_1

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    const-string v3, "\" "

    goto :goto_1

    :cond_0
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->keyNames:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_5

    :cond_1
    if-nez v3, :cond_3

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " \""

    goto :goto_2

    :cond_2
    const-string v4, "\""

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-lt v6, v8, :cond_5

    if-eq v6, v5, :cond_5

    const/16 v3, 0x5c

    if-ne v6, v3, :cond_4

    goto :goto_3

    .line 154
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 152
    :cond_5
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v6, v8, :cond_6

    add-int/lit8 v6, v6, 0x40

    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    const/4 v4, 0x1

    move-object v4, v3

    const/4 v3, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 159
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8
    return-object v4
.end method

.method protected static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mPrefixes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 170
    :cond_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HK/ComposeSequence"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compose sequence is a duplicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_1
    sget-object v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mPrefixes:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HK/ComposeSequence"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compose sequence is a subset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_2
    :goto_0
    sget-object v0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 177
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 178
    sget-object v3, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 179
    sget-object v3, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->mPrefixes:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const-string p1, "HK/ComposeSequence"

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compose sequence is a superset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private static reset()V
    .locals 2

    const-string v0, "++"

    const-string v1, "#"

    .line 249
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\' "

    const-string v1, "\'"

    .line 250
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " \'"

    const-string v1, "\'"

    .line 251
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AT"

    const-string v1, "@"

    .line 252
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(("

    const-string v1, "["

    .line 253
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "//"

    const-string v1, "\\"

    .line 254
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/<"

    const-string v1, "\\"

    .line 255
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "</"

    const-string v1, "\\"

    .line 256
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "))"

    const-string v1, "]"

    .line 257
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^ "

    const-string v1, "^"

    .line 258
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " ^"

    const-string v1, "^"

    .line 259
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "> "

    const-string v1, "^"

    .line 260
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " >"

    const-string v1, "^"

    .line 261
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "` "

    const-string v1, "`"

    .line 262
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " `"

    const-string v1, "`"

    .line 263
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", "

    const-string v1, "\u00b8"

    .line 264
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " ,"

    const-string v1, "\u00b8"

    .line 265
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(-"

    const-string v1, "{"

    .line 266
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-("

    const-string v1, "{"

    .line 267
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/^"

    const-string v1, "|"

    .line 268
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^/"

    const-string v1, "|"

    .line 269
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VL"

    const-string v1, "|"

    .line 270
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LV"

    const-string v1, "|"

    .line 271
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vl"

    const-string v1, "|"

    .line 272
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lv"

    const-string v1, "|"

    .line 273
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")-"

    const-string v1, "}"

    .line 274
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-)"

    const-string v1, "}"

    .line 275
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~ "

    const-string v1, "~"

    .line 276
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " ~"

    const-string v1, "~"

    .line 277
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "- "

    const-string v1, "~"

    .line 278
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " -"

    const-string v1, "~"

    .line 279
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  "

    const-string v1, "\u00a0"

    .line 280
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " ."

    const-string v1, "\u2008"

    .line 281
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oc"

    const-string v1, "\u00a9"

    .line 282
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oC"

    const-string v1, "\u00a9"

    .line 283
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Oc"

    const-string v1, "\u00a9"

    .line 284
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OC"

    const-string v1, "\u00a9"

    .line 285
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "or"

    const-string v1, "\u00ae"

    .line 286
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oR"

    const-string v1, "\u00ae"

    .line 287
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Or"

    const-string v1, "\u00ae"

    .line 288
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OR"

    const-string v1, "\u00ae"

    .line 289
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".>"

    const-string v1, "\u203a"

    .line 290
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".<"

    const-string v1, "\u2039"

    .line 291
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".."

    const-string v1, "\u2026"

    .line 292
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".-"

    const-string v1, "\u00b7"

    .line 293
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".="

    const-string v1, "\u2022"

    .line 294
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!^"

    const-string v1, "\u00a6"

    .line 295
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!!"

    const-string v1, "\u00a1"

    .line 296
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "p!"

    const-string v1, "\u00b6"

    .line 297
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "P!"

    const-string v1, "\u00b6"

    .line 298
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "+-"

    const-string v1, "\u00b1"

    .line 299
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "??"

    const-string v1, "\u00bf"

    .line 300
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-d"

    const-string v1, "\u0111"

    .line 301
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-D"

    const-string v1, "\u0110"

    .line 302
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ss"

    const-string v1, "\u00df"

    .line 303
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SS"

    const-string v1, "\u1e9e"

    .line 304
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oe"

    const-string v1, "\u0153"

    .line 305
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OE"

    const-string v1, "\u0152"

    .line 306
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ae"

    const-string v1, "\u00e6"

    .line 307
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AE"

    const-string v1, "\u00c6"

    .line 308
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oo"

    const-string v1, "\u00b0"

    .line 309
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"\\"

    const-string v1, "\u301d"

    .line 310
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"/"

    const-string v1, "\u301e"

    .line 311
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<<"

    const-string v1, "\u00ab"

    .line 312
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">>"

    const-string v1, "\u00bb"

    .line 313
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<\'"

    const-string v1, "\u2018"

    .line 314
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'<"

    const-string v1, "\u2018"

    .line 315
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">\'"

    const-string v1, "\u2019"

    .line 316
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'>"

    const-string v1, "\u2019"

    .line 317
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",\'"

    const-string v1, "\u201a"

    .line 318
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\',"

    const-string v1, "\u201a"

    .line 319
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<\""

    const-string v1, "\u201c"

    .line 320
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"<"

    const-string v1, "\u201c"

    .line 321
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">\""

    const-string v1, "\u201d"

    .line 322
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\">"

    const-string v1, "\u201d"

    .line 323
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",\""

    const-string v1, "\u201e"

    .line 324
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\","

    const-string v1, "\u201e"

    .line 325
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%o"

    const-string v1, "\u2030"

    .line 326
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CE"

    const-string v1, "\u20a0"

    .line 327
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "C/"

    const-string v1, "\u20a1"

    .line 328
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/C"

    const-string v1, "\u20a1"

    .line 329
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cr"

    const-string v1, "\u20a2"

    .line 330
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Fr"

    const-string v1, "\u20a3"

    .line 331
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "L="

    const-string v1, "\u20a4"

    .line 332
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=L"

    const-string v1, "\u20a4"

    .line 333
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "m/"

    const-string v1, "\u20a5"

    .line 334
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/m"

    const-string v1, "\u20a5"

    .line 335
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "N="

    const-string v1, "\u20a6"

    .line 336
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=N"

    const-string v1, "\u20a6"

    .line 337
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Pt"

    const-string v1, "\u20a7"

    .line 338
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Rs"

    const-string v1, "\u20a8"

    .line 339
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "W="

    const-string v1, "\u20a9"

    .line 340
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=W"

    const-string v1, "\u20a9"

    .line 341
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "d-"

    const-string v1, "\u20ab"

    .line 342
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "C="

    const-string v1, "\u20ac"

    .line 343
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=C"

    const-string v1, "\u20ac"

    .line 344
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c="

    const-string v1, "\u20ac"

    .line 345
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=c"

    const-string v1, "\u20ac"

    .line 346
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "E="

    const-string v1, "\u20ac"

    .line 347
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=E"

    const-string v1, "\u20ac"

    .line 348
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "e="

    const-string v1, "\u20ac"

    .line 349
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=e"

    const-string v1, "\u20ac"

    .line 350
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "|c"

    const-string v1, "\u00a2"

    .line 351
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c|"

    const-string v1, "\u00a2"

    .line 352
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c/"

    const-string v1, "\u00a2"

    .line 353
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/c"

    const-string v1, "\u00a2"

    .line 354
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "L-"

    const-string v1, "\u00a3"

    .line 355
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-L"

    const-string v1, "\u00a3"

    .line 356
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Y="

    const-string v1, "\u00a5"

    .line 357
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=Y"

    const-string v1, "\u00a5"

    .line 358
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fs"

    const-string v1, "\u017f"

    .line 359
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fS"

    const-string v1, "\u017f"

    .line 360
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "--."

    const-string v1, "\u2013"

    .line 361
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "---"

    const-string v1, "\u2014"

    .line 362
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#b"

    const-string v1, "\u266d"

    .line 363
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "#f"

    const-string v1, "\u266e"

    .line 364
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "##"

    const-string v1, "\u266f"

    .line 365
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "so"

    const-string v1, "\u00a7"

    .line 366
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    const-string v1, "\u00a7"

    .line 367
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ox"

    const-string v1, "\u00a4"

    .line 368
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xo"

    const-string v1, "\u00a4"

    .line 369
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PP"

    const-string v1, "\u00b6"

    .line 370
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "No"

    const-string v1, "\u2116"

    .line 371
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NO"

    const-string v1, "\u2116"

    .line 372
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?!"

    const-string v1, "\u2e18"

    .line 373
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!?"

    const-string v1, "\u203d"

    .line 374
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CCCP"

    const-string v1, "\u262d"

    .line 375
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OA"

    const-string v1, "\u24b6"

    .line 376
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<3"

    const-string v1, "\u2665"

    .line 377
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":)"

    const-string v1, "\u263a"

    .line 378
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":("

    const-string v1, "\u2639"

    .line 379
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",-"

    const-string v1, "\u00ac"

    .line 380
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-,"

    const-string v1, "\u00ac"

    .line 381
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_a"

    const-string v1, "\u00aa"

    .line 382
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^2"

    const-string v1, "\u00b2"

    .line 383
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^3"

    const-string v1, "\u00b3"

    .line 384
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mu"

    const-string v1, "\u00b5"

    .line 385
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^1"

    const-string v1, "\u00b9"

    .line 386
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_o"

    const-string v1, "\u00ba"

    .line 387
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "14"

    const-string v1, "\u00bc"

    .line 388
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "12"

    const-string v1, "\u00bd"

    .line 389
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "34"

    const-string v1, "\u00be"

    .line 390
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`A"

    const-string v1, "\u00c0"

    .line 391
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'A"

    const-string v1, "\u00c1"

    .line 392
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^A"

    const-string v1, "\u00c2"

    .line 393
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~A"

    const-string v1, "\u00c3"

    .line 394
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"A"

    const-string v1, "\u00c4"

    .line 395
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oA"

    const-string v1, "\u00c5"

    .line 396
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",C"

    const-string v1, "\u00c7"

    .line 397
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`E"

    const-string v1, "\u00c8"

    .line 398
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'E"

    const-string v1, "\u00c9"

    .line 399
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^E"

    const-string v1, "\u00ca"

    .line 400
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"E"

    const-string v1, "\u00cb"

    .line 401
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`I"

    const-string v1, "\u00cc"

    .line 402
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'I"

    const-string v1, "\u00cd"

    .line 403
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^I"

    const-string v1, "\u00ce"

    .line 404
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"I"

    const-string v1, "\u00cf"

    .line 405
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DH"

    const-string v1, "\u00d0"

    .line 406
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~N"

    const-string v1, "\u00d1"

    .line 407
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`O"

    const-string v1, "\u00d2"

    .line 408
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'O"

    const-string v1, "\u00d3"

    .line 409
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^O"

    const-string v1, "\u00d4"

    .line 410
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~O"

    const-string v1, "\u00d5"

    .line 411
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"O"

    const-string v1, "\u00d6"

    .line 412
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xx"

    const-string v1, "\u00d7"

    .line 413
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/O"

    const-string v1, "\u00d8"

    .line 414
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`U"

    const-string v1, "\u00d9"

    .line 415
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'U"

    const-string v1, "\u00da"

    .line 416
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^U"

    const-string v1, "\u00db"

    .line 417
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"U"

    const-string v1, "\u00dc"

    .line 418
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'Y"

    const-string v1, "\u00dd"

    .line 419
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TH"

    const-string v1, "\u00de"

    .line 420
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`a"

    const-string v1, "\u00e0"

    .line 421
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'a"

    const-string v1, "\u00e1"

    .line 422
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^a"

    const-string v1, "\u00e2"

    .line 423
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~a"

    const-string v1, "\u00e3"

    .line 424
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"a"

    const-string v1, "\u00e4"

    .line 425
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oa"

    const-string v1, "\u00e5"

    .line 426
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",c"

    const-string v1, "\u00e7"

    .line 427
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`e"

    const-string v1, "\u00e8"

    .line 428
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'e"

    const-string v1, "\u00e9"

    .line 429
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^e"

    const-string v1, "\u00ea"

    .line 430
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"e"

    const-string v1, "\u00eb"

    .line 431
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`i"

    const-string v1, "\u00ec"

    .line 432
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'i"

    const-string v1, "\u00ed"

    .line 433
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^i"

    const-string v1, "\u00ee"

    .line 434
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"i"

    const-string v1, "\u00ef"

    .line 435
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dh"

    const-string v1, "\u00f0"

    .line 436
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~n"

    const-string v1, "\u00f1"

    .line 437
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`o"

    const-string v1, "\u00f2"

    .line 438
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'o"

    const-string v1, "\u00f3"

    .line 439
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^o"

    const-string v1, "\u00f4"

    .line 440
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~o"

    const-string v1, "\u00f5"

    .line 441
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"o"

    const-string v1, "\u00f6"

    .line 442
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":-"

    const-string v1, "\u00f7"

    .line 443
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-:"

    const-string v1, "\u00f7"

    .line 444
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/o"

    const-string v1, "\u00f8"

    .line 445
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`u"

    const-string v1, "\u00f9"

    .line 446
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'u"

    const-string v1, "\u00fa"

    .line 447
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^u"

    const-string v1, "\u00fb"

    .line 448
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"u"

    const-string v1, "\u00fc"

    .line 449
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'y"

    const-string v1, "\u00fd"

    .line 450
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "th"

    const-string v1, "\u00fe"

    .line 451
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"y"

    const-string v1, "\u00ff"

    .line 452
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_A"

    const-string v1, "\u0100"

    .line 453
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_a"

    const-string v1, "\u0101"

    .line 454
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UA"

    const-string v1, "\u0102"

    .line 455
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bA"

    const-string v1, "\u0102"

    .line 456
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ua"

    const-string v1, "\u0103"

    .line 457
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ba"

    const-string v1, "\u0103"

    .line 458
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";A"

    const-string v1, "\u0104"

    .line 459
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",A"

    const-string v1, "\u0104"

    .line 460
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";a"

    const-string v1, "\u0105"

    .line 461
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",a"

    const-string v1, "\u0105"

    .line 462
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'C"

    const-string v1, "\u0106"

    .line 463
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'c"

    const-string v1, "\u0107"

    .line 464
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^C"

    const-string v1, "\u0108"

    .line 465
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^c"

    const-string v1, "\u0109"

    .line 466
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".C"

    const-string v1, "\u010a"

    .line 467
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".c"

    const-string v1, "\u010b"

    .line 468
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cC"

    const-string v1, "\u010c"

    .line 469
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cc"

    const-string v1, "\u010d"

    .line 470
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cD"

    const-string v1, "\u010e"

    .line 471
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cd"

    const-string v1, "\u010f"

    .line 472
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/D"

    const-string v1, "\u0110"

    .line 473
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/d"

    const-string v1, "\u0111"

    .line 474
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_E"

    const-string v1, "\u0112"

    .line 475
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_e"

    const-string v1, "\u0113"

    .line 476
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UE"

    const-string v1, "\u0114"

    .line 477
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bE"

    const-string v1, "\u0114"

    .line 478
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ue"

    const-string v1, "\u0115"

    .line 479
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "be"

    const-string v1, "\u0115"

    .line 480
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".E"

    const-string v1, "\u0116"

    .line 481
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".e"

    const-string v1, "\u0117"

    .line 482
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";E"

    const-string v1, "\u0118"

    .line 483
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",E"

    const-string v1, "\u0118"

    .line 484
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";e"

    const-string v1, "\u0119"

    .line 485
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",e"

    const-string v1, "\u0119"

    .line 486
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cE"

    const-string v1, "\u011a"

    .line 487
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ce"

    const-string v1, "\u011b"

    .line 488
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "+f"

    const-string v1, "\ufb00"

    .line 490
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "f+"

    const-string v1, "\ufb00"

    .line 491
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fi"

    const-string v1, "\ufb01"

    .line 492
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fl"

    const-string v1, "\ufb02"

    .line 493
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ffi"

    const-string v1, "\ufb03"

    .line 494
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ffl"

    const-string v1, "\ufb04"

    .line 495
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^G"

    const-string v1, "\u011c"

    .line 496
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^g"

    const-string v1, "\u011d"

    .line 497
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UG"

    const-string v1, "\u011e"

    .line 498
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bG"

    const-string v1, "\u011e"

    .line 499
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ug"

    const-string v1, "\u011f"

    .line 500
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bg"

    const-string v1, "\u011f"

    .line 501
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".G"

    const-string v1, "\u0120"

    .line 502
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".g"

    const-string v1, "\u0121"

    .line 503
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",G"

    const-string v1, "\u0122"

    .line 504
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",g"

    const-string v1, "\u0123"

    .line 505
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^H"

    const-string v1, "\u0124"

    .line 506
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^h"

    const-string v1, "\u0125"

    .line 507
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/H"

    const-string v1, "\u0126"

    .line 508
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/h"

    const-string v1, "\u0127"

    .line 509
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~I"

    const-string v1, "\u0128"

    .line 510
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~i"

    const-string v1, "\u0129"

    .line 511
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_I"

    const-string v1, "\u012a"

    .line 512
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_i"

    const-string v1, "\u012b"

    .line 513
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UI"

    const-string v1, "\u012c"

    .line 514
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bI"

    const-string v1, "\u012c"

    .line 515
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Ui"

    const-string v1, "\u012d"

    .line 516
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bi"

    const-string v1, "\u012d"

    .line 517
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";I"

    const-string v1, "\u012e"

    .line 518
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",I"

    const-string v1, "\u012e"

    .line 519
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";i"

    const-string v1, "\u012f"

    .line 520
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",i"

    const-string v1, "\u012f"

    .line 521
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".I"

    const-string v1, "\u0130"

    .line 522
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "i."

    const-string v1, "\u0131"

    .line 523
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^J"

    const-string v1, "\u0134"

    .line 524
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^j"

    const-string v1, "\u0135"

    .line 525
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",K"

    const-string v1, "\u0136"

    .line 526
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",k"

    const-string v1, "\u0137"

    .line 527
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kk"

    const-string v1, "\u0138"

    .line 528
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'L"

    const-string v1, "\u0139"

    .line 529
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'l"

    const-string v1, "\u013a"

    .line 530
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",L"

    const-string v1, "\u013b"

    .line 531
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",l"

    const-string v1, "\u013c"

    .line 532
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cL"

    const-string v1, "\u013d"

    .line 533
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cl"

    const-string v1, "\u013e"

    .line 534
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/L"

    const-string v1, "\u0141"

    .line 535
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/l"

    const-string v1, "\u0142"

    .line 536
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'N"

    const-string v1, "\u0143"

    .line 537
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'n"

    const-string v1, "\u0144"

    .line 538
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",N"

    const-string v1, "\u0145"

    .line 539
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",n"

    const-string v1, "\u0146"

    .line 540
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cN"

    const-string v1, "\u0147"

    .line 541
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cn"

    const-string v1, "\u0148"

    .line 542
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NG"

    const-string v1, "\u014a"

    .line 543
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ng"

    const-string v1, "\u014b"

    .line 544
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_O"

    const-string v1, "\u014c"

    .line 545
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_o"

    const-string v1, "\u014d"

    .line 546
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UO"

    const-string v1, "\u014e"

    .line 547
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bO"

    const-string v1, "\u014e"

    .line 548
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Uo"

    const-string v1, "\u014f"

    .line 549
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bo"

    const-string v1, "\u014f"

    .line 550
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=O"

    const-string v1, "\u0150"

    .line 551
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=o"

    const-string v1, "\u0151"

    .line 552
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'R"

    const-string v1, "\u0154"

    .line 553
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'r"

    const-string v1, "\u0155"

    .line 554
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",R"

    const-string v1, "\u0156"

    .line 555
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",r"

    const-string v1, "\u0157"

    .line 556
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cR"

    const-string v1, "\u0158"

    .line 557
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cr"

    const-string v1, "\u0159"

    .line 558
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'S"

    const-string v1, "\u015a"

    .line 559
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'s"

    const-string v1, "\u015b"

    .line 560
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^S"

    const-string v1, "\u015c"

    .line 561
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^s"

    const-string v1, "\u015d"

    .line 562
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",S"

    const-string v1, "\u015e"

    .line 563
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",s"

    const-string v1, "\u015f"

    .line 564
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cS"

    const-string v1, "\u0160"

    .line 565
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cs"

    const-string v1, "\u0161"

    .line 566
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",T"

    const-string v1, "\u0162"

    .line 567
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",t"

    const-string v1, "\u0163"

    .line 568
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cT"

    const-string v1, "\u0164"

    .line 569
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ct"

    const-string v1, "\u0165"

    .line 570
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/T"

    const-string v1, "\u0166"

    .line 571
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/t"

    const-string v1, "\u0167"

    .line 572
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~U"

    const-string v1, "\u0168"

    .line 573
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~u"

    const-string v1, "\u0169"

    .line 574
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_U"

    const-string v1, "\u016a"

    .line 575
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_u"

    const-string v1, "\u016b"

    .line 576
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UU"

    const-string v1, "\u016c"

    .line 577
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bU"

    const-string v1, "\u016c"

    .line 578
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Uu"

    const-string v1, "\u016d"

    .line 579
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uu"

    const-string v1, "\u016d"

    .line 580
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bu"

    const-string v1, "\u016d"

    .line 581
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oU"

    const-string v1, "\u016e"

    .line 582
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ou"

    const-string v1, "\u016f"

    .line 583
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=U"

    const-string v1, "\u0170"

    .line 584
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=u"

    const-string v1, "\u0171"

    .line 585
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";U"

    const-string v1, "\u0172"

    .line 586
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",U"

    const-string v1, "\u0172"

    .line 587
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";u"

    const-string v1, "\u0173"

    .line 588
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",u"

    const-string v1, "\u0173"

    .line 589
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^W"

    const-string v1, "\u0174"

    .line 590
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^w"

    const-string v1, "\u0175"

    .line 591
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^Y"

    const-string v1, "\u0176"

    .line 592
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^y"

    const-string v1, "\u0177"

    .line 593
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"Y"

    const-string v1, "\u0178"

    .line 594
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'Z"

    const-string v1, "\u0179"

    .line 595
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'z"

    const-string v1, "\u017a"

    .line 596
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".Z"

    const-string v1, "\u017b"

    .line 597
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".z"

    const-string v1, "\u017c"

    .line 598
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cZ"

    const-string v1, "\u017d"

    .line 599
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cz"

    const-string v1, "\u017e"

    .line 600
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/b"

    const-string v1, "\u0180"

    .line 601
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/I"

    const-string v1, "\u0197"

    .line 602
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "+O"

    const-string v1, "\u01a0"

    .line 603
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "+o"

    const-string v1, "\u01a1"

    .line 604
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "+U"

    const-string v1, "\u01af"

    .line 605
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "+u"

    const-string v1, "\u01b0"

    .line 606
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/Z"

    const-string v1, "\u01b5"

    .line 607
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/z"

    const-string v1, "\u01b6"

    .line 608
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cA"

    const-string v1, "\u01cd"

    .line 609
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ca"

    const-string v1, "\u01ce"

    .line 610
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cI"

    const-string v1, "\u01cf"

    .line 611
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ci"

    const-string v1, "\u01d0"

    .line 612
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cO"

    const-string v1, "\u01d1"

    .line 613
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "co"

    const-string v1, "\u01d2"

    .line 614
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cU"

    const-string v1, "\u01d3"

    .line 615
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cu"

    const-string v1, "\u01d4"

    .line 616
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00dc"

    const-string v1, "\u01d5"

    .line 617
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\"U"

    const-string v1, "\u01d5"

    .line 618
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00fc"

    const-string v1, "\u01d6"

    .line 619
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\"u"

    const-string v1, "\u01d6"

    .line 620
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00dc"

    const-string v1, "\u01d7"

    .line 621
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\"U"

    const-string v1, "\u01d7"

    .line 622
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00fc"

    const-string v1, "\u01d8"

    .line 623
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\"u"

    const-string v1, "\u01d8"

    .line 624
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c\u00dc"

    const-string v1, "\u01d9"

    .line 625
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c\"U"

    const-string v1, "\u01d9"

    .line 626
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c\u00fc"

    const-string v1, "\u01da"

    .line 627
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "c\"u"

    const-string v1, "\u01da"

    .line 628
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u00dc"

    const-string v1, "\u01db"

    .line 629
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\"U"

    const-string v1, "\u01db"

    .line 630
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u00fc"

    const-string v1, "\u01dc"

    .line 631
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\"u"

    const-string v1, "\u01dc"

    .line 632
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00c4"

    const-string v1, "\u01de"

    .line 633
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\"A"

    const-string v1, "\u01de"

    .line 634
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00e4"

    const-string v1, "\u01df"

    .line 635
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\"a"

    const-string v1, "\u01df"

    .line 636
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_.A"

    const-string v1, "\u01e0"

    .line 637
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_.a"

    const-string v1, "\u01e1"

    .line 638
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00c6"

    const-string v1, "\u01e2"

    .line 639
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00e6"

    const-string v1, "\u01e3"

    .line 640
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/G"

    const-string v1, "\u01e4"

    .line 641
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/g"

    const-string v1, "\u01e5"

    .line 642
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cG"

    const-string v1, "\u01e6"

    .line 643
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cg"

    const-string v1, "\u01e7"

    .line 644
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cK"

    const-string v1, "\u01e8"

    .line 645
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ck"

    const-string v1, "\u01e9"

    .line 646
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";O"

    const-string v1, "\u01ea"

    .line 647
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ";o"

    const-string v1, "\u01eb"

    .line 648
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_;O"

    const-string v1, "\u01ec"

    .line 649
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_;o"

    const-string v1, "\u01ed"

    .line 650
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cj"

    const-string v1, "\u01f0"

    .line 651
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'G"

    const-string v1, "\u01f4"

    .line 652
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'g"

    const-string v1, "\u01f5"

    .line 653
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`N"

    const-string v1, "\u01f8"

    .line 654
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`n"

    const-string v1, "\u01f9"

    .line 655
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00c5"

    const-string v1, "\u01fa"

    .line 656
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "o\'A"

    const-string v1, "\u01fa"

    .line 657
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00e5"

    const-string v1, "\u01fb"

    .line 658
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "o\'a"

    const-string v1, "\u01fb"

    .line 659
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00c6"

    const-string v1, "\u01fc"

    .line 660
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00e6"

    const-string v1, "\u01fd"

    .line 661
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00d8"

    const-string v1, "\u01fe"

    .line 662
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'/O"

    const-string v1, "\u01fe"

    .line 663
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00f8"

    const-string v1, "\u01ff"

    .line 664
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'/o"

    const-string v1, "\u01ff"

    .line 665
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cH"

    const-string v1, "\u021e"

    .line 666
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ch"

    const-string v1, "\u021f"

    .line 667
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".A"

    const-string v1, "\u0226"

    .line 668
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".a"

    const-string v1, "\u0227"

    .line 669
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00d6"

    const-string v1, "\u022a"

    .line 670
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\"O"

    const-string v1, "\u022a"

    .line 671
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00f6"

    const-string v1, "\u022b"

    .line 672
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\"o"

    const-string v1, "\u022b"

    .line 673
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00d5"

    const-string v1, "\u022c"

    .line 674
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_~O"

    const-string v1, "\u022c"

    .line 675
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_\u00f5"

    const-string v1, "\u022d"

    .line 676
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_~o"

    const-string v1, "\u022d"

    .line 677
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".O"

    const-string v1, "\u022e"

    .line 678
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".o"

    const-string v1, "\u022f"

    .line 679
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_.O"

    const-string v1, "\u0230"

    .line 680
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_.o"

    const-string v1, "\u0231"

    .line 681
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_Y"

    const-string v1, "\u0232"

    .line 682
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_y"

    const-string v1, "\u0233"

    .line 683
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ee"

    const-string v1, "\u0259"

    .line 684
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/i"

    const-string v1, "\u0268"

    .line 685
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_h"

    const-string v1, "\u02b0"

    .line 686
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_j"

    const-string v1, "\u02b2"

    .line 687
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_r"

    const-string v1, "\u02b3"

    .line 688
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_w"

    const-string v1, "\u02b7"

    .line 689
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_y"

    const-string v1, "\u02b8"

    .line 690
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_l"

    const-string v1, "\u02e1"

    .line 691
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_s"

    const-string v1, "\u02e2"

    .line 692
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_x"

    const-string v1, "\u02e3"

    .line 693
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"\'"

    const-string v1, "\u0344"

    .line 694
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".B"

    const-string v1, "\u1e02"

    .line 695
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".b"

    const-string v1, "\u1e03"

    .line 696
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!B"

    const-string v1, "\u1e04"

    .line 697
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!b"

    const-string v1, "\u1e05"

    .line 698
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00c7"

    const-string v1, "\u1e08"

    .line 699
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00e7"

    const-string v1, "\u1e09"

    .line 700
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".D"

    const-string v1, "\u1e0a"

    .line 701
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".d"

    const-string v1, "\u1e0b"

    .line 702
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!D"

    const-string v1, "\u1e0c"

    .line 703
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!d"

    const-string v1, "\u1e0d"

    .line 704
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",D"

    const-string v1, "\u1e10"

    .line 705
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",d"

    const-string v1, "\u1e11"

    .line 706
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u0112"

    const-string v1, "\u1e14"

    .line 707
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`_E"

    const-string v1, "\u1e14"

    .line 708
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u0113"

    const-string v1, "\u1e15"

    .line 709
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`_e"

    const-string v1, "\u1e15"

    .line 710
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u0112"

    const-string v1, "\u1e16"

    .line 711
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'_E"

    const-string v1, "\u1e16"

    .line 712
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u0113"

    const-string v1, "\u1e17"

    .line 713
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'_e"

    const-string v1, "\u1e17"

    .line 714
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "U,E"

    const-string v1, "\u1e1c"

    .line 715
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b,E"

    const-string v1, "\u1e1c"

    .line 716
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "U,e"

    const-string v1, "\u1e1d"

    .line 717
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b,e"

    const-string v1, "\u1e1d"

    .line 718
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".F"

    const-string v1, "\u1e1e"

    .line 719
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".f"

    const-string v1, "\u1e1f"

    .line 720
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_G"

    const-string v1, "\u1e20"

    .line 721
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_g"

    const-string v1, "\u1e21"

    .line 722
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".H"

    const-string v1, "\u1e22"

    .line 723
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".h"

    const-string v1, "\u1e23"

    .line 724
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!H"

    const-string v1, "\u1e24"

    .line 725
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!h"

    const-string v1, "\u1e25"

    .line 726
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"H"

    const-string v1, "\u1e26"

    .line 727
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"h"

    const-string v1, "\u1e27"

    .line 728
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",H"

    const-string v1, "\u1e28"

    .line 729
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ",h"

    const-string v1, "\u1e29"

    .line 730
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00cf"

    const-string v1, "\u1e2e"

    .line 731
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\"I"

    const-string v1, "\u1e2e"

    .line 732
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00ef"

    const-string v1, "\u1e2f"

    .line 733
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\"i"

    const-string v1, "\u1e2f"

    .line 734
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'K"

    const-string v1, "\u1e30"

    .line 735
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'k"

    const-string v1, "\u1e31"

    .line 736
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!K"

    const-string v1, "\u1e32"

    .line 737
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!k"

    const-string v1, "\u1e33"

    .line 738
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!L"

    const-string v1, "\u1e36"

    .line 739
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!l"

    const-string v1, "\u1e37"

    .line 740
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_!L"

    const-string v1, "\u1e38"

    .line 741
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_!l"

    const-string v1, "\u1e39"

    .line 742
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'M"

    const-string v1, "\u1e3e"

    .line 743
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'m"

    const-string v1, "\u1e3f"

    .line 744
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".M"

    const-string v1, "\u1e40"

    .line 745
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".m"

    const-string v1, "\u1e41"

    .line 746
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!M"

    const-string v1, "\u1e42"

    .line 747
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!m"

    const-string v1, "\u1e43"

    .line 748
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".N"

    const-string v1, "\u1e44"

    .line 749
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".n"

    const-string v1, "\u1e45"

    .line 750
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!N"

    const-string v1, "\u1e46"

    .line 751
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!n"

    const-string v1, "\u1e47"

    .line 752
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00d5"

    const-string v1, "\u1e4c"

    .line 753
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'~O"

    const-string v1, "\u1e4c"

    .line 754
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00f5"

    const-string v1, "\u1e4d"

    .line 755
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'~o"

    const-string v1, "\u1e4d"

    .line 756
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"\u00d5"

    const-string v1, "\u1e4e"

    .line 757
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"~O"

    const-string v1, "\u1e4e"

    .line 758
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"\u00f5"

    const-string v1, "\u1e4f"

    .line 759
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"~o"

    const-string v1, "\u1e4f"

    .line 760
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u014c"

    const-string v1, "\u1e50"

    .line 761
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`_O"

    const-string v1, "\u1e50"

    .line 762
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u014d"

    const-string v1, "\u1e51"

    .line 763
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`_o"

    const-string v1, "\u1e51"

    .line 764
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u014c"

    const-string v1, "\u1e52"

    .line 765
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'_O"

    const-string v1, "\u1e52"

    .line 766
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u014d"

    const-string v1, "\u1e53"

    .line 767
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'_o"

    const-string v1, "\u1e53"

    .line 768
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'P"

    const-string v1, "\u1e54"

    .line 769
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'p"

    const-string v1, "\u1e55"

    .line 770
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".P"

    const-string v1, "\u1e56"

    .line 771
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".p"

    const-string v1, "\u1e57"

    .line 772
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".R"

    const-string v1, "\u1e58"

    .line 773
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".r"

    const-string v1, "\u1e59"

    .line 774
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!R"

    const-string v1, "\u1e5a"

    .line 775
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!r"

    const-string v1, "\u1e5b"

    .line 776
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_!R"

    const-string v1, "\u1e5c"

    .line 777
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_!r"

    const-string v1, "\u1e5d"

    .line 778
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".S"

    const-string v1, "\u1e60"

    .line 779
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".s"

    const-string v1, "\u1e61"

    .line 780
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!S"

    const-string v1, "\u1e62"

    .line 781
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!s"

    const-string v1, "\u1e63"

    .line 782
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".\u015a"

    const-string v1, "\u1e64"

    .line 783
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".\'S"

    const-string v1, "\u1e64"

    .line 784
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".\u015b"

    const-string v1, "\u1e65"

    .line 785
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".\'s"

    const-string v1, "\u1e65"

    .line 786
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".\u0160"

    const-string v1, "\u1e66"

    .line 787
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".\u0161"

    const-string v1, "\u1e67"

    .line 788
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".!S"

    const-string v1, "\u1e68"

    .line 789
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".!s"

    const-string v1, "\u1e69"

    .line 790
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".T"

    const-string v1, "\u1e6a"

    .line 791
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".t"

    const-string v1, "\u1e6b"

    .line 792
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!T"

    const-string v1, "\u1e6c"

    .line 793
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!t"

    const-string v1, "\u1e6d"

    .line 794
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u0168"

    const-string v1, "\u1e78"

    .line 795
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'~U"

    const-string v1, "\u1e78"

    .line 796
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u0169"

    const-string v1, "\u1e79"

    .line 797
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'~u"

    const-string v1, "\u1e79"

    .line 798
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"\u016a"

    const-string v1, "\u1e7a"

    .line 799
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"_U"

    const-string v1, "\u1e7a"

    .line 800
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"\u016b"

    const-string v1, "\u1e7b"

    .line 801
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"_u"

    const-string v1, "\u1e7b"

    .line 802
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~V"

    const-string v1, "\u1e7c"

    .line 803
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~v"

    const-string v1, "\u1e7d"

    .line 804
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!V"

    const-string v1, "\u1e7e"

    .line 805
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!v"

    const-string v1, "\u1e7f"

    .line 806
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`W"

    const-string v1, "\u1e80"

    .line 807
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`w"

    const-string v1, "\u1e81"

    .line 808
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'W"

    const-string v1, "\u1e82"

    .line 809
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'w"

    const-string v1, "\u1e83"

    .line 810
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"W"

    const-string v1, "\u1e84"

    .line 811
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"w"

    const-string v1, "\u1e85"

    .line 812
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".W"

    const-string v1, "\u1e86"

    .line 813
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".w"

    const-string v1, "\u1e87"

    .line 814
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!W"

    const-string v1, "\u1e88"

    .line 815
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!w"

    const-string v1, "\u1e89"

    .line 816
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".X"

    const-string v1, "\u1e8a"

    .line 817
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".x"

    const-string v1, "\u1e8b"

    .line 818
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"X"

    const-string v1, "\u1e8c"

    .line 819
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"x"

    const-string v1, "\u1e8d"

    .line 820
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".Y"

    const-string v1, "\u1e8e"

    .line 821
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".y"

    const-string v1, "\u1e8f"

    .line 822
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^Z"

    const-string v1, "\u1e90"

    .line 823
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^z"

    const-string v1, "\u1e91"

    .line 824
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!Z"

    const-string v1, "\u1e92"

    .line 825
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!z"

    const-string v1, "\u1e93"

    .line 826
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\"t"

    const-string v1, "\u1e97"

    .line 827
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ow"

    const-string v1, "\u1e98"

    .line 828
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oy"

    const-string v1, "\u1e99"

    .line 829
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!A"

    const-string v1, "\u1ea0"

    .line 830
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!a"

    const-string v1, "\u1ea1"

    .line 831
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?A"

    const-string v1, "\u1ea2"

    .line 832
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?a"

    const-string v1, "\u1ea3"

    .line 833
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00c2"

    const-string v1, "\u1ea4"

    .line 834
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'^A"

    const-string v1, "\u1ea4"

    .line 835
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00e2"

    const-string v1, "\u1ea5"

    .line 836
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'^a"

    const-string v1, "\u1ea5"

    .line 837
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u00c2"

    const-string v1, "\u1ea6"

    .line 838
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`^A"

    const-string v1, "\u1ea6"

    .line 839
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u00e2"

    const-string v1, "\u1ea7"

    .line 840
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`^a"

    const-string v1, "\u1ea7"

    .line 841
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u00c2"

    const-string v1, "\u1ea8"

    .line 842
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?^A"

    const-string v1, "\u1ea8"

    .line 843
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u00e2"

    const-string v1, "\u1ea9"

    .line 844
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?^a"

    const-string v1, "\u1ea9"

    .line 845
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u00c2"

    const-string v1, "\u1eaa"

    .line 846
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~^A"

    const-string v1, "\u1eaa"

    .line 847
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u00e2"

    const-string v1, "\u1eab"

    .line 848
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~^a"

    const-string v1, "\u1eab"

    .line 849
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^!A"

    const-string v1, "\u1eac"

    .line 850
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^!a"

    const-string v1, "\u1ead"

    .line 851
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u0102"

    const-string v1, "\u1eae"

    .line 852
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'bA"

    const-string v1, "\u1eae"

    .line 853
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u0103"

    const-string v1, "\u1eaf"

    .line 854
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'ba"

    const-string v1, "\u1eaf"

    .line 855
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u0102"

    const-string v1, "\u1eb0"

    .line 856
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`bA"

    const-string v1, "\u1eb0"

    .line 857
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u0103"

    const-string v1, "\u1eb1"

    .line 858
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`ba"

    const-string v1, "\u1eb1"

    .line 859
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u0102"

    const-string v1, "\u1eb2"

    .line 860
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?bA"

    const-string v1, "\u1eb2"

    .line 861
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u0103"

    const-string v1, "\u1eb3"

    .line 862
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?ba"

    const-string v1, "\u1eb3"

    .line 863
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u0102"

    const-string v1, "\u1eb4"

    .line 864
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~bA"

    const-string v1, "\u1eb4"

    .line 865
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u0103"

    const-string v1, "\u1eb5"

    .line 866
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~ba"

    const-string v1, "\u1eb5"

    .line 867
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "U!A"

    const-string v1, "\u1eb6"

    .line 868
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b!A"

    const-string v1, "\u1eb6"

    .line 869
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "U!a"

    const-string v1, "\u1eb7"

    .line 870
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "b!a"

    const-string v1, "\u1eb7"

    .line 871
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!E"

    const-string v1, "\u1eb8"

    .line 872
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!e"

    const-string v1, "\u1eb9"

    .line 873
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?E"

    const-string v1, "\u1eba"

    .line 874
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?e"

    const-string v1, "\u1ebb"

    .line 875
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~E"

    const-string v1, "\u1ebc"

    .line 876
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~e"

    const-string v1, "\u1ebd"

    .line 877
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00ca"

    const-string v1, "\u1ebe"

    .line 878
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'^E"

    const-string v1, "\u1ebe"

    .line 879
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00ea"

    const-string v1, "\u1ebf"

    .line 880
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'^e"

    const-string v1, "\u1ebf"

    .line 881
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u00ca"

    const-string v1, "\u1ec0"

    .line 882
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`^E"

    const-string v1, "\u1ec0"

    .line 883
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u00ea"

    const-string v1, "\u1ec1"

    .line 884
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`^e"

    const-string v1, "\u1ec1"

    .line 885
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u00ca"

    const-string v1, "\u1ec2"

    .line 886
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?^E"

    const-string v1, "\u1ec2"

    .line 887
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u00ea"

    const-string v1, "\u1ec3"

    .line 888
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?^e"

    const-string v1, "\u1ec3"

    .line 889
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u00ca"

    const-string v1, "\u1ec4"

    .line 890
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~^E"

    const-string v1, "\u1ec4"

    .line 891
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u00ea"

    const-string v1, "\u1ec5"

    .line 892
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~^e"

    const-string v1, "\u1ec5"

    .line 893
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^!E"

    const-string v1, "\u1ec6"

    .line 894
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^!e"

    const-string v1, "\u1ec7"

    .line 895
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?I"

    const-string v1, "\u1ec8"

    .line 896
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?i"

    const-string v1, "\u1ec9"

    .line 897
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!I"

    const-string v1, "\u1eca"

    .line 898
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!i"

    const-string v1, "\u1ecb"

    .line 899
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!O"

    const-string v1, "\u1ecc"

    .line 900
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!o"

    const-string v1, "\u1ecd"

    .line 901
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?O"

    const-string v1, "\u1ece"

    .line 902
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?o"

    const-string v1, "\u1ecf"

    .line 903
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00d4"

    const-string v1, "\u1ed0"

    .line 904
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'^O"

    const-string v1, "\u1ed0"

    .line 905
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u00f4"

    const-string v1, "\u1ed1"

    .line 906
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'^o"

    const-string v1, "\u1ed1"

    .line 907
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u00d4"

    const-string v1, "\u1ed2"

    .line 908
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`^O"

    const-string v1, "\u1ed2"

    .line 909
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u00f4"

    const-string v1, "\u1ed3"

    .line 910
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`^o"

    const-string v1, "\u1ed3"

    .line 911
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u00d4"

    const-string v1, "\u1ed4"

    .line 912
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?^O"

    const-string v1, "\u1ed4"

    .line 913
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u00f4"

    const-string v1, "\u1ed5"

    .line 914
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?^o"

    const-string v1, "\u1ed5"

    .line 915
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u00d4"

    const-string v1, "\u1ed6"

    .line 916
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~^O"

    const-string v1, "\u1ed6"

    .line 917
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u00f4"

    const-string v1, "\u1ed7"

    .line 918
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~^o"

    const-string v1, "\u1ed7"

    .line 919
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^!O"

    const-string v1, "\u1ed8"

    .line 920
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^!o"

    const-string v1, "\u1ed9"

    .line 921
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u01a0"

    const-string v1, "\u1eda"

    .line 922
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'+O"

    const-string v1, "\u1eda"

    .line 923
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u01a1"

    const-string v1, "\u1edb"

    .line 924
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'+o"

    const-string v1, "\u1edb"

    .line 925
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u01a0"

    const-string v1, "\u1edc"

    .line 926
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`+O"

    const-string v1, "\u1edc"

    .line 927
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u01a1"

    const-string v1, "\u1edd"

    .line 928
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`+o"

    const-string v1, "\u1edd"

    .line 929
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u01a0"

    const-string v1, "\u1ede"

    .line 930
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?+O"

    const-string v1, "\u1ede"

    .line 931
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u01a1"

    const-string v1, "\u1edf"

    .line 932
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?+o"

    const-string v1, "\u1edf"

    .line 933
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u01a0"

    const-string v1, "\u1ee0"

    .line 934
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~+O"

    const-string v1, "\u1ee0"

    .line 935
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u01a1"

    const-string v1, "\u1ee1"

    .line 936
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~+o"

    const-string v1, "\u1ee1"

    .line 937
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!\u01a0"

    const-string v1, "\u1ee2"

    .line 938
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!+O"

    const-string v1, "\u1ee2"

    .line 939
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!\u01a1"

    const-string v1, "\u1ee3"

    .line 940
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!+o"

    const-string v1, "\u1ee3"

    .line 941
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!U"

    const-string v1, "\u1ee4"

    .line 942
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!u"

    const-string v1, "\u1ee5"

    .line 943
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?U"

    const-string v1, "\u1ee6"

    .line 944
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?u"

    const-string v1, "\u1ee7"

    .line 945
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u01af"

    const-string v1, "\u1ee8"

    .line 946
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'+U"

    const-string v1, "\u1ee8"

    .line 947
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'\u01b0"

    const-string v1, "\u1ee9"

    .line 948
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\'+u"

    const-string v1, "\u1ee9"

    .line 949
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u01af"

    const-string v1, "\u1eea"

    .line 950
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`+U"

    const-string v1, "\u1eea"

    .line 951
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`\u01b0"

    const-string v1, "\u1eeb"

    .line 952
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`+u"

    const-string v1, "\u1eeb"

    .line 953
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u01af"

    const-string v1, "\u1eec"

    .line 954
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?+U"

    const-string v1, "\u1eec"

    .line 955
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?\u01b0"

    const-string v1, "\u1eed"

    .line 956
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?+u"

    const-string v1, "\u1eed"

    .line 957
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u01af"

    const-string v1, "\u1eee"

    .line 958
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~+U"

    const-string v1, "\u1eee"

    .line 959
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~\u01b0"

    const-string v1, "\u1eef"

    .line 960
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~+u"

    const-string v1, "\u1eef"

    .line 961
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!\u01af"

    const-string v1, "\u1ef0"

    .line 962
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!+U"

    const-string v1, "\u1ef0"

    .line 963
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!\u01b0"

    const-string v1, "\u1ef1"

    .line 964
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!+u"

    const-string v1, "\u1ef1"

    .line 965
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`Y"

    const-string v1, "\u1ef2"

    .line 966
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "`y"

    const-string v1, "\u1ef3"

    .line 967
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!Y"

    const-string v1, "\u1ef4"

    .line 968
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "!y"

    const-string v1, "\u1ef5"

    .line 969
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?Y"

    const-string v1, "\u1ef6"

    .line 970
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "?y"

    const-string v1, "\u1ef7"

    .line 971
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~Y"

    const-string v1, "\u1ef8"

    .line 972
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "~y"

    const-string v1, "\u1ef9"

    .line 973
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^0"

    const-string v1, "\u2070"

    .line 974
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_i"

    const-string v1, "\u2071"

    .line 975
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^4"

    const-string v1, "\u2074"

    .line 976
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^5"

    const-string v1, "\u2075"

    .line 977
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^6"

    const-string v1, "\u2076"

    .line 978
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^7"

    const-string v1, "\u2077"

    .line 979
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^8"

    const-string v1, "\u2078"

    .line 980
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^9"

    const-string v1, "\u2079"

    .line 981
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^+"

    const-string v1, "\u207a"

    .line 982
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^="

    const-string v1, "\u207c"

    .line 983
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^("

    const-string v1, "\u207d"

    .line 984
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^)"

    const-string v1, "\u207e"

    .line 985
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "^_n"

    const-string v1, "\u207f"

    .line 986
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_0"

    const-string v1, "\u2080"

    .line 987
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_1"

    const-string v1, "\u2081"

    .line 988
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_2"

    const-string v1, "\u2082"

    .line 989
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_3"

    const-string v1, "\u2083"

    .line 990
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_4"

    const-string v1, "\u2084"

    .line 991
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_5"

    const-string v1, "\u2085"

    .line 992
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_6"

    const-string v1, "\u2086"

    .line 993
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_7"

    const-string v1, "\u2087"

    .line 994
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_8"

    const-string v1, "\u2088"

    .line 995
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_9"

    const-string v1, "\u2089"

    .line 996
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_+"

    const-string v1, "\u208a"

    .line 997
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_="

    const-string v1, "\u208c"

    .line 998
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_("

    const-string v1, "\u208d"

    .line 999
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_)"

    const-string v1, "\u208e"

    .line 1000
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SM"

    const-string v1, "\u2120"

    .line 1001
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sM"

    const-string v1, "\u2120"

    .line 1002
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sm"

    const-string v1, "\u2120"

    .line 1003
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sm"

    const-string v1, "\u2120"

    .line 1004
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TM"

    const-string v1, "\u2122"

    .line 1005
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tM"

    const-string v1, "\u2122"

    .line 1006
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Tm"

    const-string v1, "\u2122"

    .line 1007
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tm"

    const-string v1, "\u2122"

    .line 1008
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "13"

    const-string v1, "\u2153"

    .line 1009
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "23"

    const-string v1, "\u2154"

    .line 1010
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "15"

    const-string v1, "\u2155"

    .line 1011
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "25"

    const-string v1, "\u2156"

    .line 1012
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "35"

    const-string v1, "\u2157"

    .line 1013
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "45"

    const-string v1, "\u2158"

    .line 1014
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "16"

    const-string v1, "\u2159"

    .line 1015
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "56"

    const-string v1, "\u215a"

    .line 1016
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "18"

    const-string v1, "\u215b"

    .line 1017
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "38"

    const-string v1, "\u215c"

    .line 1018
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "58"

    const-string v1, "\u215d"

    .line 1019
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "78"

    const-string v1, "\u215e"

    .line 1020
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/\u2190"

    const-string v1, "\u219a"

    .line 1021
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/\u2192"

    const-string v1, "\u219b"

    .line 1022
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<-"

    const-string v1, "\u2190"

    .line 1023
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "->"

    const-string v1, "\u2192"

    .line 1024
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/="

    const-string v1, "\u2260"

    .line 1025
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "=/"

    const-string v1, "\u2260"

    .line 1026
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<="

    const-string v1, "\u2264"

    .line 1027
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ">="

    const-string v1, "\u2265"

    .line 1028
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(1)"

    const-string v1, "\u2460"

    .line 1029
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(2)"

    const-string v1, "\u2461"

    .line 1030
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(3)"

    const-string v1, "\u2462"

    .line 1031
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(4)"

    const-string v1, "\u2463"

    .line 1032
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(5)"

    const-string v1, "\u2464"

    .line 1033
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(6)"

    const-string v1, "\u2465"

    .line 1034
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(7)"

    const-string v1, "\u2466"

    .line 1035
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(8)"

    const-string v1, "\u2467"

    .line 1036
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(9)"

    const-string v1, "\u2468"

    .line 1037
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(10)"

    const-string v1, "\u2469"

    .line 1038
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(11)"

    const-string v1, "\u246a"

    .line 1039
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(12)"

    const-string v1, "\u246b"

    .line 1040
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(13)"

    const-string v1, "\u246c"

    .line 1041
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(14)"

    const-string v1, "\u246d"

    .line 1042
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(15)"

    const-string v1, "\u246e"

    .line 1043
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(16)"

    const-string v1, "\u246f"

    .line 1044
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(17)"

    const-string v1, "\u2470"

    .line 1045
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(18)"

    const-string v1, "\u2471"

    .line 1046
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(19)"

    const-string v1, "\u2472"

    .line 1047
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(20)"

    const-string v1, "\u2473"

    .line 1048
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(A)"

    const-string v1, "\u24b6"

    .line 1049
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(B)"

    const-string v1, "\u24b7"

    .line 1050
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(C)"

    const-string v1, "\u24b8"

    .line 1051
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(D)"

    const-string v1, "\u24b9"

    .line 1052
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(E)"

    const-string v1, "\u24ba"

    .line 1053
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(F)"

    const-string v1, "\u24bb"

    .line 1054
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(G)"

    const-string v1, "\u24bc"

    .line 1055
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(H)"

    const-string v1, "\u24bd"

    .line 1056
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(I)"

    const-string v1, "\u24be"

    .line 1057
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(J)"

    const-string v1, "\u24bf"

    .line 1058
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(K)"

    const-string v1, "\u24c0"

    .line 1059
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(L)"

    const-string v1, "\u24c1"

    .line 1060
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(M)"

    const-string v1, "\u24c2"

    .line 1061
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(N)"

    const-string v1, "\u24c3"

    .line 1062
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(O)"

    const-string v1, "\u24c4"

    .line 1063
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(P)"

    const-string v1, "\u24c5"

    .line 1064
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(Q)"

    const-string v1, "\u24c6"

    .line 1065
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(R)"

    const-string v1, "\u24c7"

    .line 1066
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(S)"

    const-string v1, "\u24c8"

    .line 1067
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(T)"

    const-string v1, "\u24c9"

    .line 1068
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(U)"

    const-string v1, "\u24ca"

    .line 1069
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(V)"

    const-string v1, "\u24cb"

    .line 1070
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(W)"

    const-string v1, "\u24cc"

    .line 1071
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(X)"

    const-string v1, "\u24cd"

    .line 1072
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(Y)"

    const-string v1, "\u24ce"

    .line 1073
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(Z)"

    const-string v1, "\u24cf"

    .line 1074
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(a)"

    const-string v1, "\u24d0"

    .line 1075
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(b)"

    const-string v1, "\u24d1"

    .line 1076
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(c)"

    const-string v1, "\u24d2"

    .line 1077
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(d)"

    const-string v1, "\u24d3"

    .line 1078
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(e)"

    const-string v1, "\u24d4"

    .line 1079
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(f)"

    const-string v1, "\u24d5"

    .line 1080
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(g)"

    const-string v1, "\u24d6"

    .line 1081
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(h)"

    const-string v1, "\u24d7"

    .line 1082
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(i)"

    const-string v1, "\u24d8"

    .line 1083
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(j)"

    const-string v1, "\u24d9"

    .line 1084
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(k)"

    const-string v1, "\u24da"

    .line 1085
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(l)"

    const-string v1, "\u24db"

    .line 1086
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(m)"

    const-string v1, "\u24dc"

    .line 1087
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(n)"

    const-string v1, "\u24dd"

    .line 1088
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(o)"

    const-string v1, "\u24de"

    .line 1089
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(p)"

    const-string v1, "\u24df"

    .line 1090
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(q)"

    const-string v1, "\u24e0"

    .line 1091
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(r)"

    const-string v1, "\u24e1"

    .line 1092
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(s)"

    const-string v1, "\u24e2"

    .line 1093
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(t)"

    const-string v1, "\u24e3"

    .line 1094
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(u)"

    const-string v1, "\u24e4"

    .line 1095
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(v)"

    const-string v1, "\u24e5"

    .line 1096
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(w)"

    const-string v1, "\u24e6"

    .line 1097
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(x)"

    const-string v1, "\u24e7"

    .line 1098
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(y)"

    const-string v1, "\u24e8"

    .line 1099
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(z)"

    const-string v1, "\u24e9"

    .line 1100
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(0)"

    const-string v1, "\u24ea"

    .line 1101
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(21)"

    const-string v1, "\u3251"

    .line 1102
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(22)"

    const-string v1, "\u3252"

    .line 1103
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(23)"

    const-string v1, "\u3253"

    .line 1104
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(24)"

    const-string v1, "\u3254"

    .line 1105
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(25)"

    const-string v1, "\u3255"

    .line 1106
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(26)"

    const-string v1, "\u3256"

    .line 1107
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(27)"

    const-string v1, "\u3257"

    .line 1108
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(28)"

    const-string v1, "\u3258"

    .line 1109
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(29)"

    const-string v1, "\u3259"

    .line 1110
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(30)"

    const-string v1, "\u325a"

    .line 1111
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(31)"

    const-string v1, "\u325b"

    .line 1112
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(32)"

    const-string v1, "\u325c"

    .line 1113
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(33)"

    const-string v1, "\u325d"

    .line 1114
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(34)"

    const-string v1, "\u325e"

    .line 1115
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(35)"

    const-string v1, "\u325f"

    .line 1116
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(36)"

    const-string v1, "\u32b1"

    .line 1117
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(37)"

    const-string v1, "\u32b2"

    .line 1118
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(38)"

    const-string v1, "\u32b3"

    .line 1119
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(39)"

    const-string v1, "\u32b4"

    .line 1120
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(40)"

    const-string v1, "\u32b5"

    .line 1121
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(41)"

    const-string v1, "\u32b6"

    .line 1122
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(42)"

    const-string v1, "\u32b7"

    .line 1123
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(43)"

    const-string v1, "\u32b8"

    .line 1124
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(44)"

    const-string v1, "\u32b9"

    .line 1125
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(45)"

    const-string v1, "\u32ba"

    .line 1126
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(46)"

    const-string v1, "\u32bb"

    .line 1127
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(47)"

    const-string v1, "\u32bc"

    .line 1128
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(48)"

    const-string v1, "\u32bd"

    .line 1129
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(49)"

    const-string v1, "\u32be"

    .line 1130
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "(50)"

    const-string v1, "\u32bf"

    .line 1131
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\\o/"

    const-string v1, "\ud83d\ude4c"

    .line 1132
    invoke-static {v0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static showString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "}"

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bufferKey(C)V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public clear()V
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public execute(I)Z
    .locals 1

    .line 230
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->executeToString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->clear()V

    .line 233
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeUser:Lorg/pocketworkstation/pckeyboard/ComposeSequencing;

    invoke-interface {v0, p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequencing;->onText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public execute(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 240
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 243
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->execute(I)Z

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public executeToString(I)Ljava/lang/String;
    .locals 2

    .line 209
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInstance()Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->getInputView()Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/pocketworkstation/pckeyboard/LatinKeyboardView;->isShiftCaps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0}, Lorg/pocketworkstation/pckeyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_0
    int-to-char p1, p1

    .line 215
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->bufferKey(C)V

    .line 216
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeUser:Lorg/pocketworkstation/pckeyboard/ComposeSequencing;

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeUser:Lorg/pocketworkstation/pckeyboard/ComposeSequencing;

    invoke-interface {v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequencing;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/pocketworkstation/pckeyboard/ComposeSequencing;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 218
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 222
    :cond_1
    iget-object p1, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected init(Lorg/pocketworkstation/pckeyboard/ComposeSequencing;)V
    .locals 0

    .line 190
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->clear()V

    .line 191
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/ComposeSequence;->composeUser:Lorg/pocketworkstation/pckeyboard/ComposeSequencing;

    return-void
.end method
