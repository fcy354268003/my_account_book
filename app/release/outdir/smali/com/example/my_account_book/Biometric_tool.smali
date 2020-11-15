.class public Lcom/example/my_account_book/Biometric_tool;
.super Ljava/lang/Object;
.source "Biometric_tool.java"


# static fields
.field private static executor:Ljava/util/concurrent/Executor;

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/example/my_account_book/Biometric_tool;->handler:Landroid/os/Handler;

    .line 16
    new-instance v0, Lcom/example/my_account_book/Biometric_tool$1;

    invoke-direct {v0}, Lcom/example/my_account_book/Biometric_tool$1;-><init>()V

    sput-object v0, Lcom/example/my_account_book/Biometric_tool;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 14
    sget-object v0, Lcom/example/my_account_book/Biometric_tool;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isBiometricAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 52
    invoke-static {p0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroidx/biometric/BiometricManager;->canAuthenticate()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static showBiometricPrompt(Landroid/content/Context;)V
    .locals 5

    .line 23
    new-instance v0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    const-string v1, "\u4eb2\uff0c\u8981\u6307\u7eb9\u9a8c\u8bc1\u767b\u5f55\u54e6!"

    .line 24
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    .line 25
    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v0

    .line 27
    new-instance v1, Landroidx/biometric/BiometricPrompt;

    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    sget-object v3, Lcom/example/my_account_book/Biometric_tool;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/example/my_account_book/Biometric_tool$2;

    invoke-direct {v4, p0}, Lcom/example/my_account_book/Biometric_tool$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 48
    invoke-virtual {v1, v0}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;)V

    return-void
.end method
