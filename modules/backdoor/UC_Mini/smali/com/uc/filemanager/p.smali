.class final Lcom/uc/filemanager/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private synthetic a:Lcom/uc/filemanager/FileManagerLayout;


# direct methods
.method constructor <init>(Lcom/uc/filemanager/FileManagerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/filemanager/p;->a:Lcom/uc/filemanager/FileManagerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/uc/filemanager/p;->a:Lcom/uc/filemanager/FileManagerLayout;

    invoke-static {v0}, Lcom/uc/filemanager/FileManagerLayout;->c(Lcom/uc/filemanager/FileManagerLayout;)V

    const/4 v0, 0x1

    return v0
.end method
