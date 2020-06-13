.class Lcom/google/android/gms/b/ac$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/ac;->a(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/gms/b/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ac;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/ac$1;->b:Lcom/google/android/gms/b/ac;

    iput-object p2, p0, Lcom/google/android/gms/b/ac$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/ac$1;->b:Lcom/google/android/gms/b/ac;

    iget-object v1, p0, Lcom/google/android/gms/b/ac$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/ac;->b(Landroid/view/View;)V

    return-void
.end method
