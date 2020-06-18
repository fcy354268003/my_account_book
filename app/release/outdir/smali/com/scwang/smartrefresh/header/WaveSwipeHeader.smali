.class public Lcom/scwang/smartrefresh/header/WaveSwipeHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "WaveSwipeHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;,
        Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;
    }
.end annotation


# static fields
.field protected static final MAX_PROGRESS_ROTATION_RATE:F = 0.8f


# instance fields
.field protected mCircleView:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

.field protected mLastFirstBounds:F

.field protected mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

.field protected mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 73
    new-instance v1, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-direct {v1, p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    new-instance v1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    invoke-direct {v1, p0, p1}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;-><init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mCircleView:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    sget-object v1, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshPrimaryColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 79
    sget v1, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshAccentColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    if-eqz p2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {v2, p2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->setWaveColor(I)V

    :cond_0
    const/4 p2, 0x1

    if-eqz v1, :cond_1

    .line 84
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    new-array p2, p2, [I

    aput v1, p2, v0

    invoke-virtual {v2, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setColorSchemeColors([I)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    new-array p2, p2, [I

    const/4 v2, -0x1

    aput v2, p2, v0

    invoke-virtual {v1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 88
    :goto_0
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshShadowRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 89
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshShadowRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 90
    sget v0, Lcom/scwang/smartrefresh/header/R$styleable;->WaveSwipeHeader_wshShadowColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {v1, p2, v0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->setShadow(II)V

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static isOver600dp()Z
    .locals 2

    .line 298
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 299
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    .line 251
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mCircleView:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 252
    new-instance p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$2;

    invoke-direct {p2, p0, p1}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$2;-><init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;Landroid/view/View;)V

    const-wide/16 v0, 0xc8

    .line 259
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 260
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mCircleView:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    new-instance v1, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$3;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$3;-><init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 270
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 112
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    .line 113
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mCircleView:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int v0, p1, p3

    .line 119
    div-int/lit8 v0, v0, 0x2

    neg-int p4, p4

    add-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, p4, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const v2, 0x3f7d70a4    # 0.99f

    const/high16 p1, 0x42c60000    # 99.0f

    .line 122
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v3

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v4

    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->onMoving(ZFIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 99
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->setMeasuredDimension(II)V

    .line 100
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    .line 101
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mCircleView:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 102
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    .line 103
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 104
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 105
    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 6

    const/4 p4, 0x0

    if-eqz p1, :cond_6

    .line 152
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, p5, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mCircleView:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    const/high16 p5, 0x3f800000    # 1.0f

    .line 157
    invoke-static {p5, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 158
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    cmpl-float v2, p2, p5

    if-lez v2, :cond_2

    sub-float v2, p2, p5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v4, v2

    mul-float v4, v4, v2

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v4, v2

    cmpg-float p2, p2, p5

    if-gez p2, :cond_3

    const p2, 0x3f4ccccd    # 0.8f

    mul-float v2, v0, p2

    .line 167
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {v5, p4, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 168
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-virtual {p2, p4}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setArrowScale(F)V

    :cond_3
    const/high16 p2, -0x41800000    # -0.25f

    const p4, 0x3ecccccd    # 0.4f

    mul-float v0, v0, p4

    add-float/2addr v0, p2

    mul-float v4, v4, v3

    add-float/2addr v0, v4

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float v0, v0, p2

    .line 172
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 173
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->getCurrentCircleCenterY()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    int-to-float p1, p3

    mul-float p1, p1, p5

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    mul-float v3, v3, p1

    sub-float p2, v1, v3

    mul-float p1, p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    .line 178
    sget-object p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->FIRST:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;

    iget p2, p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->val:F

    sub-float p2, p1, p2

    .line 179
    sget-object p3, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->SECOND:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;

    iget p3, p3, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->val:F

    sub-float p3, p1, p3

    div-float/2addr p3, v1

    .line 180
    iput p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mLastFirstBounds:F

    .line 182
    sget-object p4, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->FIRST:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;

    iget p4, p4, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->val:F

    cmpg-float p4, p1, p4

    if-gez p4, :cond_4

    .line 184
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p2, p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->beginPhase(F)V

    goto :goto_1

    .line 185
    :cond_4
    sget-object p4, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->SECOND:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;

    iget p4, p4, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$VERTICAL_DRAG_THRESHOLD;->val:F

    cmpg-float p4, p1, p4

    if-gez p4, :cond_5

    .line 187
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p3, p1, p2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->appearPhase(FF)V

    goto :goto_1

    .line 190
    :cond_5
    iget-object p4, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p4, p1, p2, p3}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->expandPhase(FFF)V

    goto :goto_1

    .line 195
    :cond_6
    iget p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mLastFirstBounds:F

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, p2, :cond_7

    .line 196
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->showArrow(Z)V

    .line 197
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p1, p4}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 198
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p1, p4, p4}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 199
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    iget p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mLastFirstBounds:F

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->startWaveAnimation(F)V

    .line 200
    iput p4, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mLastFirstBounds:F

    :cond_7
    :goto_1
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0

    const/4 p1, 0x0

    .line 206
    iput p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mLastFirstBounds:F

    .line 207
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->animationDropCircle()V

    .line 208
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setAlpha(I)V

    .line 209
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->start()V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 210
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    .line 211
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    new-instance p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$1;

    invoke-direct {p2, p0}, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$1;-><init>(Lcom/scwang/smartrefresh/header/WaveSwipeHeader;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mCircleView:Lcom/scwang/smartrefresh/header/WaveSwipeHeader$ProgressAnimationImageView;

    .line 227
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 228
    sget-object p2, Lcom/scwang/smartrefresh/header/WaveSwipeHeader$4;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->showArrow(Z)V

    .line 241
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 242
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p1, p2, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 243
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    iget p3, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mLastFirstBounds:F

    invoke-virtual {p1, p3}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->startWaveAnimation(F)V

    .line 244
    iput p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mLastFirstBounds:F

    goto :goto_0

    .line 234
    :cond_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p2, p3}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->showArrow(Z)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 237
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setAlpha(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs setColorSchemeColorIds([I)V
    .locals 4

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 140
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    .line 141
    aget v3, p1, v3

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    array-length v0, p1

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mWaveView:Lcom/scwang/smartrefresh/header/waveswipe/WaveView;

    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->setWaveColor(I)V

    .line 282
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 283
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaveSwipeHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    new-array v3, v2, [I

    aget p1, p1, v2

    aput p1, v3, v1

    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setColorSchemeColors([I)V

    :cond_0
    return-void
.end method
