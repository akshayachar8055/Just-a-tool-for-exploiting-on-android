.class Lcom/crashlytics/android/core/CreateReportRequest;
.super Ljava/lang/Object;
.source "CreateReportRequest.java"


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final report:Lcom/crashlytics/android/core/Report;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/crashlytics/android/core/Report;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/CreateReportRequest;->apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/core/CreateReportRequest;->report:Lcom/crashlytics/android/core/Report;

    return-void
.end method
