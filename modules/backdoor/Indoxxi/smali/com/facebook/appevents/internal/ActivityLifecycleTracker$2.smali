.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$currentTime:J

.field final synthetic val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/facebook/appevents/internal/SourceApplicationInfo;)V
    .locals 1

    .prologue
    .line 121
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    iput-object p5, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 124
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 126
    invoke-static {}, Lcom/facebook/appevents/internal/SessionInfo;->getStoredSessionInfo()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v0

    .line 127
    .local v0, "lastSession":Lcom/facebook/appevents/internal/SessionInfo;
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v1, v2, v0, v3}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 135
    :cond_0
    new-instance v1, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$102(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 137
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$100()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/internal/SessionInfo;->setSourceApplicationInfo(Lcom/facebook/appevents/internal/SourceApplicationInfo;)V

    .line 138
    iget-object v1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$activityName:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;->val$sourceApplicationInfo:Lcom/facebook/appevents/internal/SourceApplicationInfo;

    .line 142
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;)V

    .line 144
    .end local v0    # "lastSession":Lcom/facebook/appevents/internal/SessionInfo;
    :cond_1
    return-void
.end method
