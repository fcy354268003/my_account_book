.class Landroidx/biometric/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isConfirmingDeviceCredential()Z
    .locals 1

    .line 248
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->isConfirmingDeviceCredential()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isModelInPrefixList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 234
    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p0, v1

    .line 235
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static isUnknownError(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static isVendorInList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 212
    array-length p2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p0, v1

    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static launchDeviceCredentialConfirmation(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 4

    .line 84
    instance-of v0, p1, Landroidx/biometric/DeviceCredentialHandlerActivity;

    if-nez v0, :cond_0

    const-string p1, "Failed to check device credential. Parent handler not found."

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    check-cast p1, Landroidx/biometric/DeviceCredentialHandlerActivity;

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 94
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    goto :goto_0

    :cond_1
    const-string v0, "keyguard"

    .line 96
    invoke-virtual {p1, v0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v1, v0, Landroid/app/KeyguardManager;

    if-nez v1, :cond_2

    const-string p2, "Failed to check device credential. KeyguardManager not found."

    .line 98
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1, v2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->handleDeviceCredentialResult(I)V

    return-void

    .line 102
    :cond_2
    check-cast v0, Landroid/app/KeyguardManager;

    :goto_0
    if-nez v0, :cond_3

    const-string p2, "Failed to check device credential. KeyguardManager was null."

    .line 106
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1, v2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->handleDeviceCredentialResult(I)V

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const-string v1, "title"

    .line 115
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v3, "subtitle"

    .line 116
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_4
    move-object p2, v1

    .line 123
    :goto_1
    invoke-virtual {v0, v1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_5

    const-string p2, "Failed to check device credential. Got null intent from Keyguard."

    .line 125
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p1, v2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->handleDeviceCredentialResult(I)V

    return-void

    .line 131
    :cond_5
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstance()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object p0

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setConfirmingDeviceCredential(Z)V

    .line 133
    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->startIgnoringReset()V

    if-eqz p3, :cond_6

    .line 137
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_6
    const/high16 p0, 0x8080000

    .line 141
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, p2, v2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static maybeFinishHandler(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 151
    instance-of v0, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method static shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 194
    :cond_0
    sget v0, Landroidx/biometric/R$array;->hide_fingerprint_instantly_prefixes:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/Utils;->isModelInPrefixList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static shouldUseFingerprintForCrypto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_0

    return v1

    .line 175
    :cond_0
    sget v0, Landroidx/biometric/R$array;->crypto_fingerprint_fallback_vendors:I

    invoke-static {p0, p1, v0}, Landroidx/biometric/Utils;->isVendorInList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Landroidx/biometric/R$array;->crypto_fingerprint_fallback_prefixes:I

    .line 176
    invoke-static {p0, p2, p1}, Landroidx/biometric/Utils;->isModelInPrefixList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
