.class Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;
.super Ljava/lang/Object;
.source "CordovaInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/CordovaInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityResultHolder"
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;

.field private requestCode:I

.field private resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p1, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->requestCode:I

    .line 205
    iput p2, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->resultCode:I

    .line 206
    iput-object p3, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->intent:Landroid/content/Intent;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    .prologue
    .line 198
    iget v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->requestCode:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    .prologue
    .line 198
    iget v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->resultCode:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/cordova/CordovaInterfaceImpl$ActivityResultHolder;->intent:Landroid/content/Intent;

    return-object v0
.end method
