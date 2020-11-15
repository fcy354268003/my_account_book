.class public Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "TwoLevelHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# instance fields
.field protected mEnableFloorRefresh:Z

.field protected mEnablePullToCloseTwoLevel:Z

.field protected mEnableTwoLevel:Z

.field protected mFloorBottomDragLayoutRate:F

.field protected mFloorDuration:I

.field protected mFloorOpenLayoutRate:F

.field protected mFloorRate:F

.field protected mHeaderHeight:I

.field protected mMaxRate:F

.field protected mPercent:F

.field protected mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field protected mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mRefreshRate:F

.field protected mSpinner:I

.field protected mTwoLevelListener:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 35
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    const v0, 0x3ff33333    # 1.9f

    .line 36
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRate:F

    const/4 v1, 0x1

    .line 38
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    .line 39
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    .line 40
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableFloorRefresh:Z

    const/16 v1, 0x3e8

    .line 42
    iput v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    .line 43
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorOpenLayoutRate:F

    const v0, 0x3e2aaaab

    .line 44
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorBottomDragLayoutRate:F

    .line 62
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 64
    sget-object v0, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlMaxRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    .line 67
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    .line 68
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlRefreshRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRate:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRate:F

    .line 69
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlMaxRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    .line 70
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    .line 71
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlRefreshRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRate:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRate:F

    .line 72
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorDuration:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    .line 73
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlEnableTwoLevel:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    .line 74
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlEnableFloorRefresh:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableFloorRefresh:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableFloorRefresh:Z

    .line 75
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorOpenLayoutRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorOpenLayoutRate:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorOpenLayoutRate:F

    .line 76
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorBottomDragLayoutRate:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorBottomDragLayoutRate:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorBottomDragLayoutRate:F

    .line 77
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlEnablePullToCloseTwoLevel:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public finishTwoLevel()Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method protected moveSpinner(I)V
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 227
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinner:I

    if-eq v1, p1, :cond_1

    if-eqz v0, :cond_1

    .line 228
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinner:I

    .line 229
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_0

    .line 231
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 232
    :cond_0
    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_1

    .line 233
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onAttachedToWindow()V

    .line 102
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 103
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onDetachedFromWindow()V

    .line 112
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 86
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onFinishInflate()V

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 89
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 90
    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_0

    .line 91
    move-object v0, v2

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 92
    move-object v0, v2

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mWrappedInternal:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 93
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-int v2, p3, p2

    int-to-float v2, v2

    mul-float v2, v2, v1

    int-to-float v1, p2

    div-float/2addr v2, v1

    .line 145
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mHeaderHeight:I

    if-nez v1, :cond_1

    .line 146
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mHeaderHeight:I

    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 148
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 149
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-nez v1, :cond_2

    .line 152
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_2

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 155
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 156
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    :cond_2
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mHeaderHeight:I

    .line 160
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 161
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    iget v2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorOpenLayoutRate:F

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorBottomDragLayoutRate:F

    invoke-interface {p1, v1, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestFloorParams(IFF)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 162
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, p0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 163
    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 121
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 122
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 123
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->setMeasuredDimension(II)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onMeasure(II)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 7

    .line 205
    invoke-virtual {p0, p3}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->moveSpinner(I)V

    .line 206
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 207
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 209
    invoke-interface/range {v0 .. v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_0
    if-eqz p1, :cond_5

    .line 212
    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    cmpg-float p1, p1, p3

    if-gez p1, :cond_1

    cmpl-float p1, p2, p3

    if-ltz p1, :cond_1

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    if-eqz p1, :cond_1

    .line 213
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 214
    :cond_1
    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRate:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    .line 215
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 216
    :cond_2
    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_3

    cmpg-float p1, p2, p3

    if-gez p1, :cond_3

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableFloorRefresh:Z

    if-eqz p1, :cond_3

    .line 217
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    .line 218
    :cond_3
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableFloorRefresh:Z

    if-nez p1, :cond_4

    invoke-interface {v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getState()Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    move-result-object p1

    sget-object p3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, p3, :cond_4

    .line 219
    sget-object p1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 221
    :cond_4
    :goto_0
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mPercent:F

    :cond_5
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_7

    .line 172
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p3, v1, :cond_0

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableFloorRefresh:Z

    if-nez v1, :cond_0

    .line 173
    sget-object p3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 175
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 176
    sget-object p2, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p2, v1, :cond_3

    if-eq p2, v2, :cond_7

    const/4 p1, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_7

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    if-eq p1, p0, :cond_7

    .line 196
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 190
    :cond_2
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    if-eq p1, p0, :cond_7

    .line 191
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    div-int/2addr p2, v2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 178
    :cond_3
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    if-eq p2, p0, :cond_4

    .line 179
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    div-int/2addr p3, v2

    int-to-long v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 181
    :cond_4
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p2, :cond_7

    .line 183
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mTwoLevelListener:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    if-eqz p3, :cond_6

    .line 184
    invoke-interface {p3, p1}, Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;->onTwoLevel(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_0
    invoke-interface {p2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_7
    :goto_1
    return-void
.end method

.method public openTwoLevel(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_2

    .line 403
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mTwoLevelListener:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 404
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;->onTwoLevel(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Z

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
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_2
    return-object p0
.end method

.method public setEnablePullToCloseTwoLevel(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 325
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnablePullToCloseTwoLevel:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 327
    invoke-interface {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method public setEnableTwoLevel(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 358
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mEnableTwoLevel:Z

    return-object p0
.end method

.method public setFloorDuration(I)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 368
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorDuration:I

    return-object p0
.end method

.method public setFloorRate(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 338
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mFloorRate:F

    return-object p0
.end method

.method public setMaxRate(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 1

    .line 307
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 308
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    .line 309
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mHeaderHeight:I

    .line 312
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mMaxRate:F

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_0
    return-object p0
.end method

.method public setOnTwoLevelListener(Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mTwoLevelListener:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    return-object p0
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 262
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;

    move-result-object p1

    return-object p1
.end method

.method public setRefreshHeader(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 1

    if-eqz p1, :cond_5

    .line 275
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, -0x2

    .line 285
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 286
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 287
    instance-of p3, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p3, :cond_3

    .line 288
    move-object v0, p2

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 290
    :cond_3
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object p2

    sget-object p3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne p2, p3, :cond_4

    .line 291
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 293
    :cond_4
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    invoke-virtual {p0, p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :goto_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 296
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mWrappedInternal:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    :cond_5
    return-object p0
.end method

.method public setRefreshRate(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 348
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->mRefreshRate:F

    return-object p0
.end method
