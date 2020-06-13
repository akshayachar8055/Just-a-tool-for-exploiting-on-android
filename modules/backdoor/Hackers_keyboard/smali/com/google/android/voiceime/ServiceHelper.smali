.class public Lcom/google/android/voiceime/ServiceHelper;
.super Landroid/app/Service;
.source "ServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voiceime/ServiceHelper$Callback;,
        Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceHelper"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;

    invoke-direct {v0, p0}, Lcom/google/android/voiceime/ServiceHelper$ServiceHelperBinder;-><init>(Lcom/google/android/voiceime/ServiceHelper;)V

    iput-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public notifyResult(Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/voiceime/ServiceHelper$Callback;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/google/android/voiceime/ServiceHelper;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ServiceHelper"

    const-string v1, "#onCreate"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "ServiceHelper"

    const-string v1, "#onDestroy"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startRecognition(Ljava/lang/String;Lcom/google/android/voiceime/ServiceHelper$Callback;)V
    .locals 1

    const-string p1, "ServiceHelper"

    const-string v0, "#startRecognition"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p2, p0, Lcom/google/android/voiceime/ServiceHelper;->mCallback:Lcom/google/android/voiceime/ServiceHelper$Callback;

    .line 57
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/google/android/voiceime/ActivityHelper;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/voiceime/ServiceHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
