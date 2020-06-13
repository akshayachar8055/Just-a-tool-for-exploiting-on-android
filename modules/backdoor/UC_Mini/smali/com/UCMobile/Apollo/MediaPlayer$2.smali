.class final Lcom/UCMobile/Apollo/MediaPlayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/UCMobile/Apollo/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/UCMobile/Apollo/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/UCMobile/Apollo/MediaPlayer$2;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/UCMobile/Apollo/MediaPlayer$2;->a:Lcom/UCMobile/Apollo/MediaPlayer;

    invoke-static {v0}, Lcom/UCMobile/Apollo/MediaPlayer;->p(Lcom/UCMobile/Apollo/MediaPlayer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/UCMobile/Apollo/MediaPlayer;->a(J)V

    return-void
.end method
