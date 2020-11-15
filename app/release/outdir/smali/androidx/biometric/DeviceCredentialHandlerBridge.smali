.class public Landroidx/biometric/DeviceCredentialHandlerBridge;
.super Ljava/lang/Object;
.source "DeviceCredentialHandlerBridge.java"


# static fields
.field private static final IGNORING_NEXT_RESET:I = 0x1

.field private static final IGNORING_RESET:I = 0x2

.field private static final NOT_IGNORING_RESET:I = 0x0

.field static final RESULT_ERROR:I = 0x2

.field static final RESULT_NONE:I = 0x0

.field static final RESULT_SUCCESS:I = 0x1

.field private static sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;


# instance fields
.field private mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

.field private mBiometricFragment:Landroidx/biometric/BiometricFragment;

.field private mClientThemeResId:I

.field private mConfirmingDeviceCredential:Z

.field private mDeviceCredentialResult:I

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

.field private mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

.field private mIgnoreResetState:I

.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mDeviceCredentialResult:I

    .line 86
    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    return-void
.end method

.method static getInstance()Landroidx/biometric/DeviceCredentialHandlerBridge;
    .locals 1

    .line 95
    sget-object v0, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroidx/biometric/DeviceCredentialHandlerBridge;

    invoke-direct {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;-><init>()V

    sput-object v0, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    .line 98
    :cond_0
    sget-object v0, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    return-object v0
.end method

.method static getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;
    .locals 1

    .line 104
    sget-object v0, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    return-object v0
.end method


# virtual methods
.method getAuthenticationCallback()Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-object v0
.end method

.method getBiometricFragment()Landroidx/biometric/BiometricFragment;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    return-object v0
.end method

.method getClientThemeResId()I
    .locals 1

    .line 117
    iget v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mClientThemeResId:I

    return v0
.end method

.method getDeviceCredentialResult()I
    .locals 1

    .line 233
    iget v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mDeviceCredentialResult:I

    return v0
.end method

.method getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getFingerprintDialogFragment()Landroidx/biometric/FingerprintDialogFragment;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    return-object v0
.end method

.method public getFingerprintHelperFragment()Landroidx/biometric/FingerprintHelperFragment;
    .locals 1

    .line 161
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    return-object v0
.end method

.method getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method ignoreNextReset()V
    .locals 1

    .line 254
    iget v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 255
    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    :cond_0
    return-void
.end method

.method isConfirmingDeviceCredential()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mConfirmingDeviceCredential:Z

    return v0
.end method

.method reset()V
    .locals 2

    .line 283
    iget v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->stopIgnoringReset()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 292
    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mClientThemeResId:I

    const/4 v1, 0x0

    .line 293
    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    .line 294
    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    .line 295
    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    .line 296
    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mExecutor:Ljava/util/concurrent/Executor;

    .line 297
    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 298
    iput-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 299
    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mDeviceCredentialResult:I

    .line 300
    iput-boolean v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mConfirmingDeviceCredential:Z

    .line 302
    sput-object v1, Landroidx/biometric/DeviceCredentialHandlerBridge;->sInstance:Landroidx/biometric/DeviceCredentialHandlerBridge;

    return-void
.end method

.method setBiometricFragment(Landroidx/biometric/BiometricFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    return-void
.end method

.method setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 2

    .line 182
    iput-object p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mExecutor:Ljava/util/concurrent/Executor;

    .line 183
    iput-object p2, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 184
    iput-object p3, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 185
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/biometric/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v0, p2}, Landroidx/biometric/FingerprintDialogFragment;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 189
    iget-object p2, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {p2, p1, p3}, Landroidx/biometric/FingerprintHelperFragment;->setCallback(Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 190
    iget-object p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    iget-object p2, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p2}, Landroidx/biometric/FingerprintDialogFragment;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/biometric/FingerprintHelperFragment;->setHandler(Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setClientThemeResId(I)V
    .locals 0

    .line 112
    iput p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mClientThemeResId:I

    return-void
.end method

.method setConfirmingDeviceCredential(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mConfirmingDeviceCredential:Z

    return-void
.end method

.method setDeviceCredentialResult(I)V
    .locals 0

    .line 228
    iput p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mDeviceCredentialResult:I

    return-void
.end method

.method setFingerprintFragments(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    .line 143
    iput-object p2, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    return-void
.end method

.method startIgnoringReset()V
    .locals 1

    const/4 v0, 0x2

    .line 264
    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    return-void
.end method

.method stopIgnoringReset()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Landroidx/biometric/DeviceCredentialHandlerBridge;->mIgnoreResetState:I

    return-void
.end method
