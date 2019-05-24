.class public Lorg/davis/inputdisabler/ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenStateReceiver.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static mScreenState:I


# instance fields
.field mDozeDisable:Landroid/os/Handler;

.field mSensor:Landroid/hardware/Sensor;

.field mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput v0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleScreenOn(Z)V
    .locals 1

    .line 187
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 188
    invoke-static {v0}, Lorg/davis/inputdisabler/utils/Device;->enableKeys(Z)V

    .line 191
    :cond_0
    invoke-static {v0}, Lorg/davis/inputdisabler/utils/Device;->enableTouch(Z)V

    .line 192
    const/4 p1, 0x0

    invoke-static {p1}, Lorg/davis/inputdisabler/utils/Device;->enableTouch(Z)V

    .line 193
    invoke-static {v0}, Lorg/davis/inputdisabler/utils/Device;->enableTouch(Z)V

    .line 194
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 182
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 49
    if-nez p2, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tap_to_wake"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ed8ea7f

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_4

    const v4, -0x56ac2893

    if-eq v3, v4, :cond_3

    const v4, -0x4f0a83a5

    if-eq v3, v4, :cond_2

    const v4, 0x42d92bca

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "android.intent.action.DOZE_PULSE_STARTING"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v6

    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v5

    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v2

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    move v1, v7

    :cond_5
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 134
    :pswitch_0
    const-string p2, "phone"

    .line 135
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 137
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p2

    if-eqz p2, :cond_7

    if-eq p2, v6, :cond_6

    goto :goto_2

    .line 139
    :cond_6
    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 140
    iget-object p1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mSensor:Landroid/hardware/Sensor;

    .line 141
    iget-object p1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p2, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, p0, p2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 142
    goto :goto_2

    .line 144
    :cond_7
    iget-object p1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_8

    .line 145
    iget-object p1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 148
    :cond_8
    sget p1, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    if-eq p1, v7, :cond_a

    .line 149
    invoke-direct {p0, v7}, Lorg/davis/inputdisabler/ScreenStateReceiver;->handleScreenOn(Z)V

    .line 151
    sput v7, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    goto :goto_2

    .line 91
    :pswitch_1
    sput v6, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mDozeDisable:Landroid/os/Handler;

    .line 94
    new-instance p1, Lorg/davis/inputdisabler/ScreenStateReceiver$1;

    invoke-direct {p1, p0, v0}, Lorg/davis/inputdisabler/ScreenStateReceiver$1;-><init>(Lorg/davis/inputdisabler/ScreenStateReceiver;I)V

    .line 124
    iget-object p2, p0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mDozeDisable:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    invoke-direct {p0, v2}, Lorg/davis/inputdisabler/ScreenStateReceiver;->handleScreenOn(Z)V

    .line 129
    goto :goto_2

    .line 77
    :pswitch_2
    if-eqz v0, :cond_9

    .line 78
    invoke-static {v2}, Lorg/davis/inputdisabler/utils/Device;->enableKeys(Z)V

    goto :goto_1

    .line 80
    :cond_9
    invoke-static {v2}, Lorg/davis/inputdisabler/utils/Device;->enableDevices(Z)V

    .line 84
    :goto_1
    sput v2, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    .line 85
    goto :goto_2

    .line 68
    :pswitch_3
    invoke-direct {p0, v7}, Lorg/davis/inputdisabler/ScreenStateReceiver;->handleScreenOn(Z)V

    .line 70
    sput v7, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    .line 71
    nop

    .line 157
    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 161
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    .line 165
    invoke-static {v0}, Lorg/davis/inputdisabler/utils/Device;->enableDevices(Z)V

    .line 168
    sput v0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    goto :goto_0

    .line 173
    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/davis/inputdisabler/ScreenStateReceiver;->handleScreenOn(Z)V

    .line 175
    sput p1, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    .line 177
    :goto_0
    return-void
.end method
