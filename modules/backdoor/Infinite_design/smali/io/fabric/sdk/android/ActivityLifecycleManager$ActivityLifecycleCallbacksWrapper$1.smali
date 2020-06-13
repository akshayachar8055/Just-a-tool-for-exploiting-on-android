.class Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->registerLifecycleCallbacks(Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

.field final synthetic val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->this$0:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    iput-object p2, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper$1;->val$callbacks:Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
