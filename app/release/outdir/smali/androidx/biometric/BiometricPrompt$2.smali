.class Landroidx/biometric/BiometricPrompt$2;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/biometric/BiometricPrompt;


# direct methods
.method constructor <init>(Landroidx/biometric/BiometricPrompt;)V
    .locals 0

    .line 496
    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 499
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$600(Landroidx/biometric/BiometricPrompt;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 504
    :cond_0
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$100(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$100(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->isDeviceCredentialAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$700(Landroidx/biometric/BiometricPrompt;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/biometric/BiometricPrompt;->access$702(Landroidx/biometric/BiometricPrompt;Z)Z

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$100(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->cancel()V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$100(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/biometric/BiometricFragment;->cancel()V

    goto :goto_0

    .line 519
    :cond_3
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$300(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$400(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintHelperFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$300(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->access$400(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintHelperFragment;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/biometric/BiometricPrompt;->access$800(Landroidx/biometric/FingerprintDialogFragment;Landroidx/biometric/FingerprintHelperFragment;)V

    .line 523
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$900(Landroidx/biometric/BiometricPrompt;)V

    return-void
.end method

.method onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 528
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {}, Landroidx/biometric/BiometricPrompt;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    .line 529
    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->access$1000(Landroidx/biometric/BiometricPrompt;)Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "BiometricFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/BiometricFragment;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 528
    :goto_0
    invoke-static {v0, v1}, Landroidx/biometric/BiometricPrompt;->access$102(Landroidx/biometric/BiometricPrompt;Landroidx/biometric/BiometricFragment;)Landroidx/biometric/BiometricFragment;

    .line 535
    invoke-static {}, Landroidx/biometric/BiometricPrompt;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$100(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$100(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricFragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->access$500(Landroidx/biometric/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v2}, Landroidx/biometric/BiometricPrompt;->access$1100(Landroidx/biometric/BiometricPrompt;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    .line 537
    invoke-static {v3}, Landroidx/biometric/BiometricPrompt;->access$200(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object v3

    .line 536
    invoke-virtual {v0, v1, v2, v3}, Landroidx/biometric/BiometricFragment;->setCallbacks(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    goto :goto_1

    .line 539
    :cond_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    .line 540
    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$1000(Landroidx/biometric/BiometricPrompt;)Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FingerprintDialogFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/FingerprintDialogFragment;

    .line 539
    invoke-static {v0, v1}, Landroidx/biometric/BiometricPrompt;->access$302(Landroidx/biometric/BiometricPrompt;Landroidx/biometric/FingerprintDialogFragment;)Landroidx/biometric/FingerprintDialogFragment;

    .line 542
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    .line 543
    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$1000(Landroidx/biometric/BiometricPrompt;)Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FingerprintHelperFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/biometric/FingerprintHelperFragment;

    .line 542
    invoke-static {v0, v1}, Landroidx/biometric/BiometricPrompt;->access$402(Landroidx/biometric/BiometricPrompt;Landroidx/biometric/FingerprintHelperFragment;)Landroidx/biometric/FingerprintHelperFragment;

    .line 548
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$300(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$300(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->access$1100(Landroidx/biometric/BiometricPrompt;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/biometric/FingerprintDialogFragment;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 551
    :cond_2
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$400(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintHelperFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$400(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintHelperFragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->access$500(Landroidx/biometric/BiometricPrompt;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v2}, Landroidx/biometric/BiometricPrompt;->access$200(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/BiometricPrompt$AuthenticationCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/biometric/FingerprintHelperFragment;->setCallback(Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    .line 553
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$300(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$400(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintHelperFragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    .line 555
    invoke-static {v1}, Landroidx/biometric/BiometricPrompt;->access$300(Landroidx/biometric/BiometricPrompt;)Landroidx/biometric/FingerprintDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/biometric/FingerprintDialogFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 554
    invoke-virtual {v0, v1}, Landroidx/biometric/FingerprintHelperFragment;->setHandler(Landroid/os/Handler;)V

    .line 560
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0}, Landroidx/biometric/BiometricPrompt;->access$1200(Landroidx/biometric/BiometricPrompt;)V

    .line 561
    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$2;->this$0:Landroidx/biometric/BiometricPrompt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/biometric/BiometricPrompt;->access$1300(Landroidx/biometric/BiometricPrompt;Z)V

    return-void
.end method
