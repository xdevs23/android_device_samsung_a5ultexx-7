.class Lorg/davis/inputdisabler/ScreenStateReceiver$1;
.super Ljava/lang/Object;
.source "ScreenStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/davis/inputdisabler/ScreenStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/davis/inputdisabler/ScreenStateReceiver;

.field final synthetic val$isDoubleTapEnabled:I


# direct methods
.method constructor <init>(Lorg/davis/inputdisabler/ScreenStateReceiver;I)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver$1;->this$0:Lorg/davis/inputdisabler/ScreenStateReceiver;

    iput p2, p0, Lorg/davis/inputdisabler/ScreenStateReceiver$1;->val$isDoubleTapEnabled:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 97
    sget v0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    const/4 v0, 0x0

    sput v0, Lorg/davis/inputdisabler/ScreenStateReceiver;->mScreenState:I

    .line 106
    iget v1, p0, Lorg/davis/inputdisabler/ScreenStateReceiver$1;->val$isDoubleTapEnabled:I

    if-eqz v1, :cond_0

    .line 107
    invoke-static {v0}, Lorg/davis/inputdisabler/utils/Device;->enableKeys(Z)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v0}, Lorg/davis/inputdisabler/utils/Device;->enableDevices(Z)V

    .line 111
    goto :goto_0

    .line 115
    :pswitch_1
    nop

    .line 122
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
