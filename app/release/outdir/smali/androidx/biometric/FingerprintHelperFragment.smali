.class public Landroidx/biometric/FingerprintHelperFragment;
.super Landroidx/fragment/app/Fragment;
.source "FingerprintHelperFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/FingerprintHelperFragment$MessageRouter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintHelperFrag"

.field static final USER_CANCELED_FROM_NEGATIVE_BUTTON:I = 0x2

.field static final USER_CANCELED_FROM_NONE:I = 0x0

.field static final USER_CANCELED_FROM_USER:I = 0x1


# instance fields
.field final mAuthenticationCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

.field private mCanceledFrom:I

.field private mCancellationSignal:Landroidx/core/os/CancellationSignal;

.field mClientAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

.field mExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mMessageRouter:Landroidx/biometric/FingerprintHelperFragment$MessageRouter;

.field private mShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Landroidx/biometric/FingerprintHelperFragment$1;

    invoke-direct {v0, p0}, Landroidx/biometric/FingerprintHelperFragment$1;-><init>(Landroidx/biometric/FingerprintHelperFragment;)V

    iput-object v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mAuthenticationCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$000(Landroidx/biometric/FingerprintHelperFragment;)Landroidx/biometric/FingerprintHelperFragment$MessageRouter;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/biometric/FingerprintHelperFragment;->mMessageRouter:Landroidx/biometric/FingerprintHelperFragment$MessageRouter;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/biometric/FingerprintHelperFragment;)I
    .locals 0

    .line 48
    iget p0, p0, Landroidx/biometric/FingerprintHelperFragment;->mCanceledFrom:I

    return p0
.end method

.method static synthetic access$200(Landroidx/biometric/FingerprintHelperFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/biometric/FingerprintHelperFragment;->cleanup()V

    return-void
.end method

.method static synthetic access$300(Landroidx/biometric/FingerprintHelperFragment;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/biometric/FingerprintHelperFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/biometric/FingerprintHelperFragment;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/biometric/FingerprintHelperFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 0

    .line 48
    invoke-static {p0}, Landroidx/biometric/FingerprintHelperFragment;->unwrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0
.end method

.method private cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mShowing:Z

    .line 311
    invoke-virtual {p0}, Landroidx/biometric/FingerprintHelperFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Landroidx/biometric/FingerprintHelperFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0}, Landroidx/biometric/FingerprintHelperFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 316
    :cond_0
    invoke-static {}, Landroidx/biometric/Utils;->isConfirmingDeviceCredential()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    invoke-static {v0}, Landroidx/biometric/Utils;->maybeFinishHandler(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    return-void
.end method

.method private getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintHelperFrag"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget p2, Landroidx/biometric/R$string;->default_error_msg:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 358
    :pswitch_0
    sget p2, Landroidx/biometric/R$string;->fingerprint_error_hw_not_present:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 362
    :pswitch_1
    sget p2, Landroidx/biometric/R$string;->fingerprint_error_no_fingerprints:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 364
    :pswitch_2
    sget p2, Landroidx/biometric/R$string;->fingerprint_error_user_canceled:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 360
    :cond_0
    sget p2, Landroidx/biometric/R$string;->fingerprint_error_hw_not_available:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePreAuthenticationErrors(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)Z
    .locals 2

    .line 328
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/16 p1, 0xc

    .line 329
    invoke-direct {p0, p1}, Landroidx/biometric/FingerprintHelperFragment;->sendErrorToClient(I)V

    return v1

    .line 331
    :cond_0
    invoke-virtual {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0xb

    .line 332
    invoke-direct {p0, p1}, Landroidx/biometric/FingerprintHelperFragment;->sendErrorToClient(I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static newInstance()Landroidx/biometric/FingerprintHelperFragment;
    .locals 1

    .line 222
    new-instance v0, Landroidx/biometric/FingerprintHelperFragment;

    invoke-direct {v0}, Landroidx/biometric/FingerprintHelperFragment;-><init>()V

    return-object v0
.end method

.method private sendErrorToClient(I)V
    .locals 2

    .line 345
    invoke-static {}, Landroidx/biometric/Utils;->isConfirmingDeviceCredential()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mClientAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    iget-object v1, p0, Landroidx/biometric/FingerprintHelperFragment;->mContext:Landroid/content/Context;

    .line 347
    invoke-direct {p0, v1, p1}, Landroidx/biometric/FingerprintHelperFragment;->getErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {v0, p1, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private static unwrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 376
    :cond_0
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 377
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 378
    :cond_1
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 379
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 380
    :cond_2
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 381
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method private static wrapCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 393
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 394
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 395
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 396
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 397
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 398
    :cond_2
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 399
    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 400
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method cancel(I)V
    .locals 1

    .line 295
    iput p1, p0, Landroidx/biometric/FingerprintHelperFragment;->mCanceledFrom:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    .line 297
    invoke-direct {p0, p1}, Landroidx/biometric/FingerprintHelperFragment;->sendErrorToClient(I)V

    .line 300
    :cond_0
    iget-object p1, p0, Landroidx/biometric/FingerprintHelperFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 303
    :cond_1
    invoke-direct {p0}, Landroidx/biometric/FingerprintHelperFragment;->cleanup()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, p1}, Landroidx/biometric/FingerprintHelperFragment;->setRetainInstance(Z)V

    .line 237
    invoke-virtual {p0}, Landroidx/biometric/FingerprintHelperFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 245
    iget-boolean v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mShowing:Z

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mCanceledFrom:I

    .line 248
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mContext:Landroid/content/Context;

    .line 249
    invoke-static {v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 250
    invoke-direct {p0, v1}, Landroidx/biometric/FingerprintHelperFragment;->handlePreAuthenticationErrors(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mMessageRouter:Landroidx/biometric/FingerprintHelperFragment$MessageRouter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/biometric/FingerprintHelperFragment$MessageRouter;->sendMessage(I)V

    .line 252
    invoke-direct {p0}, Landroidx/biometric/FingerprintHelperFragment;->cleanup()V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    .line 255
    invoke-static {v0}, Landroidx/biometric/FingerprintHelperFragment;->wrapCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/biometric/FingerprintHelperFragment;->mCancellationSignal:Landroidx/core/os/CancellationSignal;

    iget-object v5, p0, Landroidx/biometric/FingerprintHelperFragment;->mAuthenticationCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    const/4 v6, 0x0

    .line 254
    invoke-virtual/range {v1 .. v6}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mShowing:Z

    .line 263
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method setCallback(Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    .line 272
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment;->mExecutor:Ljava/util/concurrent/Executor;

    .line 273
    iput-object p2, p0, Landroidx/biometric/FingerprintHelperFragment;->mClientAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 0

    .line 230
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 1

    .line 280
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment;->mHandler:Landroid/os/Handler;

    .line 281
    new-instance p1, Landroidx/biometric/FingerprintHelperFragment$MessageRouter;

    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Landroidx/biometric/FingerprintHelperFragment$MessageRouter;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment;->mMessageRouter:Landroidx/biometric/FingerprintHelperFragment$MessageRouter;

    return-void
.end method

.method setMessageRouter(Landroidx/biometric/FingerprintHelperFragment$MessageRouter;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment;->mMessageRouter:Landroidx/biometric/FingerprintHelperFragment$MessageRouter;

    return-void
.end method
