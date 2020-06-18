.class public Landroidx/biometric/BiometricFragment;
.super Landroidx/fragment/app/Fragment;
.source "BiometricFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricFragment"


# instance fields
.field final mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field private mBundle:Landroid/os/Bundle;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field mClientAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

.field mClientExecutor:Ljava/util/concurrent/Executor;

.field mClientNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

.field private final mDeviceCredentialButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mShowing:Z

.field private mStartRespectingCancel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Landroidx/biometric/BiometricFragment$1;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$1;-><init>(Landroidx/biometric/BiometricFragment;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mExecutor:Ljava/util/concurrent/Executor;

    .line 92
    new-instance v0, Landroidx/biometric/BiometricFragment$2;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$2;-><init>(Landroidx/biometric/BiometricFragment;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 159
    new-instance v0, Landroidx/biometric/BiometricFragment$3;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$3;-><init>(Landroidx/biometric/BiometricFragment;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 168
    new-instance v0, Landroidx/biometric/BiometricFragment$4;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricFragment$4;-><init>(Landroidx/biometric/BiometricFragment;)V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mDeviceCredentialButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Landroidx/biometric/BiometricFragment;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/biometric/BiometricFragment;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 0

    .line 54
    invoke-static {p0}, Landroidx/biometric/BiometricFragment;->unwrapCryptoObject(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroidx/biometric/BiometricFragment;)Landroid/os/Bundle;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$402(Landroidx/biometric/BiometricFragment;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Landroidx/biometric/BiometricFragment;->mStartRespectingCancel:Z

    return p1
.end method

.method static newInstance()Landroidx/biometric/BiometricFragment;
    .locals 1

    .line 183
    new-instance v0, Landroidx/biometric/BiometricFragment;

    invoke-direct {v0}, Landroidx/biometric/BiometricFragment;-><init>()V

    return-object v0
.end method

.method private static unwrapCryptoObject(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroidx/biometric/BiometricPrompt$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 324
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 325
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 326
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 327
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 328
    new-instance v0, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method

.method private static wrapCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 338
    :cond_0
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 340
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 341
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 342
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 343
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 344
    :cond_2
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 345
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 346
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->isDeviceCredentialAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-boolean v0, p0, Landroidx/biometric/BiometricFragment;->mStartRespectingCancel:Z

    if-nez v0, :cond_0

    const-string v0, "BiometricFragment"

    const-string v1, "Ignoring fast cancel signal"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 218
    :cond_1
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->cleanup()V

    return-void
.end method

.method cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Landroidx/biometric/BiometricFragment;->mShowing:Z

    .line 226
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 230
    :cond_0
    invoke-static {v0}, Landroidx/biometric/Utils;->maybeFinishHandler(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method isDeviceCredentialAllowed()Z
    .locals 3

    .line 249
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "allow_device_credential"

    .line 250
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 256
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 241
    invoke-virtual {p0, p1}, Landroidx/biometric/BiometricFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 264
    iget-boolean v0, p0, Landroidx/biometric/BiometricFragment;->mShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string v2, "negative_text"

    .line 265
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 267
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 268
    invoke-virtual {p0}, Landroidx/biometric/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v4, "subtitle"

    .line 270
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v4, "description"

    .line 271
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 273
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v3, "allow_device_credential"

    .line 274
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-gt v3, v4, :cond_0

    .line 278
    sget v3, Landroidx/biometric/R$string;->confirm_device_credential_password:I

    invoke-virtual {p0, v3}, Landroidx/biometric/BiometricFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/biometric/BiometricFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 279
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->mDeviceCredentialButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    .line 281
    :cond_0
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 282
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 287
    :cond_1
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_2

    .line 288
    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v4, "require_confirmation"

    .line 289
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 288
    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 290
    invoke-virtual {v0, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_2
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 294
    iput-boolean v2, p0, Landroidx/biometric/BiometricFragment;->mStartRespectingCancel:Z

    .line 295
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroidx/biometric/BiometricFragment$5;

    invoke-direct {v3, p0}, Landroidx/biometric/BiometricFragment$5;-><init>(Landroidx/biometric/BiometricFragment;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    .line 306
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroidx/biometric/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 307
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    if-nez v0, :cond_4

    .line 308
    iget-object v0, p0, Landroidx/biometric/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_1

    .line 311
    :cond_4
    iget-object v2, p0, Landroidx/biometric/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricFragment;->wrapCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v0

    iget-object v3, p0, Landroidx/biometric/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Landroidx/biometric/BiometricFragment;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroidx/biometric/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 315
    :cond_5
    :goto_1
    iput-boolean v1, p0, Landroidx/biometric/BiometricFragment;->mShowing:Z

    .line 316
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 245
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    .line 192
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 193
    iput-object p2, p0, Landroidx/biometric/BiometricFragment;->mClientNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 194
    iput-object p3, p0, Landroidx/biometric/BiometricFragment;->mClientAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 0

    .line 202
    iput-object p1, p0, Landroidx/biometric/BiometricFragment;->mCryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    return-void
.end method
