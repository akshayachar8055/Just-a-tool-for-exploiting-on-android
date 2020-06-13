.class final Lcom/uc/browser/fi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field private a:Lcom/uc/browser/ff;

.field private synthetic b:Lcom/uc/browser/fe;


# direct methods
.method private constructor <init>(Lcom/uc/browser/fe;Lcom/uc/browser/ff;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/fi;->b:Lcom/uc/browser/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uc/browser/fi;->a:Lcom/uc/browser/ff;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/browser/fe;Lcom/uc/browser/ff;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uc/browser/fi;-><init>(Lcom/uc/browser/fe;Lcom/uc/browser/ff;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v7

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/uc/browser/fi;->b:Lcom/uc/browser/fe;

    invoke-static {v0}, Lcom/uc/browser/fe;->b(Lcom/uc/browser/fe;)Lcom/uc/browser/fg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/fg;->a()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x320

    if-le v0, v1, :cond_2

    const/high16 v1, 0x44480000    # 800.0f

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v7

    goto :goto_1
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fi;->b:Lcom/uc/browser/fe;

    iget-object v0, v0, Lcom/uc/browser/fe;->a:Landroid/hardware/Camera;

    if-eq v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/uc/browser/fi;->b:Lcom/uc/browser/fe;

    invoke-static {v0}, Lcom/uc/browser/fe;->c(Lcom/uc/browser/fe;)Lcom/uc/browser/fl;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/browser/fl;->b(Lcom/uc/browser/fl;)V

    goto :goto_0
.end method

.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/uc/browser/fi;->b:Lcom/uc/browser/fe;

    invoke-static {v0}, Lcom/uc/browser/fe;->a(Lcom/uc/browser/fe;)Lcom/uc/browser/fh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/browser/fh;->d()Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v3, 0x320

    if-le v1, v3, :cond_0

    div-int/lit16 v1, v1, 0x320

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v1, 0x0

    array-length v3, p1

    invoke-static {p1, v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/uc/browser/fi;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/uc/browser/fi;->a:Lcom/uc/browser/ff;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/uc/browser/fi;->a:Lcom/uc/browser/ff;

    invoke-interface {v1, v0}, Lcom/uc/browser/ff;->a(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/uc/browser/fi;->b:Lcom/uc/browser/fe;

    invoke-static {v0}, Lcom/uc/browser/fe;->c(Lcom/uc/browser/fe;)Lcom/uc/browser/fl;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/browser/fl;->a(Lcom/uc/browser/fl;)Z

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final onShutter()V
    .locals 1

    iget-object v0, p0, Lcom/uc/browser/fi;->a:Lcom/uc/browser/ff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/fi;->a:Lcom/uc/browser/ff;

    invoke-interface {v0}, Lcom/uc/browser/ff;->a()V

    :cond_0
    return-void
.end method
