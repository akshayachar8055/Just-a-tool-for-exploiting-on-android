.class public final enum Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;
.super Ljava/lang/Enum;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

.field public static final enum BIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

.field public static final enum UNIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    const-string v1, "UNIGRAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->UNIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    new-instance v0, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    const-string v1, "BIGRAM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->BIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    sget-object v1, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->UNIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->BIGRAM:Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->$VALUES:[Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;
    .locals 1

    .line 34
    const-class v0, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    return-object p0
.end method

.method public static values()[Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;
    .locals 1

    .line 34
    sget-object v0, Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->$VALUES:[Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    invoke-virtual {v0}, [Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/pocketworkstation/pckeyboard/Dictionary$DataType;

    return-object v0
.end method
