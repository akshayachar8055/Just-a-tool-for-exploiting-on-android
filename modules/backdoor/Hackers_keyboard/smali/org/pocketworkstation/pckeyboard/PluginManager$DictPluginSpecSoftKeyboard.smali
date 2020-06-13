.class Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecSoftKeyboard;
.super Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictPluginSpecSoftKeyboard"
.end annotation


# instance fields
.field mAssetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;-><init>(Lorg/pocketworkstation/pckeyboard/PluginManager$1;)V

    .line 107
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecSoftKeyboard;->mPackageName:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecSoftKeyboard;->mAssetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getStreams(Landroid/content/res/Resources;)[Ljava/io/InputStream;
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecSoftKeyboard;->mAssetName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 115
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecSoftKeyboard;->mAssetName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x1

    .line 116
    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v2, 0x0

    aput-object p1, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/PluginManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dictionary asset loading failure"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
