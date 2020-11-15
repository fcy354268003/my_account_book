.class Landroidx/biometric/FingerprintHelperFragment$MessageRouter;
.super Ljava/lang/Object;
.source "FingerprintHelperFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/FingerprintHelperFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageRouter"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/biometric/FingerprintHelperFragment$MessageRouter;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method sendMessage(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$MessageRouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$MessageRouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/biometric/FingerprintHelperFragment$MessageRouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
