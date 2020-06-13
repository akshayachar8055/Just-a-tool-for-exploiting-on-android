.class public Lio/fabric/sdk/android/KitInfo;
.super Ljava/lang/Object;
.source "KitInfo.java"


# instance fields
.field private final buildType:Ljava/lang/String;

.field private final identifier:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/KitInfo;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/KitInfo;->version:Ljava/lang/String;

    iput-object p3, p0, Lio/fabric/sdk/android/KitInfo;->buildType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBuildType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/KitInfo;->buildType:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/KitInfo;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/KitInfo;->version:Ljava/lang/String;

    return-object v0
.end method
