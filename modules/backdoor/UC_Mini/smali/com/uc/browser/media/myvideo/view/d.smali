.class public final Lcom/uc/browser/media/myvideo/view/d;
.super Ljava/lang/Object;


# instance fields
.field private synthetic a:Lcom/uc/browser/media/myvideo/view/MyVideoItemView;


# direct methods
.method constructor <init>(Lcom/uc/browser/media/myvideo/view/MyVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/media/myvideo/view/d;->a:Lcom/uc/browser/media/myvideo/view/MyVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/media/myvideo/view/d;->a:Lcom/uc/browser/media/myvideo/view/MyVideoItemView;

    invoke-virtual {v0, p1}, Lcom/uc/browser/media/myvideo/view/MyVideoItemView;->setThumbnailImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
