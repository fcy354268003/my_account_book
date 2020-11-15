.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V
    .locals 0

    .line 1304
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1307
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1310
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    .line 1311
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1312
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

    if-eqz p1, :cond_1

    .line 1313
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->val$notify:Z

    if-eqz p1, :cond_2

    .line 1314
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;->onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 1316
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-nez p1, :cond_2

    .line 1317
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 1319
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_3

    .line 1320
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1322
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of p1, p1, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz p1, :cond_5

    .line 1323
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->val$notify:Z

    if-eqz p1, :cond_4

    .line 1324
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 1326
    :cond_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V

    :cond_5
    return-void
.end method
