.class Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;
.super Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictPluginSpecHK"
.end annotation


# instance fields
.field mRawIds:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;-><init>(Lorg/pocketworkstation/pckeyboard/PluginManager$1;)V

    .line 86
    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;->mPackageName:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;->mRawIds:[I

    return-void
.end method


# virtual methods
.method getStreams(Landroid/content/res/Resources;)[Ljava/io/InputStream;
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;->mRawIds:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;->mRawIds:[I

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;->mRawIds:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 94
    :goto_0
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;->mRawIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 95
    iget-object v2, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecHK;->mRawIds:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
