.class Lorg/apache/cordova/splashscreen/SplashScreen$6;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen;->spinnerStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/splashscreen/SplashScreen;


# direct methods
.method constructor <init>(Lorg/apache/cordova/splashscreen/SplashScreen;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/splashscreen/SplashScreen;

    .prologue
    .line 348
    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v10, -0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 350
    iget-object v8, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v8}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$400(Lorg/apache/cordova/splashscreen/SplashScreen;)V

    .line 352
    new-instance v8, Landroid/app/ProgressDialog;

    iget-object v9, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v9, v9, Lorg/apache/cordova/splashscreen/SplashScreen;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v9}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v8}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 353
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v8

    new-instance v9, Lorg/apache/cordova/splashscreen/SplashScreen$6$1;

    invoke-direct {v9, p0}, Lorg/apache/cordova/splashscreen/SplashScreen$6$1;-><init>(Lorg/apache/cordova/splashscreen/SplashScreen$6;)V

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 359
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 360
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 362
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v8, v8, Lorg/apache/cordova/splashscreen/SplashScreen;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, "centeredLayout":Landroid/widget/RelativeLayout;
    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 364
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v8, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    iget-object v8, v8, Lorg/apache/cordova/splashscreen/SplashScreen;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 367
    .local v5, "progressBar":Landroid/widget/ProgressBar;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 368
    .local v4, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xd

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 372
    iget-object v8, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6;->this$0:Lorg/apache/cordova/splashscreen/SplashScreen;

    invoke-static {v8}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1200(Lorg/apache/cordova/splashscreen/SplashScreen;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v8

    const-string v9, "SplashScreenSpinnerColor"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "colorName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 374
    const/4 v8, 0x4

    new-array v7, v8, [[I

    new-array v8, v12, [I

    const v9, 0x101009e

    aput v9, v8, v11

    aput-object v8, v7, v11

    new-array v8, v12, [I

    const v9, -0x101009e

    aput v9, v8, v11

    aput-object v8, v7, v12

    new-array v8, v12, [I

    const v9, -0x10100a0

    aput v9, v8, v11

    aput-object v8, v7, v13

    new-array v8, v12, [I

    const v9, 0x10100a7

    aput v9, v8, v11

    aput-object v8, v7, v14

    .line 380
    .local v7, "states":[[I
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .line 381
    .local v6, "progressBarColor":I
    const/4 v8, 0x4

    new-array v3, v8, [I

    aput v6, v3, v11

    aput v6, v3, v12

    aput v6, v3, v13

    aput v6, v3, v14

    .line 387
    .local v3, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v7, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 388
    .local v2, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 392
    .end local v1    # "colorName":Ljava/lang/String;
    .end local v2    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v3    # "colors":[I
    .end local v6    # "progressBarColor":I
    .end local v7    # "states":[[I
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 394
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/view/Window;->clearFlags(I)V

    .line 395
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    .line 398
    invoke-static {}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1100()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    .line 399
    return-void
.end method
