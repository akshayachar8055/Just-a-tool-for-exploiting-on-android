.class Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$3;
.super Ljava/lang/Object;
.source "GlobalKeyboardSettings.java"

# interfaces
.implements Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$StringPref;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->initPrefs(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$3;->this$0:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$3;->this$0:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->sendSlideKeys:I

    return-void
.end method
