.class final Lcom/uc/browser/homepage/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/homepage/view/FolderPanel;


# direct methods
.method constructor <init>(Lcom/uc/browser/homepage/view/FolderPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/homepage/view/i;->a:Lcom/uc/browser/homepage/view/FolderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/homepage/view/i;->a:Lcom/uc/browser/homepage/view/FolderPanel;

    invoke-virtual {v0}, Lcom/uc/browser/homepage/view/FolderPanel;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
