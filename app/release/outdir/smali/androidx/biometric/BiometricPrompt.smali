.class public Landroidx/biometric/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroidx/biometric/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$PromptInfo;,
        Landroidx/biometric/BiometricPrompt$AuthenticationCallback;,
        Landroidx/biometric/BiometricPrompt$AuthenticationResult;,
        Landroidx/biometric/BiometricPrompt$CryptoObject;
    }
.end annotation


# static fields
.field static final BIOMETRIC_FRAGMENT_TAG:Ljava/lang/String; = "BiometricFragment"

.field private static final DEBUG:Z = false

.field private static final DEBUG_FORCE_FINGERPRINT:Z = false

.field private static final DELAY_MILLIS:I = 0x1f4

.field static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "FingerprintDialogFragment"

.field static final FINGERPRINT_HELPER_FRAGMENT_TAG:Ljava/lang/String; = "FingerprintHelperFragment"

.field static final KEY_ALLOW_DEVICE_CREDENTIAL:Ljava/lang/String; = "allow_device_credential"

.field static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field static final KEY_HANDLING_DEVICE_CREDENTIAL_RESULT:Ljava/lang/String; = "handling_device_credential_result"

.field static final KEY_NEGATIVE_TEXT:Ljava/lang/String; = "negative_text"

.field static final KEY_REQUIRE_CONFIRMATION:Ljava/lang/String; = "require_confirmation"

.field static final KEY_SUBTITLE:Ljava/lang/String; = "subtitle"

.field static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "BiometricPromptCompat"


# instance fields
.field private final mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

.field private mBiometricFragment:Landroidx/biometric/BiometricFragment;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

.field private mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field private mIsHandlingDeviceCredential:Z

.field private final mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

.field private final mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPausedOnce:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 1

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Landroidx/biometric/BiometricPrompt$1;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$1;-><init>(Landroidx/biometric/BiometricPrompt;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 496
    new-instance v0, Landroidx/biometric/BiometricPrompt$2;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$2;-><init>(Landroidx/biometric/BiometricPrompt;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 626
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFragment:Landroidx/fragment/app/Fragment;

    .line 627
    iput-object p3, p0, Landroidx/biometric/BiometricPrompt;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 628
    iput-object p2, p0, Landroidx/biometric/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 630
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    .line 624
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 618
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FragmentActivity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V
    .locals 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Landroidx/biometric/BiometricPrompt$1;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$1;-><init>(Landroidx/biometric/BiometricPrompt;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 496
    new-instance v0, Landroidx/biometric/BiometricPrompt$2;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$2;-><init>(Landroidx/biometric/BiometricPrompt;)V

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 592
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 593
    iput-object p3, p0, Landroidx/biometric/BiometricPrompt;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    .line 594
    iput-object p2, p0, Landroidx/biometric/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    .line 596
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->mLifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    .line 590
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthenticationCallback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 587
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Executor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FragmentActivity must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 67
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->canUseBiometricFragment()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricFragment;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/biometric/BiometricPrompt;)Landroidx/fragment/app/FragmentManager;
    .locals 0

    .line 67
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Landroidx/biometric/BiometricPrompt;Landroidx/biometric/BiometricFragment;)Landroidx/biometric/BiometricFragment;
    .locals 0

    .line 67
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    return-object p1
.end method

.method static synthetic access$1100(Landroidx/biometric/BiometricPrompt;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1200(Landroidx/biometric/BiometricPrompt;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->maybeHandleDeviceCredentialResult()V

    return-void
.end method

.method static synthetic access$1300(Landroidx/biometric/BiometricPrompt;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricPrompt;->maybeInitHandlerBridge(Z)V

    return-void
.end method

.method static synthetic access$200(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintDialogFragment;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    return-object p0
.end method

.method static synthetic access$302(Landroidx/biometric/BiometricPrompt;Landroidx/biometric/FingerprintDialogFragment;)Landroidx/biometric/FingerprintDialogFragment;
    .locals 0

    .line 67
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintHelperFragment;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    return-object p0
.end method

.method static synthetic access$402(Landroidx/biometric/BiometricPrompt;Landroidx/biometric/FingerprintHelperFragment;)Landroidx/biometric/FingerprintHelperFragment;
    .locals 0

    .line 67
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/biometric/BiometricPrompt;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/biometric/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/biometric/BiometricPrompt;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->isChangingConfigurations()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroidx/biometric/BiometricPrompt;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Landroidx/biometric/BiometricPrompt;->mPausedOnce:Z

    return p0
.end method

.method static synthetic access$702(Landroidx/biometric/BiometricPrompt;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Landroidx/biometric/BiometricPrompt;->mPausedOnce:Z

    return p1
.end method

.method static synthetic access$800(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Landroidx/biometric/BiometricPrompt;->dismissFingerprintFragments(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V

    return-void
.end method

.method static synthetic access$900(Landroidx/biometric/BiometricPrompt;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->maybeResetHandlerBridge()V

    return-void
.end method

.method private authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 7

    .line 667
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo;->isHandlingDeviceCredentialResult()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/biometric/BiometricPrompt;->mIsHandlingDeviceCredential:Z

    .line 668
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 669
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v1

    const-string v2, "BiometricPromptCompat"

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-gt v1, v3, :cond_3

    .line 671
    iget-boolean v1, p0, Landroidx/biometric/BiometricPrompt;->mIsHandlingDeviceCredential:Z

    if-nez v1, :cond_0

    .line 672
    invoke-direct {p0, p1}, Landroidx/biometric/BiometricPrompt;->launchDeviceCredentialHandler(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    return-void

    .line 677
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_3

    if-nez v0, :cond_1

    const-string p1, "Failed to authenticate with device credential. Activity was null."

    .line 679
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 684
    :cond_1
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "Failed to authenticate with device credential. Bridge was null."

    .line 686
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 690
    :cond_2
    invoke-virtual {v1}, Landroidx/biometric/DeviceCredentialHandlerBridge;->isConfirmingDeviceCredential()Z

    move-result v1

    if-nez v1, :cond_3

    .line 691
    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Landroidx/biometric/BiometricManager;->canAuthenticate()I

    move-result v1

    if-eqz v1, :cond_3

    .line 694
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    .line 693
    invoke-static {v2, v0, p1, p2}, Landroidx/biometric/Utils;->launchDeviceCredentialConfirmation(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void

    .line 702
    :cond_3
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "Not launching prompt. authenticate() called after onSaveInstanceState()"

    .line 704
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 708
    :cond_4
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x0

    .line 709
    iput-boolean v2, p0, Landroidx/biometric/BiometricPrompt;->mPausedOnce:Z

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 712
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 713
    invoke-static {v0, v3, v4}, Landroidx/biometric/Utils;->shouldUseFingerprintForCrypto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_8

    .line 716
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->canUseBiometricFragment()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "BiometricFragment"

    .line 718
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Landroidx/biometric/BiometricFragment;

    if-eqz v2, :cond_6

    .line 720
    iput-object v2, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    goto :goto_0

    .line 722
    :cond_6
    invoke-static {}, Landroidx/biometric/BiometricFragment;->newInstance()Landroidx/biometric/BiometricFragment;

    move-result-object v3

    iput-object v3, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    .line 724
    :goto_0
    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    iget-object v4, p0, Landroidx/biometric/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Landroidx/biometric/BiometricPrompt;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Landroidx/biometric/BiometricPrompt;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/biometric/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 728
    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    invoke-virtual {v3, p2}, Landroidx/biometric/BiometricFragment;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    .line 729
    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    invoke-virtual {p2, p1}, Landroidx/biometric/BiometricFragment;->setBundle(Landroid/os/Bundle;)V

    if-nez v2, :cond_7

    .line 734
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 735
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_4

    .line 736
    :cond_7
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    invoke-virtual {p1}, Landroidx/biometric/BiometricFragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 738
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 739
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_4

    :cond_8
    const-string v2, "FingerprintDialogFragment"

    .line 744
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v3, :cond_9

    .line 747
    iput-object v3, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    goto :goto_1

    .line 749
    :cond_9
    invoke-static {}, Landroidx/biometric/FingerprintDialogFragment;->newInstance()Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v4

    iput-object v4, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    .line 752
    :goto_1
    iget-object v4, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    iget-object v5, p0, Landroidx/biometric/BiometricPrompt;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5}, Landroidx/biometric/FingerprintDialogFragment;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 753
    iget-object v4, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {v4, p1}, Landroidx/biometric/FingerprintDialogFragment;->setBundle(Landroid/os/Bundle;)V

    if-eqz v0, :cond_b

    .line 755
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/biometric/Utils;->shouldHideFingerprintDialog(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    if-nez v3, :cond_a

    .line 757
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p1, v1, v2}, Landroidx/biometric/FingerprintDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 758
    :cond_a
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p1}, Landroidx/biometric/FingerprintDialogFragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 759
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 760
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_b
    :goto_2
    const-string p1, "FingerprintHelperFragment"

    .line 766
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/biometric/FingerprintHelperFragment;

    if-eqz v0, :cond_c

    .line 769
    iput-object v0, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    goto :goto_3

    .line 771
    :cond_c
    invoke-static {}, Landroidx/biometric/FingerprintHelperFragment;->newInstance()Landroidx/biometric/FingerprintHelperFragment;

    move-result-object v2

    iput-object v2, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    .line 774
    :goto_3
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Landroidx/biometric/BiometricPrompt;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v2, v3, v4}, Landroidx/biometric/FingerprintHelperFragment;->setCallback(Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 775
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    invoke-virtual {v2}, Landroidx/biometric/FingerprintDialogFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 776
    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {v3, v2}, Landroidx/biometric/FingerprintHelperFragment;->setHandler(Landroid/os/Handler;)V

    .line 777
    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {v3, p2}, Landroidx/biometric/FingerprintHelperFragment;->setCryptoObject(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    const/4 p2, 0x6

    .line 779
    invoke-virtual {v2, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v3, 0x1f4

    .line 778
    invoke-virtual {v2, p2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez v0, :cond_d

    .line 785
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    .line 786
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 787
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_4

    .line 788
    :cond_d
    iget-object p1, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {p1}, Landroidx/biometric/FingerprintHelperFragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 790
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 791
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 797
    :cond_e
    :goto_4
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private static canUseBiometricFragment()Z
    .locals 2

    .line 973
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static dismissFingerprintFragments(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V
    .locals 0

    .line 983
    invoke-virtual {p0}, Landroidx/biometric/FingerprintDialogFragment;->dismissSafely()V

    const/4 p0, 0x0

    .line 984
    invoke-virtual {p1, p0}, Landroidx/biometric/FingerprintHelperFragment;->cancel(I)V

    return-void
.end method

.method private getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 956
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 964
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mFragment:Landroidx/fragment/app/Fragment;

    .line 965
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private isChangingConfigurations()Z
    .locals 1

    .line 950
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchDeviceCredentialHandler(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 3

    .line 844
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 850
    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt;->maybeInitHandlerBridge(Z)V

    .line 854
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "handling_device_credential_result"

    .line 855
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 857
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroidx/biometric/DeviceCredentialHandlerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "prompt_info_bundle"

    .line 858
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 859
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "BiometricPromptCompat"

    const-string v0, "Failed to start handler activity. Parent activity was null or finishing."

    .line 846
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private maybeHandleDeviceCredentialResult()V
    .locals 4

    .line 910
    iget-boolean v0, p0, Landroidx/biometric/BiometricPrompt;->mIsHandlingDeviceCredential:Z

    if-eqz v0, :cond_0

    return-void

    .line 915
    :cond_0
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 917
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getDeviceCredentialResult()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 928
    :cond_1
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 929
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Landroidx/biometric/R$string;->generic_error_user_canceled:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 930
    :goto_0
    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 932
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->stopIgnoringReset()V

    .line 933
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->reset()V

    goto :goto_1

    .line 920
    :cond_3
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    new-instance v2, Landroidx/biometric/BiometricPrompt$AuthenticationResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/biometric/BiometricPrompt$AuthenticationResult;-><init>(Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    invoke-virtual {v1, v2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 922
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->stopIgnoringReset()V

    .line 923
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->reset()V

    :cond_4
    :goto_1
    return-void
.end method

.method private maybeInitHandlerBridge(Z)V
    .locals 4

    .line 872
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    return-void

    .line 876
    :cond_0
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstance()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    .line 877
    iget-boolean v1, p0, Landroidx/biometric/BiometricPrompt;->mIsHandlingDeviceCredential:Z

    if-eqz v1, :cond_2

    .line 878
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->canUseBiometricFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    if-eqz v1, :cond_1

    .line 879
    invoke-virtual {v0, v1}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setBiometricFragment(Landroidx/biometric/BiometricFragment;)V

    goto :goto_0

    .line 880
    :cond_1
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    if-eqz v2, :cond_3

    .line 881
    invoke-virtual {v0, v1, v2}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setFingerprintFragments(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V

    goto :goto_0

    .line 886
    :cond_2
    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 889
    :try_start_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 890
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v3, 0x0

    .line 889
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 890
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v1

    .line 889
    invoke-virtual {v0, v1}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setClientThemeResId(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BiometricPromptCompat"

    const-string v3, "Failed to register client theme to bridge"

    .line 892
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt;->mAuthenticationCallback:Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/biometric/DeviceCredentialHandlerBridge;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    if-eqz p1, :cond_4

    .line 899
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->startIgnoringReset()V

    :cond_4
    return-void
.end method

.method private maybeResetHandlerBridge()V
    .locals 1

    .line 942
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->reset()V

    :cond_0
    return-void
.end method


# virtual methods
.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 663
    invoke-direct {p0, p1, v0}, Landroidx/biometric/BiometricPrompt;->authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void

    .line 661
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PromptInfo can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 646
    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$PromptInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "allow_device_credential"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    invoke-direct {p0, p1, p2}, Landroidx/biometric/BiometricPrompt;->authenticateInternal(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void

    .line 647
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Device credential not supported with crypto"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 645
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CryptoObject can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 643
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PromptInfo can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancelAuthentication()V
    .locals 2

    .line 809
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->canUseBiometricFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mBiometricFragment:Landroidx/biometric/BiometricFragment;

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->cancel()V

    .line 813
    iget-boolean v0, p0, Landroidx/biometric/BiometricPrompt;->mIsHandlingDeviceCredential:Z

    if-nez v0, :cond_2

    .line 815
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 816
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getBiometricFragment()Landroidx/biometric/BiometricFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 817
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getBiometricFragment()Landroidx/biometric/BiometricFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->cancel()V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintHelperFragment:Landroidx/biometric/FingerprintHelperFragment;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt;->mFingerprintDialogFragment:Landroidx/biometric/FingerprintDialogFragment;

    if-eqz v1, :cond_1

    .line 822
    invoke-static {v1, v0}, Landroidx/biometric/BiometricPrompt;->dismissFingerprintFragments(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V

    .line 826
    :cond_1
    iget-boolean v0, p0, Landroidx/biometric/BiometricPrompt;->mIsHandlingDeviceCredential:Z

    if-nez v0, :cond_2

    .line 828
    invoke-static {}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getInstanceIfNotNull()Landroidx/biometric/DeviceCredentialHandlerBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 829
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getFingerprintDialogFragment()Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 830
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getFingerprintHelperFragment()Landroidx/biometric/FingerprintHelperFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 831
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getFingerprintDialogFragment()Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v1

    .line 832
    invoke-virtual {v0}, Landroidx/biometric/DeviceCredentialHandlerBridge;->getFingerprintHelperFragment()Landroidx/biometric/FingerprintHelperFragment;

    move-result-object v0

    .line 831
    invoke-static {v1, v0}, Landroidx/biometric/BiometricPrompt;->dismissFingerprintFragments(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
