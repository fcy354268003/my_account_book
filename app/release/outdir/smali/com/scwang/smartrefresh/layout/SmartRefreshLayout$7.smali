.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field final synthetic val$more:I

.field final synthetic val$noMoreData:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;IZZ)V
    .locals 0

    .line 3033
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$more:I

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    iput-boolean p4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3034
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 3037
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->count:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 3038
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v6, :cond_0

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v6, :cond_0

    .line 3040
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto/16 :goto_0

    .line 3041
    :cond_0
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v1, :cond_3

    .line 3048
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3049
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3050
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3059
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v1, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3060
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3062
    :cond_2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3065
    :cond_3
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v1, :cond_4

    .line 3066
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->count:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->count:I

    .line 3067
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$more:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3069
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    return-void

    .line 3072
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v1, :cond_e

    .line 3073
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v1, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto/16 :goto_5

    .line 3076
    :cond_5
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$success:Z

    invoke-interface {v1, v6, v7}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result v1

    .line 3077
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v6, v6, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_6

    .line 3078
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v7, v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v7, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget-boolean v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$success:Z

    invoke-interface {v6, v7, v8}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterFinish(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;Z)V

    :cond_6
    const v6, 0x7fffffff

    if-ge v1, v6, :cond_e

    .line 3082
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v6, :cond_7

    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v6}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    .line 3083
    :goto_1
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget-object v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v7, v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    sub-int v4, v6, v4

    .line 3085
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_9

    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v6, :cond_c

    .line 3086
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 3087
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_b

    .line 3088
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v7, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v7, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 3089
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v7, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    sub-int/2addr v7, v4

    iput v7, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 3090
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v5, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 3091
    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    if-eqz v6, :cond_a

    move v6, v4

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    .line 3092
    :goto_3
    iget-object v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v11, 0x0

    iget v12, v14, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget-object v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v7, v7, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    int-to-float v6, v6

    add-float/2addr v7, v6

    iget-object v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v8, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v13, v7, v8

    const/16 v17, 0x0

    move-wide v7, v15

    move-wide v9, v15

    move-object v2, v14

    move/from16 v14, v17

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$301(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3093
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v11, 0x2

    iget v12, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    add-float v13, v3, v6

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$401(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3095
    :cond_b
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v2, :cond_c

    .line 3096
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 v11, 0x1

    .line 3097
    iget v12, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v13, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    const/4 v14, 0x0

    move-wide v7, v15

    move-wide v9, v15

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$501(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 3098
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    .line 3099
    iput v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 3103
    :cond_c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;

    invoke-direct {v3, v0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;I)V

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v4, :cond_d

    int-to-long v4, v1

    goto :goto_4

    :cond_d
    const-wide/16 v4, 0x0

    :goto_4
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_5
    return-void
.end method
