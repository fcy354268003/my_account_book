.class public abstract Lcom/scwang/smartrefresh/header/fungame/FunGameBase;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "FunGameBase.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# instance fields
.field protected mHeaderHeight:I

.field protected mIsFinish:Z

.field protected mLastFinish:Z

.field protected mManualOperation:Z

.field protected mOffset:I

.field protected mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

.field protected mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mScreenHeightPixels:I

.field protected mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected mTouchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 46
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mScreenHeightPixels:I

    .line 48
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 3

    .line 181
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mLastFinish:Z

    .line 182
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    .line 184
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    if-eqz v0, :cond_1

    .line 185
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onManualOperationRelease()V

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    return v1

    :cond_0
    const p1, 0x7fffffff

    return p1

    :cond_1
    return v1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 170
    iput p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 173
    iget p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mOffset:I

    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x1

    .line 174
    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method protected abstract onManualOperationMove(FIII)V
.end method

.method protected onManualOperationRelease()V
    .locals 4

    .line 120
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 121
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    .line 126
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mLastFinish:Z

    invoke-virtual {p0, v0, v1}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    .line 128
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 129
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    invoke-interface {v0, v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 135
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :goto_1
    return-void
.end method

.method protected onManualOperationStart()V
    .locals 4

    .line 102
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    .line 104
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshContent()Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    .line 110
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getView()Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    .line 146
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onManualOperationMove(FIII)V

    goto :goto_0

    .line 148
    :cond_0
    iput p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mOffset:I

    .line 150
    iget p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mOffset:I

    iget p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0

    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    const/4 p1, 0x0

    .line 158
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0

    .line 163
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v0, p0

    .line 58
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 59
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mManualOperation:Z

    if-nez v1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onManualOperationStart()V

    .line 62
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v5, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    sub-float/2addr v1, v5

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_5

    .line 70
    iget v5, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    mul-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    .line 71
    iget v7, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mScreenHeightPixels:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v4, v7

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v4, v7

    float-to-double v7, v4

    const-wide/16 v9, 0x0

    float-to-double v11, v1

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, v13

    .line 72
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    neg-double v2, v9

    div-double/2addr v2, v7

    .line 73
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v11, v2

    mul-double v5, v5, v11

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 74
    iget-object v5, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    double-to-int v2, v2

    const/4 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 81
    iget-object v2, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v2, v1, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_2

    .line 86
    :goto_1
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->onManualOperationRelease()V

    const/high16 v2, -0x40800000    # -1.0f

    .line 87
    iput v2, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    .line 88
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mIsFinish:Z

    if-eqz v2, :cond_7

    .line 89
    iget-object v2, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v3, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mHeaderHeight:I

    invoke-interface {v2, v3, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mTouchY:F

    .line 65
    iget-object v2, v0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_7
    :goto_2
    return v1
.end method
