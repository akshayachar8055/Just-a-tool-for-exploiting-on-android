.class final Lcom/uc/browser/bookmark/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/bookmark/BookmarkPageView;


# direct methods
.method constructor <init>(Lcom/uc/browser/bookmark/BookmarkPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/bookmark/u;->a:Lcom/uc/browser/bookmark/BookmarkPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/bookmark/u;->a:Lcom/uc/browser/bookmark/BookmarkPageView;

    invoke-static {v0}, Lcom/uc/browser/bookmark/BookmarkPageView;->a(Lcom/uc/browser/bookmark/BookmarkPageView;)Lcom/uc/browser/bookmark/BookmarkTabContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/bookmark/BookmarkTabContainer;->h()V

    return-void
.end method
