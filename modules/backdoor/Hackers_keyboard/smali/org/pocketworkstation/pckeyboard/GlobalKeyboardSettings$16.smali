.class Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$16;
.super Ljava/lang/Object;
.source "GlobalKeyboardSettings.java"

# interfaces
.implements Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$BooleanPref;


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

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;Landroid/content/res/Resources;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$16;->this$0:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$16;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault()Z
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$16;->val$res:Landroid/content/res/Resources;

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(Z)V
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings$16;->this$0:Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;

    iput-boolean p1, v0, Lorg/pocketworkstation/pckeyboard/GlobalKeyboardSettings;->capsLock:Z

    return-void
.end method
