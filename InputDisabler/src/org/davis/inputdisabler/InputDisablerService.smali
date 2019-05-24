.class public Lorg/davis/inputdisabler/InputDisablerService;
.super Landroid/app/Service;
.source "InputDisablerService.java"


# instance fields
.field mScreenStateReceiver:Lorg/davis/inputdisabler/ScreenStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 39
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 46
    iget-object v0, p0, Lorg/davis/inputdisabler/InputDisablerService;->mScreenStateReceiver:Lorg/davis/inputdisabler/ScreenStateReceiver;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/davis/inputdisabler/InputDisablerService;->mScreenStateReceiver:Lorg/davis/inputdisabler/ScreenStateReceiver;

    invoke-virtual {p0, v0}, Lorg/davis/inputdisabler/InputDisablerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 24
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 25
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string p2, "android.intent.action.DOZE_PULSE_STARTING"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    const-string p2, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    new-instance p2, Lorg/davis/inputdisabler/ScreenStateReceiver;

    invoke-direct {p2}, Lorg/davis/inputdisabler/ScreenStateReceiver;-><init>()V

    iput-object p2, p0, Lorg/davis/inputdisabler/InputDisablerService;->mScreenStateReceiver:Lorg/davis/inputdisabler/ScreenStateReceiver;

    .line 32
    iget-object p2, p0, Lorg/davis/inputdisabler/InputDisablerService;->mScreenStateReceiver:Lorg/davis/inputdisabler/ScreenStateReceiver;

    invoke-virtual {p0, p2, p1}, Lorg/davis/inputdisabler/InputDisablerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    const/4 p1, 0x1

    return p1
.end method
