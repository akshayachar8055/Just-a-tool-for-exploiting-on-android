.class final Landroid/support/customtabs/CustomTabsClient$1;
.super Landroid/support/customtabs/CustomTabsServiceConnection;
.source "CustomTabsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient;->connectAndInitialize(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/support/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroid/support/customtabs/CustomTabsClient;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "client"    # Landroid/support/customtabs/CustomTabsClient;

    .prologue
    .line 142
    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    .line 146
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 147
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 150
    return-void
.end method
