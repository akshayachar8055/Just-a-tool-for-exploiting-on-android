.class public Lorg/pocketworkstation/pckeyboard/AutoSummaryListPreference;
.super Landroid/preference/ListPreference;
.source "AutoSummaryListPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HK/AutoSummaryListPreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private trySetSummary()V
    .locals 5

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/AutoSummaryListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "HK/AutoSummaryListPreference"

    const-string v1, "Malfunctioning ListPreference, can\'t get entry"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "percent"

    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/pocketworkstation/pckeyboard/AutoSummaryListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 39
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/AutoSummaryListPreference;->trySetSummary()V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 45
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/AutoSummaryListPreference;->trySetSummary()V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lorg/pocketworkstation/pckeyboard/AutoSummaryListPreference;->trySetSummary()V

    return-void
.end method
