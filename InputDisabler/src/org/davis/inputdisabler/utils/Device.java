.class public final Lorg/davis/inputdisabler/utils/Device;
.super Ljava/lang/Object;
.source "Device.java"


# direct methods
.method public static enableDevices(Z)V
    .locals 1

    .line 49
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lorg/davis/inputdisabler/utils/Device;->enableDevices(ZZZ)V

    .line 50
    return-void
.end method

.method public static enableDevices(ZZZ)V
    .locals 2

    .line 23
    if-eqz p2, :cond_3

    .line 24
    if-eqz p0, :cond_1

    const-string p2, "/sys/class/sec/sec_touchkey/force_disable"

    invoke-static {p2}, Lorg/davis/inputdisabler/utils/Device;->read_sysfs(Ljava/lang/String;)I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const-string p2, "InputDisablerDevice"

    const-string v0, "Keys are force disabled, not turning on"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 26
    :cond_1
    :goto_0
    :try_start_0
    const-string p2, "/sys/class/input/input1/enabled"

    invoke-static {p2, p0}, Lorg/davis/inputdisabler/utils/Device;->write_sysfs(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_1
    goto :goto_3

    .line 27
    :catch_0
    move-exception p2

    .line 28
    const-string p2, "InputDisablerDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    const-string v1, "enable"

    goto :goto_2

    :cond_2
    const-string v1, "disable"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 36
    :cond_3
    :goto_3
    if-eqz p1, :cond_5

    .line 38
    :try_start_1
    const-string p1, "/sys/class/input/input2/enabled"

    invoke-static {p1, p0}, Lorg/davis/inputdisabler/utils/Device;->write_sysfs(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    goto :goto_5

    .line 39
    :catch_1
    move-exception p1

    .line 40
    const-string p1, "InputDisablerDevice"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_4

    const-string p0, "enable"

    goto :goto_4

    :cond_4
    const-string p0, "disable"

    :goto_4
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " touchscreen"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_5
    :goto_5
    return-void
.end method

.method public static enableKeys(Z)V
    .locals 2

    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/davis/inputdisabler/utils/Device;->enableDevices(ZZZ)V

    .line 58
    return-void
.end method

.method public static enableTouch(Z)V
    .locals 2

    .line 53
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/davis/inputdisabler/utils/Device;->enableDevices(ZZZ)V

    .line 54
    return-void
.end method

.method public static read_sysfs(Ljava/lang/String;)I
    .locals 2

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    const/4 p0, -0x1

    return p0
.end method

.method private static write_sysfs(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 63
    const/4 p0, 0x2

    new-array p0, p0, [B

    .line 64
    if-eqz p1, :cond_0

    const/16 p1, 0x31

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    :goto_0
    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, p0, v1

    .line 65
    const/16 p1, 0xa

    const/4 v1, 0x1

    aput-byte p1, p0, v1

    .line 66
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 67
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 69
    return v1
.end method
