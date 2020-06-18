.class public Landroidx/biometric/BiometricPrompt$PromptInfo;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromptInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;
    }
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method getBundle()Landroid/os/Bundle;
    .locals 1

    .line 375
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 399
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 2

    .line 407
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "negative_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .line 391
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 383
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isConfirmationRequired()Z
    .locals 2

    .line 414
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "require_confirmation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeviceCredentialAllowed()Z
    .locals 2

    .line 421
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "allow_device_credential"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isHandlingDeviceCredentialResult()Z
    .locals 2

    .line 431
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$PromptInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "handling_device_credential_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
