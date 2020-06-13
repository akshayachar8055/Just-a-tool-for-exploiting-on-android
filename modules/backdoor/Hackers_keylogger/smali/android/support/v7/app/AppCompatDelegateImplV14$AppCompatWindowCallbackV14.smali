.class Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.super Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackV14"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
    .locals 0
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 50
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    .line 52
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->access$000(Landroid/support/v7/app/AppCompatDelegateImplV14;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 70
    new-instance v0, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 74
    .local v0, "callbackWrapper":Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {v3, v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v2

    .line 77
    .local v2, "supportActionMode":Landroid/support/v7/view/ActionMode;
    if-eqz v2, :cond_0

    .line 79
    new-instance v1, Landroid/support/v7/internal/view/SupportActionModeWrapper;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    iget-object v3, v3, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/support/v7/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode;)V

    .line 82
    .local v1, "newActionMode":Landroid/support/v7/internal/view/SupportActionModeWrapper;
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;->addActionModeWrapper(Landroid/support/v7/internal/view/SupportActionModeWrapper;)V

    .line 85
    .end local v1    # "newActionMode":Landroid/support/v7/internal/view/SupportActionModeWrapper;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
