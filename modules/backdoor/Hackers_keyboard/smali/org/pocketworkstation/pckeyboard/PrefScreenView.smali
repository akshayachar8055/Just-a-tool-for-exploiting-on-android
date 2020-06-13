.class public Lorg/pocketworkstation/pckeyboard/PrefScreenView;
.super Landroid/preference/PreferenceActivity;
.source "PrefScreenView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mRenderModePreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f001c

    .line 34
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/PrefScreenView;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/PrefScreenView;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 36
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string p1, "pref_render_mode"

    .line 37
    invoke-virtual {p0, p1}, Lorg/pocketworkstation/pckeyboard/PrefScreenView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lorg/pocketworkstation/pckeyboard/PrefScreenView;->mRenderModePreference:Landroid/preference/ListPreference;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lorg/pocketworkstation/pckeyboard/PrefScreenView;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 54
    sget-object v0, Lorg/pocketworkstation/pckeyboard/LatinKeyboardBaseView;->sSetRenderMode:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PrefScreenView;->mRenderModePreference:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lorg/pocketworkstation/pckeyboard/PrefScreenView;->mRenderModePreference:Landroid/preference/ListPreference;

    const v1, 0x7f0c013c

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 48
    new-instance p1, Landroid/app/backup/BackupManager;

    invoke-direct {p1, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method
