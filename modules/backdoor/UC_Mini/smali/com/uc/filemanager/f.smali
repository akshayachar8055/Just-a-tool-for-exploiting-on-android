.class final Lcom/uc/filemanager/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/uc/filemanager/FileManagerLayout;


# direct methods
.method constructor <init>(Lcom/uc/filemanager/FileManagerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/filemanager/f;->a:Lcom/uc/filemanager/FileManagerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/filemanager/f;->a:Lcom/uc/filemanager/FileManagerLayout;

    invoke-static {v0}, Lcom/uc/filemanager/FileManagerLayout;->a(Lcom/uc/filemanager/FileManagerLayout;)Lcom/uc/filemanager/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/filemanager/f;->a:Lcom/uc/filemanager/FileManagerLayout;

    invoke-static {v0}, Lcom/uc/filemanager/FileManagerLayout;->a(Lcom/uc/filemanager/FileManagerLayout;)Lcom/uc/filemanager/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/filemanager/x;->j()Z

    :cond_0
    return-void
.end method
