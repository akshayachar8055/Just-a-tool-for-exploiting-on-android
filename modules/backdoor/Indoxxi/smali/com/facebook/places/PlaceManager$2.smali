.class final Lcom/facebook/places/PlaceManager$2;
.super Ljava/lang/Object;
.source "PlaceManager.java"

# interfaces
.implements Lcom/facebook/places/internal/LocationPackageManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/PlaceManager;->newCurrentPlaceRequest(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

.field final synthetic val$requestParams:Lcom/facebook/places/model/CurrentPlaceRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;Lcom/facebook/places/model/CurrentPlaceRequestParams;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/facebook/places/PlaceManager$2;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    iput-object p2, p0, Lcom/facebook/places/PlaceManager$2;->val$requestParams:Lcom/facebook/places/model/CurrentPlaceRequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPackage(Lcom/facebook/places/internal/LocationPackage;)V
    .locals 5
    .param p1, "locationPackage"    # Lcom/facebook/places/internal/LocationPackage;

    .prologue
    .line 334
    iget-object v2, p1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/facebook/places/PlaceManager$2;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    iget-object v3, p1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    .line 336
    invoke-static {v3}, Lcom/facebook/places/PlaceManager;->access$000(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;

    move-result-object v3

    .line 335
    invoke-interface {v2, v3}, Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;->onLocationError(Lcom/facebook/places/PlaceManager$LocationError;)V

    .line 349
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v2, p0, Lcom/facebook/places/PlaceManager$2;->val$requestParams:Lcom/facebook/places/model/CurrentPlaceRequestParams;

    invoke-static {v2, p1}, Lcom/facebook/places/PlaceManager;->access$100(Lcom/facebook/places/model/CurrentPlaceRequestParams;Lcom/facebook/places/internal/LocationPackage;)Landroid/os/Bundle;

    move-result-object v1

    .line 342
    .local v1, "parameters":Landroid/os/Bundle;
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 343
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "current_place/results"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 347
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    iget-object v2, p0, Lcom/facebook/places/PlaceManager$2;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    invoke-interface {v2, v0}, Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;->onRequestReady(Lcom/facebook/GraphRequest;)V

    goto :goto_0
.end method
