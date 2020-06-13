.class public Lcom/uc/pa/PAFactory;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_BASE_ANALYZER:I

.field private static mBaseAnalyzer:Lcom/uc/pa/PA;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/uc/pa/PA;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uc/pa/PAFactory;->getInstance(I)Lcom/uc/pa/PA;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(I)Lcom/uc/pa/PA;
    .locals 2

    const-class v1, Lcom/uc/pa/PAFactory;

    monitor-enter v1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/uc/pa/PAFactory;->mBaseAnalyzer:Lcom/uc/pa/PA;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/pa/impl/PAImpl;

    invoke-direct {v0}, Lcom/uc/pa/impl/PAImpl;-><init>()V

    sput-object v0, Lcom/uc/pa/PAFactory;->mBaseAnalyzer:Lcom/uc/pa/PA;

    :cond_0
    sget-object v0, Lcom/uc/pa/PAFactory;->mBaseAnalyzer:Lcom/uc/pa/PA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
