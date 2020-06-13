.class public Lcom/UCMobile/Apollo/MediaPlayer;
.super Ljava/lang/Object;


# static fields
.field public static final MEDIA_ERROR_CANNOT_PAUSE:I = 0x4

.field public static final MEDIA_ERROR_CANNOT_START:I = 0x2

.field public static final MEDIA_ERROR_CANNOT_STOP:I = 0x3

.field public static final MEDIA_ERROR_INVALID_STATE:I = 0x5

.field public static final MEDIA_ERROR_PREPARE_FAILED:I = 0x1

.field public static final MEDIA_ERROR_SEEK_FAILED:I = 0x6

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x10000000

.field public static final MEDIA_INFO_DOWNLOAD_RATE_CHANGE:I = 0x385

.field private static a:Z

.field private static b:I

.field private static h:Z

.field private static i:Z

.field private static k:Z

.field private static l:Z

.field public static mcontext:Landroid/content/Context;


# instance fields
.field private A:Lcom/UCMobile/Apollo/MediaPlayer$OnTimedTextListener;

.field private B:Lcom/UCMobile/Apollo/MediaPlayer$OnBufferingUpdateListener;

.field private C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

.field private D:Lcom/UCMobile/Apollo/MediaPlayer$OnCachedPositionsListener;

.field private E:Z

.field private F:Z

.field private G:J

.field private H:Landroid/content/DialogInterface$OnClickListener;

.field private _VideoStatistic:Lcom/UCMobile/Apollo/IVideoStatistic;

.field private c:Z

.field private d:I

.field private e:Landroid/media/AudioManager;

.field private f:Z

.field private g:Landroid/os/PowerManager$WakeLock;

.field private j:I

.field private m:Lcom/UCMobile/Apollo/MediaPlayer$a;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private n:Landroid/net/ConnectivityManager;

.field private o:Landroid/net/NetworkInfo;

.field private p:Lcom/UCMobile/Apollo/MediaPlayer$c;

.field private q:Landroid/view/Surface;

.field private r:Landroid/view/SurfaceHolder;

.field private s:Ljava/lang/String;

.field private t:Ljava/util/Map;

.field private u:Lcom/UCMobile/Apollo/MediaPlayer$OnInfoListener;

.field private v:Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;

.field private w:Lcom/UCMobile/Apollo/MediaPlayer$OnPreparedListener;

.field private x:Lcom/UCMobile/Apollo/MediaPlayer$OnSeekCompleteListener;

.field private y:Lcom/UCMobile/Apollo/MediaPlayer$OnVideoSizeChangedListener;

.field private z:Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    sput v0, Lcom/UCMobile/Apollo/MediaPlayer;->b:I

    sput-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->h:Z

    sput-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->i:Z

    sput-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->k:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->l:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/UCMobile/Apollo/MediaPlayer;->mcontext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->c:Z

    iput v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->d:I

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->e:Landroid/media/AudioManager;

    iput-boolean v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->f:Z

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->g:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->_VideoStatistic:Lcom/UCMobile/Apollo/IVideoStatistic;

    iput v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->j:I

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    new-instance v0, Lcom/UCMobile/Apollo/MediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/UCMobile/Apollo/MediaPlayer$1;-><init>(Lcom/UCMobile/Apollo/MediaPlayer;)V

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->a:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->q:Landroid/view/Surface;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->t:Ljava/util/Map;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->u:Lcom/UCMobile/Apollo/MediaPlayer$OnInfoListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->v:Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->w:Lcom/UCMobile/Apollo/MediaPlayer$OnPreparedListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->x:Lcom/UCMobile/Apollo/MediaPlayer$OnSeekCompleteListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->y:Lcom/UCMobile/Apollo/MediaPlayer$OnVideoSizeChangedListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->z:Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->A:Lcom/UCMobile/Apollo/MediaPlayer$OnTimedTextListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->B:Lcom/UCMobile/Apollo/MediaPlayer$OnBufferingUpdateListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->D:Lcom/UCMobile/Apollo/MediaPlayer$OnCachedPositionsListener;

    iput-boolean v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->E:Z

    iput-boolean v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->F:Z

    new-instance v0, Lcom/UCMobile/Apollo/MediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/UCMobile/Apollo/MediaPlayer$2;-><init>(Lcom/UCMobile/Apollo/MediaPlayer;)V

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->H:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    invoke-static {p1}, Lcom/UCMobile/Apollo/MediaPlayer;->globalInitialization(Landroid/content/Context;)Z

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->j:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->e:Landroid/media/AudioManager;

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->a:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-boolean v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->c:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeCreateInstance(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/InstantiationError;

    const-string v1, "Create MediaPlayer failed."

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lcom/UCMobile/Apollo/MediaPlayer$a;

    invoke-direct {v1, p0, v0}, Lcom/UCMobile/Apollo/MediaPlayer$a;-><init>(Lcom/UCMobile/Apollo/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_callbackHandler created "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/UCMobile/Apollo/MediaPlayer;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "rw.global.connectivity_network_type"

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->setOption(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/UCMobile/Apollo/MediaPlayer;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v0, "rw.global.connectivity_network_type"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->setOption(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static native _nativeButtonClickHandler(J)V
.end method

.method private native _nativeCreateInstance(Landroid/content/Context;)J
.end method

.method public static native _nativeGetAllApolloSetting(J)Ljava/lang/String;
.end method

.method public static native _nativeGetApiVersion()I
.end method

.method public static native _nativeGetApolloSetting(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method private static native _nativeGetAudioTrackIndex(J)I
.end method

.method private static native _nativeGetAudioTrackTitles(J)[Ljava/lang/String;
.end method

.method private static native _nativeGetAverageFPS(J)F
.end method

.method private native _nativeGetCurrentPosition(J)I
.end method

.method private static native _nativeGetCurrentVideoFrame(JLandroid/graphics/Bitmap;)V
.end method

.method public static native _nativeGetDefaultApolloSetting(Ljava/lang/String;J)Ljava/lang/String;
.end method

.method private native _nativeGetDuration(J)I
.end method

.method private static native _nativeGetFPS(J)F
.end method

.method private static native _nativeGetGlobalOption(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native _nativeGetGlobalOptions()Ljava/util/Map;
.end method

.method private static native _nativeGetOptions(J)Ljava/util/Map;
.end method

.method private native _nativeGetPlayableDuration(J)I
.end method

.method public static native _nativeGetVersionString()Ljava/lang/String;
.end method

.method private native _nativeGetVideoHeight(J)I
.end method

.method private native _nativeGetVideoWidth(J)I
.end method

.method public static native _nativeInitGlobalApolloSetting(Ljava/lang/String;J)I
.end method

.method private static native _nativeInitialize()V
.end method

.method private native _nativeIsPlaying(J)Z
.end method

.method private native _nativePause(J)Z
.end method

.method private native _nativePlay(J)Z
.end method

.method private native _nativePrepare(JLjava/lang/String;Ljava/util/Map;Landroid/view/Surface;Z)Z
.end method

.method private native _nativeRelease(J)V
.end method

.method public static native _nativeRemoveAllApolloSetting(J)I
.end method

.method public static native _nativeRemoveApolloSetting(Ljava/lang/String;J)I
.end method

.method private native _nativeReset(J)V
.end method

.method private native _nativeSeekTo(JI)Z
.end method

.method public static native _nativeSetApolloSetting(Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method public static native _nativeSetApolloSettings(Ljava/lang/String;J)I
.end method

.method private static native _nativeSetAudioTrackIndex(JI)Z
.end method

.method private static native _nativeSetGlobalOption(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _nativeSetInitPlaybackTime(JI)V
.end method

.method private native _nativeSetSurface(JLandroid/view/Surface;)V
.end method

.method private native _nativeSetVideoScalingMode(JI)V
.end method

.method private native _nativeStart(J)Z
.end method

.method private native _nativeStop(J)Z
.end method

.method static synthetic a(Lcom/UCMobile/Apollo/MediaPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->d:I

    return p1
.end method

.method static synthetic a(Lcom/UCMobile/Apollo/MediaPlayer;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->n:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method static synthetic a(Lcom/UCMobile/Apollo/MediaPlayer;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->o:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeReset(J)V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    invoke-virtual {v0, v2}, Lcom/UCMobile/Apollo/MediaPlayer$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer$a;->removeMessages(I)V

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->a:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-boolean v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->E:Z

    iput-boolean v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->F:Z

    invoke-direct {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->b()V

    iput-object v3, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    iput-object v3, p0, Lcom/UCMobile/Apollo/MediaPlayer;->s:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->i:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->v:Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->v:Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p0, v1, p1}, Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;->onError(Lcom/UCMobile/Apollo/MediaPlayer;II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->nativeCallback(III)V

    :cond_0
    return-void
.end method

.method static synthetic a(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeButtonClickHandler(J)V

    return-void
.end method

.method static synthetic a(Lcom/UCMobile/Apollo/MediaPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/UCMobile/Apollo/MediaPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->c:Z

    return p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->E:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->F:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/UCMobile/Apollo/MediaPlayer;)V
    .locals 3

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_0

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call _pauseToBuffering in error state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativePause(J)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->u:Lcom/UCMobile/Apollo/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Lcom/UCMobile/Apollo/MediaPlayer;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-direct {v0, p0}, Lcom/UCMobile/Apollo/MediaPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v0, p2}, Lcom/UCMobile/Apollo/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0}, Lcom/UCMobile/Apollo/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Landroid/view/SurfaceHolder;)Lcom/UCMobile/Apollo/MediaPlayer;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-direct {v0, p0}, Lcom/UCMobile/Apollo/MediaPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/UCMobile/Apollo/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0}, Lcom/UCMobile/Apollo/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/UCMobile/Apollo/MediaPlayer;)V
    .locals 3

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_1

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call _playFromBuffering in error state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativePlay(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->F:Z

    invoke-direct {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->b()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->v:Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic f(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->z:Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic g(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$c;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    return-object v0
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getApiVersion()I
    .locals 1

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetApiVersion()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getApiVersion(Landroid/content/Context;)I
    .locals 1

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/UCMobile/Apollo/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetApiVersion()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getGlobalOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetGlobalOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "MediaPlayer"

    const-string v1, "error calling _nativeGetGlobalOption"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGlobalOptions()Ljava/util/Map;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetGlobalOptions()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "MediaPlayer"

    const-string v1, "error calling _nativeGetGlobalOptions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVersionString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetVersionString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "MediaPlayer"

    const-string v1, "error calling getVersionString"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getVersionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/UCMobile/Apollo/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetVersionString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "MediaPlayer"

    const-string v1, "error calling getVersionString"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized globalInitialization(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-class v2, Lcom/UCMobile/Apollo/MediaPlayer;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/UCMobile/Apollo/a/b;->a()Z

    move-result v3

    if-nez v3, :cond_0

    sget v1, Lcom/UCMobile/Apollo/MediaPlayer;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/UCMobile/Apollo/MediaPlayer;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeInitialize()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    sget v0, Lcom/UCMobile/Apollo/MediaPlayer;->b:I

    if-eqz v0, :cond_1

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    const-string v3, "maybe can not play here because of  not set SURFACE_TYPE_PUSH_BUFFERS"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput v0, Lcom/UCMobile/Apollo/MediaPlayer;->b:I

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget v1, Lcom/UCMobile/Apollo/MediaPlayer;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/UCMobile/Apollo/MediaPlayer;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic h(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->w:Lcom/UCMobile/Apollo/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic i(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$OnSeekCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->x:Lcom/UCMobile/Apollo/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method public static isInitSuccess()Z
    .locals 1

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    return v0
.end method

.method static synthetic j(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->y:Lcom/UCMobile/Apollo/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic k(Lcom/UCMobile/Apollo/MediaPlayer;)I
    .locals 1

    iget v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->d:I

    return v0
.end method

.method static synthetic l(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$OnBufferingUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->B:Lcom/UCMobile/Apollo/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic m(Lcom/UCMobile/Apollo/MediaPlayer;)Lcom/UCMobile/Apollo/MediaPlayer$OnCachedPositionsListener;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->D:Lcom/UCMobile/Apollo/MediaPlayer$OnCachedPositionsListener;

    return-object v0
.end method

.method static synthetic n(Lcom/UCMobile/Apollo/MediaPlayer;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->n:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private nativeCallback(III)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->i:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    invoke-virtual {v1, p1, p2, p3}, Lcom/UCMobile/Apollo/MediaPlayer$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer$a;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    goto :goto_0
.end method

.method private nativeCallbackObject(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->m:Lcom/UCMobile/Apollo/MediaPlayer$a;

    invoke-virtual {v1, p1, p2}, Lcom/UCMobile/Apollo/MediaPlayer$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private nativeGetFloatExtValue(ILjava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    invoke-interface {v0, p1, p2}, Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;->getFloatValue(ILjava/lang/String;)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nativeGetIntExtValue(ILjava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_extListener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    invoke-interface {v0, p1, p2}, Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;->getIntValue(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nativeGetStringExtValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    invoke-interface {v0, p1, p2}, Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;->getStringValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/UCMobile/Apollo/MediaPlayer;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->o:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic p(Lcom/UCMobile/Apollo/MediaPlayer;)J
    .locals 2

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    return-wide v0
.end method

.method public static printStackTrace()V
    .locals 1

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->k:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method public static setGlobalOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSetGlobalOption(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "MediaPlayer"

    const-string v1, "error calling _nativeSetGlobalOption"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setGlobalOptions(Ljava/util/Map;)I
    .locals 7

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->setGlobalOption(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gez v0, :cond_2

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    :goto_2
    return v2

    :cond_1
    move v2, v4

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v0, "MediaPlayer"

    const-string v1, "error calling setGlobalOption"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public getAllApolloSetting()Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    return-object v0
.end method

.method public getApolloSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->getOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTrackIndex()I
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_1

    const-string v1, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call getAudioTrackIndex() in error state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetAudioTrackIndex(J)I

    move-result v0

    goto :goto_0
.end method

.method public getAudioTrackTitles()[Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_1

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call getAudioTrackTitles() in error state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetAudioTrackTitles(J)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAverageFPS()F
    .locals 2

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetAverageFPS(J)F

    move-result v0

    goto :goto_0
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->getCurrentVideoFrame(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->i:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->getDuration()I

    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetCurrentPosition(J)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentVideoFrame(II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->l:Z

    if-nez v1, :cond_0

    const-string v1, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentVideoFrame error: _enableCaptureVideoFrame = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/UCMobile/Apollo/MediaPlayer;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v1, :cond_1

    const-string v1, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentVideoFrame error: _initialized = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_2

    const-string v1, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call getCurrentVideoFrame() in error state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->getVideoWidth()I

    move-result p1

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->getVideoHeight()I

    move-result p2

    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {v1, v2, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetCurrentVideoFrame(JLandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getDefaultApolloSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->i:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->a:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->b:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetDuration(J)I

    move-result v1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getFPS()F
    .locals 2

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetFPS(J)F

    move-result v0

    goto :goto_0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {p1, v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetApolloSetting(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "MediaPlayer"

    const-string v2, "error calling getApolloSetting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetOptions(J)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "MediaPlayer"

    const-string v2, "error calling _nativeGetOptions"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPlayableDuration()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->i:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->a:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->b:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetPlayableDuration(J)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "com.UCMobile.Apollo.MediaPlayer"

    const-string v2, "UnsatisfiedLinkError calling _nativeGetPlayableDuration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTrackInfo()[Lcom/UCMobile/Apollo/MediaPlayer$TrackInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->i:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetVideoHeight(J)I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->i:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeGetVideoWidth(J)I

    move-result v0

    goto :goto_0
.end method

.method public isNearlyEndedSeek(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->getDuration()I

    move-result v1

    const v2, 0xea60

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-int/2addr v1, p1

    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->i:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_0

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeIsPlaying(J)Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_1

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call pause() in error state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativePause(J)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->F:Z

    invoke-direct {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->b()V

    goto :goto_0

    :cond_2
    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    const-string v1, "can not pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepare()V
    .locals 7

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->b:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State must be INITIALIZED when calling prepare(). Current state is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->c:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare. Will call nativePrepare() with header "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->t:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    iget-object v3, p0, Lcom/UCMobile/Apollo/MediaPlayer;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/UCMobile/Apollo/MediaPlayer;->t:Ljava/util/Map;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativePrepare(JLjava/lang/String;Ljava/util/Map;Landroid/view/Surface;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->a(I)V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->b:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "State must be INITIALIZED when calling prepare(). Current state is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->c:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepareAsync. Will call nativePrepare() with header "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->t:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    iget-object v3, p0, Lcom/UCMobile/Apollo/MediaPlayer;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/UCMobile/Apollo/MediaPlayer;->t:Ljava/util/Map;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_3

    const/4 v5, 0x0

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativePrepare(JLjava/lang/String;Ljava/util/Map;Landroid/view/Surface;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v6}, Lcom/UCMobile/Apollo/MediaPlayer;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    goto :goto_1
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$3;->a:[I

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1}, Lcom/UCMobile/Apollo/MediaPlayer$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer;->mcontext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/UCMobile/Apollo/MediaPlayer;->mcontext:Landroid/content/Context;

    :cond_1
    invoke-direct {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->a()V

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeRelease(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->stop()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public removeAllApolloSetting()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public removeApolloSetting(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->c:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-direct {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->a()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 3

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call seekto() in error state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->isNearlyEndedSeek(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->f:Z

    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->pause()V

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->z:Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->z:Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/UCMobile/Apollo/MediaPlayer;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->f:Z

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSeekTo(JI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->a(I)V

    goto :goto_0
.end method

.method public setApolloSetting(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/UCMobile/Apollo/MediaPlayer;->setOption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setApolloSettings(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAudioTrack(I)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v2, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v1, v2, :cond_1

    const-string v1, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "call setAudioTrack() in error state:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {v0, v1, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSetAudioTrackIndex(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/UCMobile/Apollo/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->a:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IDLE state expected but current is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, Lcom/UCMobile/Apollo/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->t:Ljava/util/Map;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->b:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->q:Landroid/view/Surface;

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSetSurface(JLandroid/view/Surface;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSetSurface(JLandroid/view/Surface;)V

    goto :goto_0
.end method

.method public setExternalValueListener(Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->uploadApolloInitFailStatIfNeed()V

    return-void
.end method

.method public setInitPlaybackTime(I)V
    .locals 2

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSetInitPlaybackTime(JI)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    const-string v1, "UnsatisfiedLinkError calling setInitPlaybackTime"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Lcom/UCMobile/Apollo/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->B:Lcom/UCMobile/Apollo/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCachedPositionsListener(Lcom/UCMobile/Apollo/MediaPlayer$OnCachedPositionsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->D:Lcom/UCMobile/Apollo/MediaPlayer$OnCachedPositionsListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->z:Lcom/UCMobile/Apollo/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->v:Lcom/UCMobile/Apollo/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/UCMobile/Apollo/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->u:Lcom/UCMobile/Apollo/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/UCMobile/Apollo/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->w:Lcom/UCMobile/Apollo/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/UCMobile/Apollo/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->x:Lcom/UCMobile/Apollo/MediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnTimedTextListener(Lcom/UCMobile/Apollo/MediaPlayer$OnTimedTextListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->A:Lcom/UCMobile/Apollo/MediaPlayer$OnTimedTextListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/UCMobile/Apollo/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->y:Lcom/UCMobile/Apollo/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-wide v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-static {p1, p2, v1, v2}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSetApolloSetting(Ljava/lang/String;Ljava/lang/String;J)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "MediaPlayer"

    const-string v2, "error calling setApolloSetting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)I
    .locals 7

    const/4 v2, 0x0

    const/4 v4, -0x1

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->setOption(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gez v0, :cond_3

    move v0, v2

    :goto_2
    move v3, v0

    goto :goto_1

    :cond_2
    if-nez v3, :cond_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MediaPlayer"

    const-string v1, "error calling setOption"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->E:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->E:Z

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->b()V

    goto :goto_0
.end method

.method public setStatisticHelper(Lcom/UCMobile/Apollo/IVideoStatistic;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>> setStatisticHelper "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->_VideoStatistic:Lcom/UCMobile/Apollo/IVideoStatistic;

    invoke-virtual {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->uploadApolloInitFailStatIfNeed()V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->r:Landroid/view/SurfaceHolder;

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->q:Landroid/view/Surface;

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSetSurface(JLandroid/view/Surface;)V

    goto :goto_0
.end method

.method public setVideoScalingMode(I)V
    .locals 2

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1, p1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSetVideoScalingMode(JI)V

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 4

    const/4 v3, 0x3

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->e:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->e:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->e:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->g:Landroid/os/PowerManager$WakeLock;

    move v2, v0

    :goto_2
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->g:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public start()V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v2, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v3, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v3, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v3, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v3, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v2, v3, :cond_2

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call start() in error state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v3, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    iget-wide v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v2, v3}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeStart(J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v2, v3}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativePlay(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-boolean v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->F:Z

    invoke-direct {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->b()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v3, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-ne v2, v3, :cond_5

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    iget-wide v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v2, v3}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativePlay(J)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v3, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    iget-wide v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v2, v3, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeSeekTo(JI)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v2, v3}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativePlay(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-ne v0, v1, :cond_7

    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeIsPlaying(J)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->a(I)V

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 3

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->printStackTrace()V

    sget-boolean v0, Lcom/UCMobile/Apollo/MediaPlayer;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->g:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->e:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->f:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->d:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    sget-object v1, Lcom/UCMobile/Apollo/MediaPlayer$c;->h:Lcom/UCMobile/Apollo/MediaPlayer$c;

    if-eq v0, v1, :cond_2

    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call stop() in error state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->G:J

    invoke-direct {p0, v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->_nativeStop(J)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->F:Z

    invoke-direct {p0}, Lcom/UCMobile/Apollo/MediaPlayer;->b()V

    if-eqz v0, :cond_3

    sget-object v0, Lcom/UCMobile/Apollo/MediaPlayer$c;->g:Lcom/UCMobile/Apollo/MediaPlayer$c;

    iput-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->p:Lcom/UCMobile/Apollo/MediaPlayer$c;

    goto :goto_0

    :cond_3
    const-string v0, "com.UCMobile.Apollo.MediaPlayer"

    const-string v1, "call nativeStop() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uploadApolloInitFailStatIfNeed()V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->j:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->_VideoStatistic:Lcom/UCMobile/Apollo/IVideoStatistic;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->C:Lcom/UCMobile/Apollo/MediaPlayer$IRequestExternalValueListener;

    if-eqz v0, :cond_4

    const-string v0, "apollo_str"

    invoke-direct {p0, v3, v0}, Lcom/UCMobile/Apollo/MediaPlayer;->nativeGetStringExtValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/UCMobile/Apollo/MediaPlayer$b;

    invoke-direct {v1, v0}, Lcom/UCMobile/Apollo/MediaPlayer$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/UCMobile/Apollo/MediaPlayer$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/UCMobile/Apollo/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/UCMobile/Apollo/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/UCMobile/Apollo/MediaPlayer;->h:Z

    if-nez v2, :cond_0

    const-string v2, "a_load_err"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean v3, Lcom/UCMobile/Apollo/MediaPlayer;->h:Z

    :cond_0
    sget-boolean v1, Lcom/UCMobile/Apollo/MediaPlayer;->i:Z

    if-nez v1, :cond_2

    const-string v1, "a_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "a_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "a_sys"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/UCMobile/Apollo/MediaPlayer;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/UCMobile/Apollo/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "a_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sput-boolean v3, Lcom/UCMobile/Apollo/MediaPlayer;->i:Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/UCMobile/Apollo/MediaPlayer;->_VideoStatistic:Lcom/UCMobile/Apollo/IVideoStatistic;

    invoke-interface {v1, v0}, Lcom/UCMobile/Apollo/IVideoStatistic;->upload(Ljava/util/HashMap;)Z

    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/UCMobile/Apollo/MediaPlayer;->j:I

    :cond_4
    return-void
.end method
