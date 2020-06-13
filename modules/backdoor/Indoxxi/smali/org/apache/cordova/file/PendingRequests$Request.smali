.class public Lorg/apache/cordova/file/PendingRequests$Request;
.super Ljava/lang/Object;
.source "PendingRequests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/file/PendingRequests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Request"
.end annotation


# instance fields
.field private action:I

.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private rawArgs:Ljava/lang/String;

.field private requestCode:I

.field final synthetic this$0:Lorg/apache/cordova/file/PendingRequests;


# direct methods
.method private constructor <init>(Lorg/apache/cordova/file/PendingRequests;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/cordova/file/PendingRequests;
    .param p2, "rawArgs"    # Ljava/lang/String;
    .param p3, "action"    # I
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/cordova/file/PendingRequests$Request;->this$0:Lorg/apache/cordova/file/PendingRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lorg/apache/cordova/file/PendingRequests$Request;->rawArgs:Ljava/lang/String;

    .line 77
    iput p3, p0, Lorg/apache/cordova/file/PendingRequests$Request;->action:I

    .line 78
    iput-object p4, p0, Lorg/apache/cordova/file/PendingRequests$Request;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 79
    invoke-static {p1}, Lorg/apache/cordova/file/PendingRequests;->access$208(Lorg/apache/cordova/file/PendingRequests;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->requestCode:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/cordova/file/PendingRequests;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;Lorg/apache/cordova/file/PendingRequests$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/cordova/file/PendingRequests;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lorg/apache/cordova/CallbackContext;
    .param p5, "x4"    # Lorg/apache/cordova/file/PendingRequests$1;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/cordova/file/PendingRequests$Request;-><init>(Lorg/apache/cordova/file/PendingRequests;Ljava/lang/String;ILorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/cordova/file/PendingRequests$Request;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/file/PendingRequests$Request;

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->requestCode:I

    return v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->action:I

    return v0
.end method

.method public getCallbackContext()Lorg/apache/cordova/CallbackContext;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method public getRawArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/cordova/file/PendingRequests$Request;->rawArgs:Ljava/lang/String;

    return-object v0
.end method
