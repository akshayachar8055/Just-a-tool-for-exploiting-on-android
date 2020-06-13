.class final Lcom/uc/browser/winmgr/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uc/widget/t;


# instance fields
.field private synthetic a:Lcom/uc/browser/winmgr/MultiWindowListLayout;


# direct methods
.method constructor <init>(Lcom/uc/browser/winmgr/MultiWindowListLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/winmgr/c;->a:Lcom/uc/browser/winmgr/MultiWindowListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/winmgr/c;->a:Lcom/uc/browser/winmgr/MultiWindowListLayout;

    invoke-virtual {v0}, Lcom/uc/browser/winmgr/MultiWindowListLayout;->invalidate()V

    return-void
.end method
