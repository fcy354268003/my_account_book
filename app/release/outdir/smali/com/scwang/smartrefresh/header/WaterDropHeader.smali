.class public Lcom/scwang/smartrefresh/header/WaterDropHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "WaterDropHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# static fields
.field protected static final MAX_PROGRESS_ANGLE:F = 0.8f


# instance fields
.field protected mImageView:Landroid/widget/ImageView;

.field protected mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

.field protected mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

.field protected mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field protected mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/WaterDropHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 59
    iget-boolean v4, v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->scale:Z

    if-eqz v4, :cond_0

    .line 60
    iput-object v3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    new-instance p2, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    invoke-direct {p2, p1}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 65
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->updateCompleteState(I)V

    .line 66
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 68
    new-instance p2, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    invoke-direct {p2}, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    .line 69
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    .line 70
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 71
    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v2

    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p2, v0, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mImageView:Landroid/widget/ImageView;

    .line 74
    new-instance p1, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    .line 76
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setAlpha(I)V

    .line 77
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    const/4 p2, 0x6

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 78
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mImageView:Landroid/widget/ImageView;

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v0

    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0xff6634
        -0xbbbc
        -0x996700
        -0x559934
        -0x7800
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 128
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 130
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 131
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    .line 132
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 136
    invoke-virtual {v4}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->getMaxCircleRadius()I

    move-result v4

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v4, v0

    int-to-float v0, v4

    .line 138
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    .line 134
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 140
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;->stop()V

    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 104
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mImageView:Landroid/widget/ImageView;

    .line 105
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 109
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 110
    div-int/lit8 p3, p3, 0x2

    div-int/lit8 v0, p4, 0x2

    sub-int v1, p3, v0

    add-int v2, v1, p4

    const/4 v3, 0x0

    add-int/2addr p5, v3

    .line 112
    invoke-virtual {p2, v1, v3, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 116
    div-int/lit8 v2, p5, 0x2

    sub-int/2addr p3, v2

    sub-int/2addr v0, v2

    add-int v2, v0, v1

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_0

    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, p4

    sub-int v0, p2, v1

    :cond_0
    add-int/2addr p5, p3

    add-int/2addr v1, v0

    .line 121
    invoke-virtual {p1, p3, v0, p5, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 84
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onMeasure(II)V

    .line 85
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mImageView:Landroid/widget/ImageView;

    .line 86
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 89
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 90
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 88
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 92
    invoke-virtual {v1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 98
    invoke-static {v2, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 4

    if-nez p1, :cond_0

    .line 160
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p2, v0, :cond_1

    .line 161
    :cond_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    const/4 v0, 0x0

    .line 162
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p5, p4

    invoke-virtual {p2, v0, p5}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->updateCompleteState(II)V

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->postInvalidate()V

    :cond_1
    if-eqz p1, :cond_2

    int-to-float p1, p3

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    int-to-float p5, p4

    div-float/2addr p1, p5

    .line 169
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 170
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 171
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    sub-int/2addr p3, p4

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    mul-float v0, p5, p4

    .line 172
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    div-float/2addr p3, p5

    const/4 p5, 0x0

    invoke-static {p5, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p3, v0

    float-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 174
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float p3, v0

    mul-float p3, p3, p4

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v1, p1, v0

    const/high16 v2, -0x41800000    # -0.25f

    const v3, 0x3ecccccd    # 0.4f

    mul-float v3, v3, p1

    add-float/2addr v3, v2

    mul-float p3, p3, p4

    add-float/2addr v3, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float v3, v3, p3

    .line 178
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->showArrow(Z)V

    .line 179
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-virtual {p3, p5, p4}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 180
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p3, p1}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setArrowScale(F)V

    .line 181
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgress:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-virtual {p1, v3}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;->setProgressRotation(F)V

    :cond_2
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 2

    .line 216
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mImageView:Landroid/widget/ImageView;

    .line 217
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 218
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mProgressDrawable:Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/internal/ProgressDrawable;->start()V

    const/16 p3, 0x8

    .line 219
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lcom/scwang/smartrefresh/header/WaterDropHeader$1;

    invoke-direct {p3, p0, p2}, Lcom/scwang/smartrefresh/header/WaterDropHeader$1;-><init>(Lcom/scwang/smartrefresh/header/WaterDropHeader;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 188
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mImageView:Landroid/widget/ImageView;

    .line 189
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 190
    sget-object v0, Lcom/scwang/smartrefresh/header/WaterDropHeader$2;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p3, 0x8

    .line 208
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 192
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    array-length v0, p1

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->mWaterDropView:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->setIndicatorColor(I)V

    :cond_0
    return-void
.end method
