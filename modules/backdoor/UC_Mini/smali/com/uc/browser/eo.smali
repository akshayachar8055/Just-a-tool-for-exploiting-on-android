.class final Lcom/uc/browser/eo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/browser/en;


# direct methods
.method constructor <init>(Lcom/uc/browser/en;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/eo;->a:Lcom/uc/browser/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/eo;->a:Lcom/uc/browser/en;

    iget-object v0, v0, Lcom/uc/browser/en;->a:Lcom/uc/browser/UCAlertDialog;

    invoke-static {v0}, Lcom/uc/browser/UCAlertDialog;->a(Lcom/uc/browser/UCAlertDialog;)V

    return-void
.end method
