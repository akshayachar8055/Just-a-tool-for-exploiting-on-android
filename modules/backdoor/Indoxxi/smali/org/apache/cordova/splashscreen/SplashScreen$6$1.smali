.class Lorg/apache/cordova/splashscreen/SplashScreen$6$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/splashscreen/SplashScreen$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/splashscreen/SplashScreen$6;


# direct methods
.method constructor <init>(Lorg/apache/cordova/splashscreen/SplashScreen$6;)V
    .locals 0
    .param p1, "this$1"    # Lorg/apache/cordova/splashscreen/SplashScreen$6;

    .prologue
    .line 353
    iput-object p1, p0, Lorg/apache/cordova/splashscreen/SplashScreen$6$1;->this$1:Lorg/apache/cordova/splashscreen/SplashScreen$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/cordova/splashscreen/SplashScreen;->access$1102(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 356
    return-void
.end method
