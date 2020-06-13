.class final Lcom/uc/browser/facebook/notification/screenlock/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;


# direct methods
.method constructor <init>(Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/facebook/notification/screenlock/f;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/screenlock/f;->a:Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;

    invoke-virtual {v0}, Lcom/uc/browser/facebook/notification/screenlock/FacebookUnLockActivity;->finish()V

    return-void
.end method
