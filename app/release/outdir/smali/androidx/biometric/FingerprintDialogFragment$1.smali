.class Landroidx/biometric/FingerprintDialogFragment$1;
.super Ljava/lang/Object;
.source "FingerprintDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/FingerprintDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/biometric/FingerprintDialogFragment;


# direct methods
.method constructor <init>(Landroidx/biometric/FingerprintDialogFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$1;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 157
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    const-string v1, "FingerprintDialogFrag"

    if-ge p2, v0, :cond_0

    const-string p1, "Failed to check device credential. Not supported prior to L."

    .line 158
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_0
    iget-object p2, p0, Landroidx/biometric/FingerprintDialogFragment$1;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    .line 164
    invoke-virtual {p2}, Landroidx/biometric/FingerprintDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$1;->this$0:Landroidx/biometric/FingerprintDialogFragment;

    invoke-static {v0}, Landroidx/biometric/FingerprintDialogFragment;->access$500(Landroidx/biometric/FingerprintDialogFragment;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Landroidx/biometric/FingerprintDialogFragment$1$1;

    invoke-direct {v2, p0, p1}, Landroidx/biometric/FingerprintDialogFragment$1$1;-><init>(Landroidx/biometric/FingerprintDialogFragment$1;Landroid/content/DialogInterface;)V

    .line 163
    invoke-static {v1, p2, v0, v2}, Landroidx/biometric/Utils;->launchDeviceCredentialConfirmation(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
