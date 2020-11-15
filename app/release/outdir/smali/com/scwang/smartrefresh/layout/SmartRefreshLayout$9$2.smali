.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;)V
    .locals 0

    .line 3396
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3399
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 3402
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3403
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_2

    .line 3404
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_1

    .line 3405
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3407
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$animationOnly:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto :goto_0

    .line 3412
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :goto_0
    return-void
.end method
