.class final Lcom/uc/filemanager/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/uc/filemanager/FileManagerLayout;


# direct methods
.method constructor <init>(Lcom/uc/filemanager/FileManagerLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/filemanager/r;->b:Lcom/uc/filemanager/FileManagerLayout;

    iput-object p2, p0, Lcom/uc/filemanager/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/uc/filemanager/r;->b:Lcom/uc/filemanager/FileManagerLayout;

    invoke-virtual {v0}, Lcom/uc/filemanager/FileManagerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/filemanager/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/plugin/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
