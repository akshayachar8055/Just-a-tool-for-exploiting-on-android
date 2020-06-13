.class abstract Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pocketworkstation/pckeyboard/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DictPluginSpecBase"
.end annotation


# instance fields
.field mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/pocketworkstation/pckeyboard/PluginManager$1;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getDict(Landroid/content/Context;)Lorg/pocketworkstation/pckeyboard/BinaryDictionary;
    .locals 4

    .line 67
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;->getStreams(Landroid/content/res/Resources;)[Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 72
    :cond_1
    new-instance v2, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, v3}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;-><init>(Landroid/content/Context;[Ljava/io/InputStream;I)V

    .line 74
    invoke-virtual {v2}, Lorg/pocketworkstation/pckeyboard/BinaryDictionary;->getSize()I

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    return-object v2
.end method

.method getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PluginManager$DictPluginSpecBase;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    invoke-static {}, Lorg/pocketworkstation/pckeyboard/PluginManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "couldn\'t get resources"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method abstract getStreams(Landroid/content/res/Resources;)[Ljava/io/InputStream;
.end method
