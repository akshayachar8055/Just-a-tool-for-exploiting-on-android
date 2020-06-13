.class final Lcom/uc/browser/bookmark/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/uc/browser/bookmark/BookmarkPageView;


# direct methods
.method constructor <init>(Lcom/uc/browser/bookmark/BookmarkPageView;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bookmark/x;->b:Lcom/uc/browser/bookmark/BookmarkPageView;

    iput-object p2, p0, Lcom/uc/browser/bookmark/x;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/uc/browser/bookmark/x;->b:Lcom/uc/browser/bookmark/BookmarkPageView;

    iget-object v1, p0, Lcom/uc/browser/bookmark/x;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/browser/bookmark/BookmarkPageView;->b(Lcom/uc/browser/bookmark/BookmarkPageView;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
