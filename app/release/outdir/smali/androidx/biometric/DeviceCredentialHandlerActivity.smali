.class public Landroidx/biometric/DeviceCredentialHandlerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DeviceCredentialHandlerActivity.java"


# static fields
.field static final EXTRA_PROMPT_INFO_BUNDLE:Ljava/lang/String; = "prompt_info_bundle"

.field private static final KEY_DID_CHANGE_CONFIGURATION:Ljava/lang/String; = "did_change_configuration"

.field private static final TAG:Ljava/lang/String; = "DeviceCredentialHandler"


# instance fields
.field private mDidChangeConfiguration:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method handleDeviceCredentialResult(I)V
    .locals 3

    .line 119
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "DeviceCredentialHandler"

    const-string v0, "onActivityResult: Bridge or callback was null!"

    .line 121
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 123
    invoke-virtual {v0, p1}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setDeviceCredentialResult(I)V

    .line 124
    invoke-virtual {v0, v2}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setConfirmingDeviceCredential(Z)V

    .line 125
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->startIgnoringReset()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 128
    invoke-virtual {v0, p1}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setDeviceCredentialResult(I)V

    .line 129
    invoke-virtual {v0, v2}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setConfirmingDeviceCredential(Z)V

    .line 130
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->startIgnoringReset()V

    .line 133
    :goto_0
    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0, p2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->handleDeviceCredentialResult(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 49
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstance()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getClientThemeResId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getClientThemeResId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/biometric/DeviceCredentialHandlerActivity;->setTheme(I)V

    .line 54
    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v3, Landroidx/biometric/R$style;->TransparentStyle:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v3, "did_change_configuration"

    .line 62
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->mDidChangeConfiguration:Z

    .line 63
    iget-boolean p1, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->mDidChangeConfiguration:Z

    if-nez p1, :cond_2

    .line 64
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->stopIgnoringReset()V

    goto :goto_1

    .line 66
    :cond_2
    iput-boolean v1, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->mDidChangeConfiguration:Z

    :goto_1
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Landroidx/biometric/DeviceCredentialHandlerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    sget p1, Landroidx/biometric/R$layout;->device_credential_handler_activity:I

    invoke-virtual {p0, p1}, Landroidx/biometric/DeviceCredentialHandlerActivity;->setContentView(I)V

    .line 72
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getAuthenticationCallback()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 77
    :cond_3
    new-instance p1, Landroidx/biometric/BiometricPrompt;

    .line 78
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getAuthenticationCallback()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    invoke-direct {p1, p0, v1, v0}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 79
    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "prompt_info_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 80
    new-instance v1, Landroidx/biometric/BiometricPrompt$PromptInfo;

    invoke-direct {v1, v0}, Landroidx/biometric/BiometricPrompt$PromptInfo;-><init>(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p1, v1}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    goto :goto_3

    :cond_4
    :goto_2
    const-string p1, "DeviceCredentialHandler"

    const-string v0, "onCreate: Executor and/or callback was null!"

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->finish()V

    :goto_3
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 91
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->ignoreNextReset()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->mDidChangeConfiguration:Z

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-boolean v0, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->mDidChangeConfiguration:Z

    const-string v1, "did_change_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
