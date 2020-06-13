.class final Lcom/facebook/places/PlaceManager$1;
.super Ljava/lang/Object;
.source "PlaceManager.java"

# interfaces
.implements Lcom/facebook/places/internal/LocationPackageManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/PlaceManager;->newPlaceSearchRequest(Lcom/facebook/places/model/PlaceSearchRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

.field final synthetic val$requestParams:Lcom/facebook/places/model/PlaceSearchRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/model/PlaceSearchRequestParams;Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/facebook/places/PlaceManager$1;->val$requestParams:Lcom/facebook/places/model/PlaceSearchRequestParams;

    iput-object p2, p0, Lcom/facebook/places/PlaceManager$1;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPackage(Lcom/facebook/places/internal/LocationPackage;)V
    .locals 3
    .param p1, "locationPackage"    # Lcom/facebook/places/internal/LocationPackage;

    .prologue
    .line 177
    iget-object v1, p1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/facebook/places/PlaceManager$1;->val$requestParams:Lcom/facebook/places/model/PlaceSearchRequestParams;

    iget-object v2, p1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/facebook/places/PlaceManager;->newPlaceSearchRequestForLocation(Lcom/facebook/places/model/PlaceSearchRequestParams;Landroid/location/Location;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 181
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    iget-object v1, p0, Lcom/facebook/places/PlaceManager$1;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    invoke-interface {v1, v0}, Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;->onRequestReady(Lcom/facebook/GraphRequest;)V

    .line 185
    .end local v0    # "graphRequest":Lcom/facebook/GraphRequest;
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/facebook/places/PlaceManager$1;->val$callback:Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;

    iget-object v2, p1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-static {v2}, Lcom/facebook/places/PlaceManager;->access$000(Lcom/facebook/places/internal/ScannerException$Type;)Lcom/facebook/places/PlaceManager$LocationError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/places/PlaceManager$OnRequestReadyCallback;->onLocationError(Lcom/facebook/places/PlaceManager$LocationError;)V

    goto :goto_0
.end method
