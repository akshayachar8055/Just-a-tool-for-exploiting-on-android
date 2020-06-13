.class Lcom/google/android/gms/b/el$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/el;->a(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/el;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/el;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/el$1;->a:Lcom/google/android/gms/b/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/el$1;->a:Lcom/google/android/gms/b/el;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/el;->a(Z)V

    return-void
.end method
