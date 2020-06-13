.class final Lcom/uc/filemanager/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/uc/filemanager/FileManagerLayout;


# direct methods
.method constructor <init>(Lcom/uc/filemanager/FileManagerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/filemanager/n;->a:Lcom/uc/filemanager/FileManagerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/uc/filemanager/n;->a:Lcom/uc/filemanager/FileManagerLayout;

    invoke-static {v0}, Lcom/uc/filemanager/FileManagerLayout;->f(Lcom/uc/filemanager/FileManagerLayout;)V

    return-void
.end method
