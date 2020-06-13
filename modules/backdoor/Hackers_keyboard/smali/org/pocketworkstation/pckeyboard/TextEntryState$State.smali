.class public final enum Lorg/pocketworkstation/pckeyboard/TextEntryState$State;
.super Ljava/lang/Enum;
.source "TextEntryState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/TextEntryState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/pocketworkstation/pckeyboard/TextEntryState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum ACCEPTED_DEFAULT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum CORRECTING:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum IN_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum PICKED_CORRECTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum PICKED_SUGGESTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum PUNCTUATION_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum PUNCTUATION_AFTER_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum SPACE_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum SPACE_AFTER_PICKED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum UNDO_COMMIT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

.field public static final enum UNKNOWN:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 53
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->UNKNOWN:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 54
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 55
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "IN_WORD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->IN_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 56
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "ACCEPTED_DEFAULT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 57
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "PICKED_SUGGESTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_SUGGESTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 58
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "PUNCTUATION_AFTER_WORD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PUNCTUATION_AFTER_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 59
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "PUNCTUATION_AFTER_ACCEPTED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 60
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "SPACE_AFTER_ACCEPTED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 61
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "SPACE_AFTER_PICKED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->SPACE_AFTER_PICKED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 62
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "UNDO_COMMIT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->UNDO_COMMIT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 63
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "CORRECTING"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->CORRECTING:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    .line 64
    new-instance v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const-string v1, "PICKED_CORRECTION"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_CORRECTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    const/16 v0, 0xc

    .line 52
    new-array v0, v0, [Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->UNKNOWN:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->START:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->IN_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_SUGGESTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PUNCTUATION_AFTER_WORD:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v8

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v9

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->SPACE_AFTER_PICKED:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v10

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->UNDO_COMMIT:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v11

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->CORRECTING:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v12

    sget-object v1, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->PICKED_CORRECTION:Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    aput-object v1, v0, v13

    sput-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->$VALUES:[Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pocketworkstation/pckeyboard/TextEntryState$State;
    .locals 1

    .line 52
    const-class v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    return-object p0
.end method

.method public static values()[Lorg/pocketworkstation/pckeyboard/TextEntryState$State;
    .locals 1

    .line 52
    sget-object v0, Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->$VALUES:[Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    invoke-virtual {v0}, [Lorg/pocketworkstation/pckeyboard/TextEntryState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/pocketworkstation/pckeyboard/TextEntryState$State;

    return-object v0
.end method
