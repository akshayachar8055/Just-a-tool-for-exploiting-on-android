.class Lcom/facebook/login/LoginManager$4;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginManager;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$logger:Lcom/facebook/login/LoginLogger;

.field final synthetic val$loggerRef:Ljava/lang/String;

.field final synthetic val$responseCallback:Lcom/facebook/LoginStatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/login/LoginManager;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/facebook/login/LoginManager$4;->this$0:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iput-object p4, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    iput-object p5, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 633
    if-eqz p1, :cond_3

    .line 635
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 636
    .local v10, "errorType":Ljava/lang/String;
    const-string v2, "com.facebook.platform.status.ERROR_DESCRIPTION"

    .line 637
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 638
    .local v9, "errorDescription":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 639
    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v6, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-static {v10, v9, v2, v5, v6}, Lcom/facebook/login/LoginManager;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    .line 687
    .end local v9    # "errorDescription":Ljava/lang/String;
    .end local v10    # "errorType":Ljava/lang/String;
    :goto_0
    return-void

    .line 646
    .restart local v9    # "errorDescription":Ljava/lang/String;
    .restart local v10    # "errorType":Ljava/lang/String;
    :cond_0
    const-string v2, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 647
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "token":Ljava/lang/String;
    const-string v2, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    .line 649
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 651
    .local v12, "expires":J
    const-string v2, "com.facebook.platform.extra.PERMISSIONS"

    .line 652
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 653
    .local v4, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "signed request"

    .line 654
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 655
    .local v11, "signedRequest":Ljava/lang/String;
    const/4 v3, 0x0

    .line 656
    .local v3, "userId":Ljava/lang/String;
    invoke-static {v11}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 658
    invoke-static {v11}, Lcom/facebook/login/LoginMethodHandler;->getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 661
    :cond_1
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    .line 663
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 664
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 665
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object v6, v5

    move-object v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 674
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 675
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 676
    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v5, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/facebook/login/LoginLogger;->logLoginStatusSuccess(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v2, v0}, Lcom/facebook/LoginStatusCallback;->onCompleted(Lcom/facebook/AccessToken;)V

    goto :goto_0

    .line 679
    .end local v0    # "accessToken":Lcom/facebook/AccessToken;
    :cond_2
    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v5, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 680
    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto :goto_0

    .line 684
    .end local v1    # "token":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    .end local v4    # "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "errorDescription":Ljava/lang/String;
    .end local v10    # "errorType":Ljava/lang/String;
    .end local v11    # "signedRequest":Ljava/lang/String;
    .end local v12    # "expires":J
    :cond_3
    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iget-object v5, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v2}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto :goto_0
.end method
