.class final Lcom/google/android/gms/b/hh$3;
.super Lcom/google/android/gms/b/hh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/b/hh;->a(Landroid/content/Context;I)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/b/hh$3;->a:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/b/hh$3;->b:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/b/hh$a;-><init>(Lcom/google/android/gms/b/hh$1;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/hh$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/b/hh;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "webview_cache_version"

    iget v2, p0, Lcom/google/android/gms/b/hh$3;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
