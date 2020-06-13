.class final Lcom/uc/browser/Barcode/client/android/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/uc/browser/Barcode/client/android/h;


# direct methods
.method private constructor <init>(Lcom/uc/browser/Barcode/client/android/h;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/Barcode/client/android/j;->a:Lcom/uc/browser/Barcode/client/android/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/browser/Barcode/client/android/h;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uc/browser/Barcode/client/android/j;-><init>(Lcom/uc/browser/Barcode/client/android/h;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/Barcode/client/android/j;->a:Lcom/uc/browser/Barcode/client/android/h;

    invoke-static {v0}, Lcom/uc/browser/Barcode/client/android/h;->a(Lcom/uc/browser/Barcode/client/android/h;)V

    :cond_0
    return-void
.end method
