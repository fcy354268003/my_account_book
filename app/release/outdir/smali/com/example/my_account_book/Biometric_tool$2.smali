.class final Lcom/example/my_account_book/Biometric_tool$2;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "Biometric_tool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/my_account_book/Biometric_tool;->showBiometricPrompt(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/example/my_account_book/Biometric_tool$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 30
    invoke-super {p0, p1, p2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 31
    iget-object p1, p0, Lcom/example/my_account_book/Biometric_tool$2;->val$context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8eab\u4efd\u9a8c\u8bc1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 45
    iget-object v0, p0, Lcom/example/my_account_book/Biometric_tool$2;->val$context:Landroid/content/Context;

    const-string v1, "\u8eab\u4efd\u9a8c\u8bc1\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/example/my_account_book/MyToast;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 37
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/example/my_account_book/Biometric_tool$2;->val$context:Landroid/content/Context;

    const-class v1, Lcom/example/my_account_book/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    iget-object v0, p0, Lcom/example/my_account_book/Biometric_tool$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    iget-object p1, p0, Lcom/example/my_account_book/Biometric_tool$2;->val$context:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
