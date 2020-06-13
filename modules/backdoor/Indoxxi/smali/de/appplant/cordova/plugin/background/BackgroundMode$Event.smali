.class final enum Lde/appplant/cordova/plugin/background/BackgroundMode$Event;
.super Ljava/lang/Enum;
.source "BackgroundMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/appplant/cordova/plugin/background/BackgroundMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/appplant/cordova/plugin/background/BackgroundMode$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

.field public static final enum ACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

.field public static final enum DEACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

.field public static final enum FAILURE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    const-string v1, "ACTIVATE"

    invoke-direct {v0, v1, v2}, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->ACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    new-instance v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    const-string v1, "DEACTIVATE"

    invoke-direct {v0, v1, v3}, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->DEACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    new-instance v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4}, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->FAILURE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    sget-object v1, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->ACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    aput-object v1, v0, v2

    sget-object v1, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->DEACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    aput-object v1, v0, v3

    sget-object v1, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->FAILURE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    aput-object v1, v0, v4

    sput-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->$VALUES:[Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/appplant/cordova/plugin/background/BackgroundMode$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    return-object v0
.end method

.method public static values()[Lde/appplant/cordova/plugin/background/BackgroundMode$Event;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->$VALUES:[Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    invoke-virtual {v0}, [Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    return-object v0
.end method
