.class final Lcom/uc/browser/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private synthetic a:Lcom/uc/browser/ActivityCamera;


# direct methods
.method constructor <init>(Lcom/uc/browser/ActivityCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/uc/browser/c;->a:Lcom/uc/browser/ActivityCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x40e00000    # 7.0f

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/uc/browser/c;->a:Lcom/uc/browser/ActivityCamera;

    invoke-static {v0, v3}, Lcom/uc/browser/ActivityCamera;->a(Lcom/uc/browser/ActivityCamera;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uc/browser/c;->a:Lcom/uc/browser/ActivityCamera;

    invoke-static {v0, v4}, Lcom/uc/browser/ActivityCamera;->a(Lcom/uc/browser/ActivityCamera;Z)Z

    goto :goto_0
.end method
