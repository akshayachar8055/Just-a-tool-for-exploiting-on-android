.class Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/events/EventsFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWithTimestamp"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field final timestamp:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;->file:Ljava/io/File;

    iput-wide p2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;->timestamp:J

    return-void
.end method
