.class final Lcom/uc/browser/facebook/notification/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/facebook/notification/view/e;->a:Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/view/e;->a:Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;

    invoke-static {v0}, Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;->a(Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;)Lcom/uc/browser/facebook/notification/view/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/facebook/notification/view/e;->a:Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;

    invoke-static {v0}, Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;->a(Lcom/uc/browser/facebook/notification/view/FacebookNoteLayout;)Lcom/uc/browser/facebook/notification/view/j;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/uc/browser/facebook/notification/view/j;->c(Z)V

    :cond_0
    return-void
.end method
