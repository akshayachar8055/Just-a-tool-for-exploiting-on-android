.class final Lcom/uc/browser/upload/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/upload/FacebookUploadTips;


# direct methods
.method constructor <init>(Lcom/uc/browser/upload/FacebookUploadTips;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/upload/h;->a:Lcom/uc/browser/upload/FacebookUploadTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/upload/h;->a:Lcom/uc/browser/upload/FacebookUploadTips;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/uc/browser/upload/FacebookUploadTips;->setVisibility(I)V

    return-void
.end method
