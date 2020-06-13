.class final Lcom/uc/browser/facebook/notification/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/facebook/notification/view/b;->a:Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/view/b;->a:Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;

    invoke-static {v0}, Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;->a(Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;)Lcom/uc/browser/facebook/notification/view/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/view/b;->a:Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;

    invoke-static {v0}, Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;->a(Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;)Lcom/uc/browser/facebook/notification/view/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/browser/facebook/notification/view/j;->g()Z

    :cond_0
    return-void
.end method
