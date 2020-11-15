.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;,
        Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;
    }
.end annotation


# static fields
.field protected static sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

.field protected static sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

.field protected static sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

.field protected static sRefreshInitializer:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;


# instance fields
.field protected animationRunnable:Ljava/lang/Runnable;

.field protected mAttachedToWindow:Z

.field protected mCurrentVelocity:I

.field protected mDisableContentWhenLoading:Z

.field protected mDisableContentWhenRefresh:Z

.field protected mDragDirection:C

.field protected mDragRate:F

.field protected mEnableAutoLoadMore:Z

.field protected mEnableClipFooterWhenFixedBehind:Z

.field protected mEnableClipHeaderWhenFixedBehind:Z

.field protected mEnableDisallowIntercept:Z

.field protected mEnableFooterFollowWhenNoMoreData:Z

.field protected mEnableFooterTranslationContent:Z

.field protected mEnableHeaderTranslationContent:Z

.field protected mEnableLoadMore:Z

.field protected mEnableLoadMoreWhenContentNotFull:Z

.field protected mEnableNestedScrolling:Z

.field protected mEnableOverScrollBounce:Z

.field protected mEnableOverScrollDrag:Z

.field protected mEnablePreviewInEditMode:Z

.field protected mEnablePureScrollMode:Z

.field protected mEnableRefresh:Z

.field protected mEnableScrollContentWhenLoaded:Z

.field protected mEnableScrollContentWhenRefreshed:Z

.field protected mFalsifyEvent:Landroid/view/MotionEvent;

.field protected mFixedFooterViewId:I

.field protected mFixedHeaderViewId:I

.field protected mFloorBottomDragLayoutRate:F

.field protected mFloorDuration:I

.field protected mFloorOpenLayoutRate:F

.field protected mFooterBackgroundColor:I

.field protected mFooterHeight:I

.field protected mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field protected mFooterInsetStart:I

.field protected mFooterLocked:Z

.field protected mFooterMaxDragRate:F

.field protected mFooterNeedTouchEventWhenLoading:Z

.field protected mFooterNoMoreData:Z

.field protected mFooterNoMoreDataEffective:Z

.field protected mFooterTranslationViewId:I

.field protected mFooterTriggerRate:F

.field protected mHandler:Landroid/os/Handler;

.field protected mHeaderBackgroundColor:I

.field protected mHeaderHeight:I

.field protected mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

.field protected mHeaderInsetStart:I

.field protected mHeaderMaxDragRate:F

.field protected mHeaderNeedTouchEventWhenRefreshing:Z

.field protected mHeaderTranslationViewId:I

.field protected mHeaderTriggerRate:F

.field protected mIsBeingDragged:Z

.field protected mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mLastOpenTime:J

.field protected mLastSpinner:I

.field protected mLastTouchX:F

.field protected mLastTouchY:F

.field protected mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

.field protected mManualFooterTranslationContent:Z

.field protected mManualHeaderTranslationContent:Z

.field protected mManualLoadMore:Z

.field protected mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field protected mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

.field protected mNestedInProgress:Z

.field protected mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

.field protected mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mParentOffsetInWindow:[I

.field protected mPrimaryColors:[I

.field protected mReboundDuration:I

.field protected mReboundInterpolator:Landroid/view/animation/Interpolator;

.field protected mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

.field protected mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field protected mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field protected mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

.field protected mScreenHeightPixels:I

.field protected mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSpinner:I

.field protected mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected mSuperDispatchTouchEvent:Z

.field protected mTotalUnconsumed:I

.field protected mTouchSlop:I

.field protected mTouchSpinner:I

.field protected mTouchX:F

.field protected mTouchY:F

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVerticalPermit:Z

.field protected mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected reboundAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 215
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x12c

    .line 90
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    .line 91
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorOpenLayoutRate:F

    const v1, 0x3e2aaaab

    .line 98
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorBottomDragLayoutRate:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 99
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    const/16 v1, 0x6e

    .line 100
    iput-char v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    .line 105
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    .line 106
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 107
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    const/4 v2, 0x0

    .line 120
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 121
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 122
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 123
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 124
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 125
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 126
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 127
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 128
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 129
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 130
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 131
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 132
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 133
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 134
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 135
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 136
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 137
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 138
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 140
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 142
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 143
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 156
    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    .line 157
    new-instance v4, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v4, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    .line 158
    new-instance v4, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v4, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    .line 163
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 165
    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    const/high16 v4, 0x40200000    # 2.5f

    .line 170
    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 171
    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    .line 172
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    .line 173
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    .line 182
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 188
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 197
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-wide/16 v4, 0x0

    .line 199
    iput-wide v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    .line 201
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 202
    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    .line 209
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    .line 841
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    const/4 v0, 0x0

    .line 876
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 226
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 228
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    .line 229
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    .line 230
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    .line 232
    new-instance v4, Lcom/scwang/smartrefresh/layout/util/SmartUtil;

    sget v5, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->INTERPOLATOR_VISCOUS_FLUID:I

    invoke-direct {v4, v5}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;-><init>(I)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    .line 233
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    .line 234
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMinimumVelocity:I

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMaximumVelocity:I

    const/high16 v0, 0x42700000    # 60.0f

    .line 237
    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 238
    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 240
    sget-object v0, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 242
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_android_clipToPadding:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 245
    :cond_0
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_android_clipChildren:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 249
    :cond_1
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;

    if-eqz v0, :cond_2

    .line 250
    invoke-interface {v0, p1, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;->initialize(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 253
    :cond_2
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDragRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    .line 254
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderMaxDragRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 255
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterMaxDragRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    .line 256
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTriggerRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    .line 257
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTriggerRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    .line 258
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableRefresh:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    .line 259
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlReboundDuration:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    .line 260
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 261
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 262
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 263
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderInsetStart:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    .line 264
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterInsetStart:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    .line 265
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenRefresh:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    .line 266
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlDisableContentWhenLoading:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    .line 267
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    .line 268
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    .line 269
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePreviewInEditMode:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    .line 270
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableAutoLoadMore:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    .line 271
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollBounce:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    .line 272
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnablePureScrollMode:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    .line 273
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenLoaded:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    .line 274
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableScrollContentWhenRefreshed:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    .line 275
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 276
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 277
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    .line 278
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    .line 279
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    .line 280
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableOverScrollDrag:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    .line 281
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedHeaderViewId:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    .line 282
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFixedFooterViewId:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    .line 283
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderTranslationViewId:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    .line 284
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterTranslationViewId:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    .line 285
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableNestedScrolling:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 286
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    invoke-virtual {p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 288
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez p1, :cond_4

    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableLoadMore:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 289
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez p1, :cond_6

    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableHeaderTranslationContent:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 290
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez p1, :cond_8

    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlEnableFooterTranslationContent:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p1, 0x1

    :goto_5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 292
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlHeaderHeight:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_6

    :cond_9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_6
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 293
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlFooterHeight:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_7
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 295
    sget p1, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlAccentColor:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 296
    sget v0, Lcom/scwang/smartrefresh/layout/R$styleable;->SmartRefreshLayout_srlPrimaryColor:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    new-array v3, v3, [I

    aput v0, v3, v2

    aput p1, v3, v1

    .line 299
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_8

    :cond_b
    new-array p1, v1, [I

    aput v0, p1, v2

    .line 301
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    goto :goto_8

    :cond_c
    if-eqz p1, :cond_d

    new-array v0, v3, [I

    aput v2, v0, v2

    aput p1, v0, v1

    .line 304
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    .line 317
    :cond_d
    :goto_8
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p1, :cond_e

    .line 318
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 321
    :cond_e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$001(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$101(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$201(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$301(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$401(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$501(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;)V
    .locals 0

    .line 3444
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;)V
    .locals 0

    .line 3436
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;)V
    .locals 0

    .line 3452
    sput-object p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sRefreshInitializer:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshInitializer;

    return-void
.end method


# virtual methods
.method protected animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1538
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 1539
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 1540
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1541
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1542
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1544
    :cond_0
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1545
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1546
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1547
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1548
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1572
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;

    invoke-direct {p3, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$4;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1580
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1582
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1583
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected animSpinnerBounce(F)V
    .locals 3

    .line 1593
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 1594
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_1

    .line 1595
    :cond_0
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 1596
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1597
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1598
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_4

    .line 1599
    :cond_3
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 1600
    :cond_4
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_5

    .line 1601
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$BounceRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FI)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_5
    :goto_0
    return-void
.end method

.method public autoLoadMore()Z
    .locals 5

    .line 3332
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-float v1, v1

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoLoadMore(IIFZ)Z
    .locals 2

    .line 3370
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_1

    .line 3371
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FIZ)V

    .line 3419
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    if-lez p1, :cond_0

    .line 3421
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3423
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public autoLoadMoreAnimationOnly()Z
    .locals 5

    .line 3356
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    int-to-float v1, v1

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoLoadMore(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh()Z
    .locals 7

    .line 3223
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v6, v5

    mul-float v4, v4, v6

    mul-float v4, v4, v3

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :cond_1
    int-to-float v3, v5

    div-float/2addr v4, v3

    invoke-virtual {p0, v0, v2, v4, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public autoRefresh(I)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3236
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v2

    mul-float v1, v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v1, v1, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result p1

    return p1
.end method

.method public autoRefresh(IIFZ)Z
    .locals 2

    .line 3263
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3264
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$8;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;FIZ)V

    .line 3312
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    if-lez p1, :cond_0

    .line 3314
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long p3, p1

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3316
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public autoRefreshAnimationOnly()Z
    .locals 6

    .line 3248
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    :goto_0
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v5, v4

    mul-float v3, v3, v5

    mul-float v3, v3, v2

    const/4 v2, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :cond_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh(IIFZ)Z

    move-result v0

    return v0
.end method

.method public closeHeaderOrFooter()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2

    .line 3188
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 3190
    :cond_0
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 3192
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_2

    .line 3193
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 3194
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_3

    .line 3195
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 3202
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3203
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3205
    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_5

    .line 3206
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_0

    .line 3208
    :cond_5
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :goto_0
    return-object p0
.end method

.method public computeScroll()V
    .locals 4

    .line 850
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 851
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 852
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 853
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_7

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 854
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 855
    :cond_3
    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    if-eqz v2, :cond_6

    .line 857
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_5

    if-lez v0, :cond_4

    .line 858
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    goto :goto_0

    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 860
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float v0, v0, v2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 862
    :goto_0
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinnerBounce(F)V

    .line 864
    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 866
    :cond_7
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    .line 868
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 891
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 893
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 897
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    .line 900
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 901
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    if-eq v6, v2, :cond_5

    const/4 v2, 0x5

    if-ne v6, v2, :cond_6

    .line 906
    :cond_5
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_6

    .line 908
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    sub-float v3, v8, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 910
    :cond_6
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    .line 911
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    .line 921
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_a

    .line 922
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 923
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v3, :cond_9

    .line 925
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    if-ne v2, v3, :cond_9

    .line 926
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 927
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 928
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 929
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 930
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    goto :goto_5

    .line 931
    :cond_8
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 932
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5, v4, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_9
    :goto_5
    return v1

    .line 937
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz v2, :cond_38

    :cond_b
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-nez v2, :cond_38

    :cond_d
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v2, :cond_f

    goto/16 :goto_f

    .line 944
    :cond_f
    invoke-virtual {v0, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interceptAnimatorByAction(I)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v2, :cond_37

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v4, :cond_10

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-nez v2, :cond_37

    :cond_10
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v4, :cond_11

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    if-eqz v2, :cond_11

    goto/16 :goto_e

    :cond_11
    const/16 v2, 0x68

    if-eqz v6, :cond_33

    const/4 v4, 0x0

    if-eq v6, v11, :cond_2f

    const/4 v5, 0x3

    if-eq v6, v3, :cond_12

    if-eq v6, v5, :cond_30

    goto/16 :goto_d

    .line 995
    :cond_12
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    sub-float/2addr v9, v3

    .line 996
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    sub-float v3, v8, v3

    .line 997
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 998
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_1f

    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    if-nez v6, :cond_1f

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    if-eq v6, v2, :cond_1f

    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v12, :cond_1f

    const/16 v12, 0x76

    if-eq v6, v12, :cond_14

    .line 999
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v6, v6, v13

    if-gez v6, :cond_13

    goto :goto_6

    .line 1022
    :cond_13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_1f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v6, v6, v13

    if-lez v6, :cond_1f

    iget-char v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    if-eq v6, v12, :cond_1f

    .line 1023
    iput-char v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    goto/16 :goto_a

    .line 1000
    :cond_14
    :goto_6
    iput-char v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    cmpl-float v2, v3, v7

    if-lez v2, :cond_17

    .line 1001
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-ltz v2, :cond_16

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v2, :cond_17

    :cond_15
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1002
    :cond_16
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 1003
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    iput v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    goto :goto_7

    :cond_17
    cmpg-float v2, v3, v7

    if-gez v2, :cond_1b

    .line 1004
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v2, :cond_1a

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v2, :cond_18

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v2, :cond_1b

    :cond_18
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v6, :cond_19

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-nez v2, :cond_1a

    :cond_19
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1005
    :cond_1a
    iput-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 1006
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    iput v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 1008
    :cond_1b
    :goto_7
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1f

    .line 1009
    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    sub-float v3, v8, v2

    .line 1010
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    if-eqz v2, :cond_1c

    .line 1011
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1012
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1014
    :cond_1c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v6, :cond_1e

    if-nez v6, :cond_1d

    cmpl-float v6, v3, v7

    if-lez v6, :cond_1d

    goto :goto_8

    :cond_1d
    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto :goto_9

    :cond_1e
    :goto_8
    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :goto_9
    invoke-interface {v2, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1015
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1016
    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1f

    .line 1019
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1026
    :cond_1f
    :goto_a
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2e

    float-to-int v2, v3

    .line 1027
    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    add-int/2addr v2, v6

    .line 1028
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v6, :cond_20

    if-ltz v2, :cond_21

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    if-ltz v6, :cond_21

    :cond_20
    iget-object v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v6, v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v6, :cond_2d

    if-gtz v2, :cond_21

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    if-lez v6, :cond_2d

    .line 1029
    :cond_21
    iput v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    .line 1030
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 1031
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-nez v1, :cond_22

    const/16 v16, 0x0

    .line 1032
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    move/from16 v18, v1

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1033
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_22
    const/16 v16, 0x2

    .line 1035
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    add-float v17, v1, v9

    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    int-to-float v6, v2

    add-float v18, v1, v6

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1036
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1037
    iget-boolean v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v6, :cond_23

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_23

    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v3, :cond_23

    .line 1038
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    :cond_23
    if-lez v2, :cond_25

    .line 1040
    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-eqz v3, :cond_25

    :cond_24
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canRefresh()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1041
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 1042
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 1043
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :goto_b
    const/4 v2, 0x0

    goto :goto_c

    :cond_25
    if-gez v2, :cond_27

    .line 1044
    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v3, :cond_26

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v3, :cond_27

    :cond_26
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1045
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 1046
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 1047
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_b

    .line 1049
    :cond_27
    :goto_c
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eqz v3, :cond_28

    if-ltz v2, :cond_29

    :cond_28
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    if-eqz v3, :cond_2b

    if-lez v2, :cond_2b

    .line 1050
    :cond_29
    iget v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v1, :cond_2a

    .line 1051
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    :cond_2a
    return v11

    .line 1054
    :cond_2b
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2c

    .line 1055
    iput-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1056
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1057
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1059
    :cond_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2d
    int-to-float v1, v2

    .line 1061
    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    return v11

    .line 1063
    :cond_2e
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v2, :cond_32

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_32

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_32

    .line 1064
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_d

    .line 1068
    :cond_2f
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1069
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1070
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    .line 1071
    invoke-virtual {v0, v7}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->startFlingIfNeed(F)Z

    .line 1073
    :cond_30
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    const/16 v2, 0x6e

    .line 1074
    iput-char v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    .line 1075
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_31

    .line 1076
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1077
    iput-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFalsifyEvent:Landroid/view/MotionEvent;

    .line 1078
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1079
    iget v7, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1080
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1081
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1083
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->overSpinner()V

    .line 1084
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_32

    .line 1085
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    return v11

    .line 1091
    :cond_32
    :goto_d
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 965
    :cond_33
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    .line 966
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 967
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 971
    iput v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchX:F

    .line 972
    iput v8, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 973
    iput v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastSpinner:I

    .line 974
    iget v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iput v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 975
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 976
    iput-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    .line 978
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    .line 979
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v3, v4, :cond_35

    .line 980
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 981
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorBottomDragLayoutRate:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_34

    iget v6, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    int-to-float v7, v3

    sub-float v4, v5, v4

    mul-float v7, v7, v4

    cmpg-float v4, v6, v7

    if-gez v4, :cond_34

    .line 982
    iput-char v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    .line 983
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    return v1

    .line 984
    :cond_34
    iget v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorBottomDragLayoutRate:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_35

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    int-to-float v3, v3

    sub-float/2addr v3, v4

    cmpg-float v3, v5, v3

    if-gez v3, :cond_35

    .line 985
    iput-char v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragDirection:C

    .line 986
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSuperDispatchTouchEvent:Z

    return v1

    .line 989
    :cond_35
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v2, :cond_36

    .line 991
    invoke-interface {v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->onActionDown(Landroid/view/MotionEvent;)V

    :cond_36
    return v11

    :cond_37
    :goto_e
    return v10

    .line 941
    :cond_38
    :goto_f
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 774
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 775
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_8

    .line 776
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_8

    .line 780
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 781
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 782
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 783
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_2

    .line 784
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 785
    :cond_2
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v4, :cond_3

    .line 786
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v3

    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 788
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 796
    :cond_4
    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    iget-boolean v3, v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v3, :cond_8

    .line 797
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 798
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 799
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 800
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_7
    :goto_2
    return v2

    .line 805
    :cond_8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_10

    .line 806
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_4

    :cond_9
    if-eqz v0, :cond_10

    .line 810
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 811
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_c

    .line 812
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 813
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_a

    .line 814
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 815
    :cond_a
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_b

    .line 816
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    add-int/2addr v0, v1

    :cond_b
    :goto_3
    const/4 v2, 0x0

    int-to-float v3, v0

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 826
    :cond_c
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v1, v2, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_10

    .line 827
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 828
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 829
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 830
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_f
    :goto_4
    return v2

    .line 836
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public finishLoadMore()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2847
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishLoadMore(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3006
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 3033
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;IZZ)V

    if-lez p1, :cond_0

    .line 3163
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3165
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 3017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    .line 3018
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishLoadMoreWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 3177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 3178
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2837
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public finishRefresh(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2

    .line 2858
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 2890
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;

    invoke-direct {v1, p0, v0, p3, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    .line 2980
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2982
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v1, v3

    long-to-int p1, v1

    const/16 v1, 0x12c

    rsub-int p1, p1, 0x12c

    .line 2871
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    .line 2872
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 2874
    invoke-virtual {p0, v0, v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public finishRefreshWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 2994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v2, 0x0

    .line 2995
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1791
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;
    .locals 2

    .line 2644
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lcom/scwang/smartrefresh/layout/api/RefreshHeader;
    .locals 2

    .line 2655
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;
    .locals 1

    .line 2666
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-object v0
.end method

.method protected interceptAnimatorByAction(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 1171
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1172
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 1175
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_1

    .line 1176
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 1177
    :cond_1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v2, :cond_2

    .line 1178
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1180
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1181
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1182
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 1184
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1186
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method protected isEnableRefreshOrLoadMore(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1394
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 1384
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1954
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected moveSpinnerInfinitely(F)V
    .locals 11

    .line 1671
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    if-nez v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1699
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/4 v2, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    int-to-float v4, v3

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    const-string v0, "\u4f60\u8fd9\u4e48\u6b7b\u62c9\uff0c\u81e3\u59be\u505a\u4e0d\u5230\u554a\uff01"

    .line 1701
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1702
    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1704
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v0, v3, :cond_3

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_3

    .line 1705
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1706
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorOpenLayoutRate:F

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    float-to-int v0, v3

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 1707
    :goto_0
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v5, p1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v3, v0, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1708
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    if-ne v0, v3, :cond_6

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_6

    .line 1709
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4

    .line 1710
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v3, p1

    invoke-interface {v0, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1712
    :cond_4
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    sub-float/2addr v3, v5

    int-to-float v0, v0

    mul-float v3, v3, v0

    .line 1713
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    int-to-float v8, v8

    sub-float v8, p1, v8

    .line 1714
    iget v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float v8, v8, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    neg-float v9, v8

    cmpl-float v10, v0, v1

    if-nez v10, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_5
    div-float/2addr v9, v0

    float-to-double v9, v9

    .line 1715
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    sub-float/2addr v5, v0

    mul-float v3, v3, v5

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1716
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v0, v0

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v0, v5

    invoke-interface {v3, v0, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    :cond_6
    cmpg-float v0, p1, v1

    if-gez v0, :cond_b

    .line 1718
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1719
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1720
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1721
    :cond_8
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v0

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_9

    .line 1722
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v3, p1

    invoke-interface {v0, v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_1

    .line 1724
    :cond_9
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    sub-float/2addr v3, v5

    int-to-float v0, v0

    mul-float v3, v3, v0

    .line 1725
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    int-to-float v8, v8

    add-float/2addr v8, p1

    .line 1726
    iget v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float v8, v8, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    neg-float v8, v8

    neg-float v9, v8

    cmpl-float v10, v0, v1

    if-nez v10, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_a
    div-float/2addr v9, v0

    float-to-double v9, v9

    .line 1727
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    sub-float/2addr v5, v0

    mul-float v3, v3, v5

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v0, v0

    .line 1728
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v0, v0

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    sub-int/2addr v0, v5

    invoke-interface {v3, v0, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    :cond_b
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_d

    .line 1731
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    .line 1732
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 1733
    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float v8, v8, p1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    neg-float v9, v8

    cmpl-float v10, v3, v1

    if-nez v10, :cond_c

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_c
    div-float/2addr v9, v3

    float-to-double v9, v9

    .line 1734
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    sub-float/2addr v5, v3

    mul-float v0, v0, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1735
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v0, v0

    invoke-interface {v3, v0, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_1

    .line 1737
    :cond_d
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    .line 1738
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScreenHeightPixels:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 1739
    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    mul-float v8, v8, p1

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    neg-float v8, v8

    neg-float v9, v8

    cmpl-float v10, v3, v1

    if-nez v10, :cond_e

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_e
    div-float/2addr v9, v3

    float-to-double v9, v9

    .line 1740
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v3, v6

    sub-float/2addr v5, v3

    mul-float v0, v0, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v0, v0

    .line 1741
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    float-to-int v0, v0

    invoke-interface {v3, v0, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1743
    :goto_1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    cmpg-float p1, p1, v1

    if-gez p1, :cond_10

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_10

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_10

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_10

    .line 1747
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    .line 1748
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1749
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v0, v0

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    .line 1751
    :cond_f
    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateDirectLoading(Z)V

    .line 1755
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$5;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method protected notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 4

    .line 1197
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_3

    .line 1199
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 1200
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 1201
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 1202
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 1203
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_0

    .line 1205
    invoke-interface {v1, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 1208
    invoke-interface {v2, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 1211
    invoke-interface {v3, p0, v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1213
    :cond_2
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 1214
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_0

    .line 1216
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_4

    .line 1220
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :cond_4
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 388
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    .line 392
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_d

    .line 394
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v1, :cond_2

    .line 395
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sHeaderCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;

    if-eqz v1, :cond_1

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshHeaderCreator;->createRefreshHeader(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultRefreshHeaderCreator can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1
    new-instance v1, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 405
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 406
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sFooterCreator:Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;

    if-eqz v0, :cond_4

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/scwang/smartrefresh/layout/api/DefaultRefreshFooterCreator;->createRefreshFooter(Landroid/content/Context;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_2

    .line 409
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultRefreshFooterCreator can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_4
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 414
    new-instance v1, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 415
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    goto :goto_2

    .line 418
    :cond_5
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 421
    :goto_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-nez v0, :cond_b

    .line 422
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 423
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 424
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_a

    :cond_8
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_9

    .line 425
    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_a

    .line 426
    :cond_9
    new-instance v4, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-direct {v4, v3}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 430
    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-nez v0, :cond_c

    const/high16 v0, 0x41a00000    # 20.0f

    .line 431
    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    .line 432
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0x9a00

    .line 433
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 434
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 435
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 436
    sget v0, Lcom/scwang/smartrefresh/layout/R$string;->srl_content_empty:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 437
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 438
    new-instance v0, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-direct {v0, v3}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 439
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 442
    :cond_c
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 443
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 445
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V

    .line 446
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-boolean v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {v3, v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 447
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v3, v4, v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 449
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_d

    .line 450
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 451
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iput v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v0, v2, v1, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 455
    :cond_d
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz v0, :cond_f

    .line 456
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_e

    .line 457
    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 459
    :cond_e
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_f

    .line 460
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 465
    :cond_f
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_10

    .line 466
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 468
    :cond_10
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v0, :cond_11

    .line 469
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 471
    :cond_11
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v0

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz v0, :cond_12

    .line 472
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .line 720
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 721
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    const/4 v1, 0x1

    .line 722
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    const/4 v2, 0x0

    .line 723
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 724
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 726
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 727
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 728
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 729
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 730
    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 738
    :cond_0
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v3, v4, :cond_1

    .line 739
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3, p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    .line 741
    :cond_1
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v3, v4, :cond_2

    .line 742
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3, p0, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    .line 744
    :cond_2
    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v3, :cond_3

    .line 745
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v3, v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 747
    :cond_3
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v3, :cond_4

    .line 748
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 750
    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 751
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 760
    :cond_5
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .line 332
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 333
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    .line 341
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 342
    invoke-static {v9}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isContentView(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    const/4 v6, 0x2

    goto :goto_2

    .line 345
    :cond_1
    instance-of v7, v9, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    move v5, v4

    move v6, v8

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    .line 354
    new-instance v4, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    if-ne v0, v7, :cond_7

    const/4 v1, -0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    :goto_3
    const/4 v7, -0x1

    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_10

    .line 366
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    .line 367
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v6, :cond_8

    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    .line 369
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_f

    .line 370
    :cond_9
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 371
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    goto :goto_8

    :cond_c
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    goto :goto_b

    .line 368
    :cond_d
    :goto_9
    instance-of v6, v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v6, :cond_e

    check-cast v5, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    goto :goto_a

    :cond_e
    new-instance v6, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;

    invoke-direct {v6, v5}, Lcom/scwang/smartrefresh/layout/impl/RefreshHeaderWrapper;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    .line 335
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 630
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 632
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 634
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p3, :cond_13

    .line 635
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    sget v1, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_c

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_4

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 643
    :goto_1
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v3

    .line 644
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 645
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 646
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 647
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 648
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 649
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_3

    .line 650
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p0, v1, v8}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 651
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 655
    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 657
    :cond_4
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 658
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 659
    :goto_3
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v3

    .line 660
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 661
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 662
    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 663
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v4, v6

    .line 664
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 665
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_7

    .line 667
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v8, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v8, :cond_7

    .line 668
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 677
    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 679
    :cond_8
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_12

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 681
    :goto_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 683
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_a
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 684
    :goto_6
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v3

    .line 685
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 686
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v5, v6

    .line 687
    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 688
    invoke-interface {v6}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v6

    sget-object v7, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v6, v7, :cond_c

    iget-boolean v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 689
    invoke-virtual {p0, v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 690
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v5

    .line 691
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 692
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_b

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    add-int v7, p2, p2

    add-int/2addr v7, v6

    .line 693
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 696
    :cond_c
    sget-object v6, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v6, :cond_d

    .line 697
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int v5, v1, v2

    goto :goto_b

    :cond_d
    if-nez v2, :cond_10

    .line 698
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedFront:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq v3, v1, :cond_10

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v3, v1, :cond_e

    goto :goto_9

    .line 702
    :cond_e
    iget-boolean v1, v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_11

    .line 703
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v1, v1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_a

    .line 701
    :cond_10
    :goto_9
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    :goto_a
    sub-int/2addr v5, v1

    .line 706
    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 707
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    .line 708
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePreviewInEditMode:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 491
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_20

    .line 492
    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 494
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1e

    sget v10, Lcom/scwang/smartrefresh/layout/R$string;->srl_component_falsify:I

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_1

    goto/16 :goto_12

    .line 498
    :cond_1
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 v13, -0x2

    if-eqz v10, :cond_c

    invoke-interface {v10}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v10

    if-ne v10, v9, :cond_c

    .line 499
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v10}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v10

    .line 500
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 501
    instance-of v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    move-object v4, v15

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 502
    :goto_2
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v14

    iget v14, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v12, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 503
    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 505
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget v11, v11, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget v5, v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    if-ge v11, v5, :cond_6

    .line 506
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_3

    .line 507
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v14, v5, v11

    .line 508
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v5, v11}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 509
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 510
    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_3

    .line 512
    :cond_3
    iget v5, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v13, :cond_6

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v11, :cond_4

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_6

    .line 513
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v11

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v11

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, -0x80000000

    .line 514
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v10, v12, v15}, Landroid/view/View;->measure(II)V

    .line 515
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-lez v11, :cond_6

    if-eq v11, v5, :cond_5

    .line 518
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v14, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v5, v14}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 519
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v5

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v5

    iput v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 520
    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_5
    const/4 v14, -0x1

    .line 526
    :cond_6
    :goto_3
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v11, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v11, :cond_7

    .line 527
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    const/4 v5, -0x1

    const/4 v11, 0x0

    goto :goto_6

    .line 528
    :cond_7
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    iget-boolean v5, v5, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v5, :cond_9

    if-nez v3, :cond_9

    .line 529
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    const/4 v5, -0x1

    :goto_6
    if-eq v14, v5, :cond_a

    .line 533
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v4

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v10, v12, v4}, Landroid/view/View;->measure(II)V

    .line 536
    :cond_a
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v4, v4, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v4, :cond_b

    .line 537
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v4}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v4

    iput-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 538
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v14, v11

    mul-float v12, v12, v14

    float-to-int v12, v12

    invoke-interface {v4, v5, v11, v12}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    :cond_b
    if-eqz v3, :cond_c

    .line 541
    iget-boolean v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 542
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    .line 546
    :cond_c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_17

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_17

    .line 547
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v4

    .line 548
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 549
    instance-of v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_d

    move-object v10, v5

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_7

    :cond_d
    sget-object v10, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 550
    :goto_7
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 551
    iget v14, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 553
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget v12, v12, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    sget-object v15, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlLayoutUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget v15, v15, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->ordinal:I

    if-ge v12, v15, :cond_11

    .line 554
    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v12, :cond_e

    .line 555
    iget v12, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v14, v12, v13

    .line 556
    iget-object v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v12, v13}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 557
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v12

    iput v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 558
    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    goto :goto_8

    .line 560
    :cond_e
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v5, v13, :cond_11

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v12, :cond_f

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_11

    .line 561
    :cond_f
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v12

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v12

    const/4 v12, 0x0

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v12, -0x80000000

    .line 562
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/view/View;->measure(II)V

    .line 563
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-lez v12, :cond_11

    if-eq v12, v5, :cond_10

    .line 566
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v13, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v5, v13}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 567
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v5

    iput v12, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 568
    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->XmlWrapUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_10
    const/4 v14, -0x1

    .line 574
    :cond_11
    :goto_8
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    sget-object v12, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v5, v12, :cond_12

    .line 575
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    const/4 v5, -0x1

    const/4 v12, 0x0

    goto :goto_b

    .line 576
    :cond_12
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v5

    iget-boolean v5, v5, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v5, :cond_14

    if-nez v3, :cond_14

    .line 577
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_13

    iget v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    neg-int v5, v5

    goto :goto_9

    :cond_13
    const/4 v5, 0x0

    :goto_9
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_a

    :cond_14
    const/4 v12, 0x0

    :goto_a
    const/4 v5, -0x1

    :goto_b
    if-eq v14, v5, :cond_15

    .line 581
    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v5

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v11, v5}, Landroid/view/View;->measure(II)V

    .line 584
    :cond_15
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean v5, v5, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-nez v5, :cond_16

    .line 585
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v5}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object v5

    iput-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 586
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v14, v11

    mul-float v13, v13, v14

    float-to-int v13, v13

    invoke-interface {v5, v10, v11, v13}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    :cond_16
    if-eqz v3, :cond_18

    .line 589
    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 590
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_c

    :cond_17
    const/4 v12, 0x0

    .line 594
    :cond_18
    :goto_c
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v4, :cond_1f

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v9, :cond_1f

    .line 595
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v4

    .line 596
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 597
    instance-of v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_19

    move-object v9, v5

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_d

    :cond_19
    sget-object v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 598
    :goto_d
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v10, :cond_1a

    iget-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v0, v10}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-boolean v10, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v0, v10, v11}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x1

    goto :goto_e

    :cond_1a
    const/4 v10, 0x0

    .line 599
    :goto_e
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v11, :cond_1b

    iget-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v11}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-boolean v11, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v13, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v0, v11, v13}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/4 v11, 0x1

    goto :goto_f

    :cond_1b
    const/4 v11, 0x0

    .line 601
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 600
    invoke-static {v1, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    .line 603
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v9

    if-eqz v3, :cond_1c

    if-eqz v10, :cond_1c

    iget v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    goto :goto_10

    :cond_1c
    const/4 v9, 0x0

    :goto_10
    add-int/2addr v14, v9

    if-eqz v3, :cond_1d

    if-eqz v11, :cond_1d

    iget v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    goto :goto_11

    :cond_1d
    const/4 v9, 0x0

    :goto_11
    add-int/2addr v14, v9

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 602
    invoke-static {v2, v14, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 606
    invoke-virtual {v4, v13, v5}, Landroid/view/View;->measure(II)V

    .line 607
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v8, v4

    goto :goto_13

    :cond_1e
    :goto_12
    const/4 v12, 0x0

    :cond_1f
    :goto_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 612
    :cond_20
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 613
    invoke-static {v8, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 611
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1925
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1920
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->startFlingIfNeed(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2

    .line 1859
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1860
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1861
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1862
    iput v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    goto :goto_0

    .line 1865
    :cond_0
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    move p1, p3

    .line 1867
    :goto_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    .line 1868
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    .line 1870
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1871
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    move p1, p3

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 1875
    :goto_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    sub-int/2addr p3, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    const/4 p2, 0x1

    .line 1876
    aget p3, p4, p2

    add-int/2addr p3, p1

    aput p3, p4, p2

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1883
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    .line 1890
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mParentOffsetInWindow:[I

    const/4 p4, 0x1

    aget p2, p2, p4

    add-int/2addr p5, p2

    if-gez p5, :cond_1

    .line 1891
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;->canRefresh(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    if-lez p5, :cond_7

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-eqz p2, :cond_7

    :cond_2
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 1892
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;->canLoadMore(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1893
    :cond_3
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean p2, p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz p2, :cond_6

    .line 1898
    :cond_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-lez p5, :cond_5

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :goto_0
    invoke-interface {p2, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-nez p1, :cond_6

    .line 1901
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1902
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_6

    .line 1905
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1909
    :cond_6
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    sub-int/2addr p1, p5

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1912
    :cond_7
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz p1, :cond_8

    if-gez p3, :cond_8

    const/4 p1, 0x0

    .line 1913
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    :cond_8
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 1843
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    .line 1845
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 p1, 0x1

    .line 1846
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    const/4 p1, 0x0

    .line 1848
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->interceptAnimatorByAction(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 1833
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1834
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 1930
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedParent:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1931
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    .line 1934
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    .line 1935
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->overSpinner()V

    .line 1937
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method protected overSpinner()V
    .locals 4

    .line 1611
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_2

    .line 1613
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1614
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorOpenLayoutRate:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1615
    :goto_0
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    const/16 v2, -0x3e8

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    div-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_1

    .line 1616
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1618
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    .line 1620
    :cond_1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v0, :cond_10

    .line 1621
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_2

    .line 1623
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1624
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 1630
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_5

    .line 1631
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-le v0, v1, :cond_4

    .line 1632
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    :cond_4
    if-gez v0, :cond_10

    .line 1634
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_2

    .line 1636
    :cond_5
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_6

    .line 1637
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_2

    .line 1638
    :cond_6
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_7

    .line 1639
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_2

    .line 1640
    :cond_7
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_8

    .line 1641
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto/16 :goto_2

    .line 1642
    :cond_8
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_9

    .line 1643
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 1644
    :cond_9
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a

    .line 1645
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 1646
    :cond_a
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_b

    .line 1647
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_10

    .line 1648
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1650
    :cond_b
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_c

    .line 1651
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_10

    .line 1652
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1654
    :cond_c
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_d

    goto :goto_2

    .line 1660
    :cond_d
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_10

    .line 1661
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 1625
    :cond_e
    :goto_1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v1

    if-ge v0, v3, :cond_f

    .line 1626
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    neg-int v1, v1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_f
    if-lez v0, :cond_10

    .line 1628
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_10
    :goto_2
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getScrollableView()Landroid/view/View;

    move-result-object v0

    .line 1105
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    .line 1106
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableDisallowIntercept:Z

    .line 1108
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public resetNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2827
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public setDisableContentWhenLoading(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2464
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenLoading:Z

    return-object p0
.end method

.method public setDisableContentWhenRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2452
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDisableContentWhenRefresh:Z

    return-object p0
.end method

.method public setDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2136
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mDragRate:F

    return-object p0
.end method

.method public setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2282
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    return-object p0
.end method

.method public setEnableClipFooterWhenFixedBehind(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2407
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    return-object p0
.end method

.method public setEnableClipHeaderWhenFixedBehind(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2395
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    return-object p0
.end method

.method public setEnableFooterFollowWhenLoadFinished(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2371
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    return-object p0
.end method

.method public setEnableFooterFollowWhenNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2383
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    return-object p0
.end method

.method public setEnableFooterTranslationContent(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2269
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    const/4 p1, 0x1

    .line 2270
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    return-object p0
.end method

.method public setEnableHeaderTranslationContent(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2256
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    const/4 p1, 0x1

    .line 2257
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    return-object p0
.end method

.method public setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x1

    .line 2232
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    .line 2233
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public setEnableLoadMoreWhenContentNotFull(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 2342
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    .line 2343
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 2344
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    :cond_0
    return-object p0
.end method

.method public setEnableNestedScroll(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2419
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method public setEnableOverScrollBounce(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2294
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    return-object p0
.end method

.method public setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2357
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    return-object p0
.end method

.method public setEnablePureScrollMode(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2306
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnablePureScrollMode:Z

    return-object p0
.end method

.method public setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2244
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    return-object p0
.end method

.method public setEnableScrollContentWhenLoaded(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2318
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    return-object p0
.end method

.method public setEnableScrollContentWhenRefreshed(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2330
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    return-object p0
.end method

.method public setFooterHeight(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 6

    .line 2067
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    .line 2068
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2072
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    .line 2073
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_4

    .line 2074
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    .line 2075
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq p1, v0, :cond_3

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-nez v0, :cond_3

    .line 2084
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 2085
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2086
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2087
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2088
    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 2089
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2090
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v1, v3

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq p1, v3, :cond_2

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    :cond_2
    sub-int/2addr v1, v5

    .line 2091
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/view/View;->layout(IIII)V

    .line 2093
    :cond_3
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 2094
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_1

    .line 2096
    :cond_4
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_5
    :goto_1
    return-object p0
.end method

.method public setFooterInsetStart(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2123
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterInsetStart:I

    return-object p0
.end method

.method public setFooterMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 2167
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    .line 2168
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_0

    .line 2171
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_0
    return-object p0
.end method

.method public setFooterTriggerRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2196
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    return-object p0
.end method

.method public setHeaderHeight(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 6

    .line 2025
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    .line 2026
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->canReplaceWith(Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2030
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    .line 2031
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_4

    .line 2032
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    .line 2033
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-eq p1, v0, :cond_3

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-nez v0, :cond_3

    .line 2041
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 2042
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2043
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2044
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2045
    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 2046
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2047
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v1, v3

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne p1, v3, :cond_2

    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    :cond_2
    sub-int/2addr v1, v5

    .line 2048
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/view/View;->layout(IIII)V

    .line 2050
    :cond_3
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExact:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 2051
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_1

    .line 2053
    :cond_4
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->CodeExactUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :cond_5
    :goto_1
    return-object p0
.end method

.method public setHeaderInsetStart(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2110
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderInsetStart:I

    return-object p0
.end method

.method public setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 2149
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    .line 2150
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    goto :goto_0

    .line 2153
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->unNotify()Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    :goto_0
    return-object p0
.end method

.method public setHeaderTriggerRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2184
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    return-object p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1944
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableNestedScrolling:Z

    .line 1946
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedChild:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 2

    .line 2793
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2794
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefreshWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto/16 :goto_0

    .line 2795
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 2796
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMoreWithNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    goto :goto_0

    .line 2797
    :cond_1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eq v0, p1, :cond_3

    .line 2798
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    .line 2799
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_3

    .line 2800
    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2801
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2802
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 2803
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 2804
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 2805
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2806
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2809
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2810
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Footer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2811
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2812
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 2700
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    .line 2701
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public setOnMultiPurposeListener(Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2729
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    return-object p0
.end method

.method public setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2688
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

    return-object p0
.end method

.method public setOnRefreshLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 2713
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

    .line 2714
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    .line 2715
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    return-object p0
.end method

.method public varargs setPrimaryColors([I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 2741
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2742
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 2744
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_1

    .line 2745
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    .line 2747
    :cond_1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    return-object p0
.end method

.method public varargs setPrimaryColorsId([I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 4

    .line 2760
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2761
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2762
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2764
    :cond_0
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setPrimaryColors([I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-object p0
.end method

.method public setReboundDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2220
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    return-object p0
.end method

.method public setReboundInterpolator(Landroid/view/animation/Interpolator;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 0

    .line 2208
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setRefreshContent(Landroid/view/View;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2583
    invoke-virtual {p0, p1, v0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshContent(Landroid/view/View;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshContent(Landroid/view/View;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 2599
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 2600
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, -0x1

    if-nez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, -0x1

    .line 2609
    :cond_2
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2610
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2611
    instance-of p3, p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    if-eqz p3, :cond_3

    .line 2612
    move-object v0, p2

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 2615
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2617
    new-instance p2, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;

    invoke-direct {p2, p1}, Lcom/scwang/smartrefresh/layout/impl/RefreshContentWrapper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 2618
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mAttachedToWindow:Z

    if-eqz p1, :cond_4

    .line 2619
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedHeaderViewId:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2620
    iget p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFixedFooterViewId:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 2622
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    invoke-interface {p3, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V

    .line 2623
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMoreWhenContentNotFull:Z

    invoke-interface {p3, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setEnableLoadMoreWhenContentNotFull(Z)V

    .line 2624
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {p3, v0, p1, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setUpComponent(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Landroid/view/View;Landroid/view/View;)V

    .line 2627
    :cond_4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_5

    .line 2628
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 2630
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p1

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p1, :cond_6

    .line 2631
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_6
    return-object p0
.end method

.method public setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2528
    invoke-virtual {p0, p1, v0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshFooter(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 2543
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2544
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2546
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 p1, 0x0

    .line 2547
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    .line 2548
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    .line 2549
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    .line 2550
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    .line 2551
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    .line 2552
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualLoadMore:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez p2, :cond_3

    const/4 p2, -0x1

    :cond_3
    if-nez p3, :cond_4

    const/4 p3, -0x2

    .line 2558
    :cond_4
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2559
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2560
    instance-of p3, p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    if-eqz p3, :cond_5

    .line 2561
    move-object v0, p2

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 2563
    :cond_5
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p2

    iget-boolean p2, p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p2, :cond_6

    .line 2565
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 2567
    :cond_6
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-super {p0, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2569
    :goto_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p2, :cond_7

    .line 2570
    invoke-interface {p2, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    :cond_7
    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    const/4 v0, 0x0

    .line 2476
    invoke-virtual {p0, p1, v0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 2491
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2492
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2494
    :cond_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    const/4 p1, 0x0

    .line 2495
    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    .line 2496
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    .line 2497
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;->DefaultUnNotify:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/scwang/smartrefresh/layout/constant/DimensionStatus;

    if-nez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, -0x2

    .line 2503
    :cond_2
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;-><init>(II)V

    .line 2504
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 2505
    instance-of p3, p2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    if-eqz p3, :cond_3

    .line 2506
    move-object v0, p2

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$LayoutParams;

    .line 2508
    :cond_3
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p2

    iget-boolean p2, p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->front:Z

    if-eqz p2, :cond_4

    .line 2510
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2512
    :cond_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {p2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-super {p0, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2514
    :goto_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPrimaryColors:[I

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz p2, :cond_5

    .line 2515
    invoke-interface {p2, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->setPrimaryColors([I)V

    :cond_5
    return-object p0
.end method

.method public setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .locals 1

    .line 2778
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScrollBoundaryDecider:Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;

    .line 2779
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v0, :cond_0

    .line 2780
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->setScrollBoundaryDecider(Lcom/scwang/smartrefresh/layout/api/ScrollBoundaryDecider;)V

    :cond_0
    return-object p0
.end method

.method protected setStateDirectLoading(Z)V
    .locals 4

    .line 1229
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_4

    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    const/4 v0, 0x1

    .line 1243
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    .line 1244
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1245
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLoadMoreListener:Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1247
    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    goto :goto_0

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-nez v0, :cond_1

    const/16 v0, 0x7d0

    .line 1250
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 1252
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_2

    .line 1253
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {v0, p0, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1255
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 1258
    invoke-interface {v0, p0}, Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;->onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 1260
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V

    :cond_4
    return-void
.end method

.method protected setStateLoading(Z)V
    .locals 6

    .line 1270
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 1279
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1280
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v1, v1

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1282
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1284
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_1

    .line 1287
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1289
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_2

    .line 1291
    check-cast v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterReleased(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 1295
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .locals 6

    .line 1304
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V

    .line 1330
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1331
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1333
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1335
    :cond_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_1

    .line 1338
    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-interface {v1, p0, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1340
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_2

    .line 1342
    check-cast v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderReleased(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 1346
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method

.method protected setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 2

    .line 1369
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    iget-boolean v1, p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    if-eq v0, v1, :cond_0

    .line 1370
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, p1, :cond_1

    .line 1373
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    :cond_1
    return-void
.end method

.method protected startFlingIfNeed(F)Z
    .locals 13

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1118
    iget p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mCurrentVelocity:I

    int-to-float p1, p1

    .line 1119
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v1, :cond_1

    .line 1123
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->getScaleY()F

    .line 1125
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v1

    .line 1126
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    neg-float p1, p1

    .line 1130
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mMinimumVelocity:I

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 1131
    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_4

    .line 1138
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1141
    :cond_2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isReleaseToOpening:Z

    if-eqz v1, :cond_4

    return v4

    .line 1139
    :cond_3
    :goto_0
    new-instance v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;

    invoke-direct {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->start()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    return v4

    :cond_4
    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    .line 1145
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v1, :cond_9

    :cond_5
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_9

    :cond_6
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableAutoLoadMore:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollBounce:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    if-nez v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableOverScrollDrag:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gtz v0, :cond_a

    .line 1154
    :cond_9
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mVerticalPermit:Z

    .line 1155
    iget-object v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    neg-float p1, p1

    float-to-int v8, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, -0x7fffffff

    const v12, 0x7fffffff

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1156
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1158
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    return v3
.end method
