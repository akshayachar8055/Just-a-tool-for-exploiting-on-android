.class final Lcom/uc/browser/bookmark/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/uc/browser/bookmark/BookmarkPageView;


# direct methods
.method constructor <init>(Lcom/uc/browser/bookmark/BookmarkPageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bookmark/o;->c:Lcom/uc/browser/bookmark/BookmarkPageView;

    iput-object p2, p0, Lcom/uc/browser/bookmark/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/browser/bookmark/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/uc/browser/bookmark/o;->c:Lcom/uc/browser/bookmark/BookmarkPageView;

    iget-object v1, p0, Lcom/uc/browser/bookmark/o;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/browser/bookmark/o;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/uc/browser/bookmark/BookmarkPageView;->a(Lcom/uc/browser/bookmark/BookmarkPageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
