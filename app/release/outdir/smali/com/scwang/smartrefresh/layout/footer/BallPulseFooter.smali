.class public Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "BallPulseFooter.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshFooter;


# instance fields
.field protected mAnimatingColor:I

.field protected mCircleSpacing:F

.field protected mInterpolator:Landroid/animation/TimeInterpolator;

.field protected mIsStarted:Z

.field protected mManualAnimationColor:Z

.field protected mManualNormalColor:Z

.field protected mNormalColor:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v1, -0x111112

    .line 39
    iput v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mNormalColor:I

    const v1, -0x18a6ba

    .line 40
    iput v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mAnimatingColor:I

    const-wide/16 v1, 0x0

    .line 44
    iput-wide v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mStartTime:J

    .line 45
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mIsStarted:Z

    .line 46
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/high16 v1, 0x42700000    # 60.0f

    .line 58
    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 60
    sget-object v1, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 68
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->values:[Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    sget v1, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter_srlClassicsSpinnerStyle:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->ordinal:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object p2, p2, v1

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 70
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter_srlNormalColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter_srlNormalColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->setNormalColor(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    .line 73
    :cond_0
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter_srlAnimatingColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 74
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BallPulseFooter_srlAnimatingColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->setAnimatingColor(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p1, 0x40800000    # 4.0f

    .line 79
    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mCircleSpacing:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mCircleSpacing:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v4, v7

    int-to-float v2, v2

    div-float/2addr v2, v6

    mul-float v7, v4, v6

    add-float/2addr v5, v7

    sub-float/2addr v2, v5

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    :goto_0
    const/4 v10, 0x3

    if-ge v5, v10, :cond_2

    .line 98
    iget-wide v10, v0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mStartTime:J

    sub-long v10, v8, v10

    add-int/lit8 v12, v5, 0x1

    mul-int/lit8 v13, v12, 0x78

    int-to-long v13, v13

    sub-long/2addr v10, v13

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    cmp-long v16, v10, v13

    if-lez v16, :cond_0

    const-wide/16 v13, 0x2ee

    .line 99
    rem-long/2addr v10, v13

    long-to-float v10, v10

    const v11, 0x443b8000    # 750.0f

    div-float/2addr v10, v11

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 100
    :goto_1
    iget-object v11, v0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v11, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v10

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v5

    mul-float v11, v7, v5

    add-float/2addr v11, v2

    .line 104
    iget v13, v0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mCircleSpacing:F

    mul-float v13, v13, v5

    add-float/2addr v11, v13

    .line 105
    invoke-virtual {v1, v11, v3}, Landroid/graphics/Canvas;->translate(FF)V

    float-to-double v13, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    const v5, 0x3f333333    # 0.7f

    cmpg-double v11, v13, v16

    if-gez v11, :cond_1

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float v10, v10, v6

    mul-float v10, v10, v5

    sub-float/2addr v11, v10

    .line 109
    invoke-virtual {v1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_2

    :cond_1
    mul-float v10, v10, v6

    mul-float v10, v10, v5

    const v5, 0x3ecccccd    # 0.4f

    sub-float/2addr v10, v5

    .line 112
    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 115
    :goto_2
    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v15, v15, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v5, v12

    goto :goto_0

    .line 119
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 121
    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mIsStarted:Z

    if-eqz v1, :cond_3

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mIsStarted:Z

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mStartTime:J

    .line 143
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mNormalColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return p1
.end method

.method public onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0

    .line 130
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mIsStarted:Z

    if-eqz p1, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mIsStarted:Z

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mStartTime:J

    .line 136
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mAnimatingColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setAnimatingColor(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;
    .locals 1

    .line 181
    iput p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mAnimatingColor:I

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mManualAnimationColor:Z

    .line 183
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public setNormalColor(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;
    .locals 1

    .line 172
    iput p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mNormalColor:I

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mManualNormalColor:Z

    .line 174
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-object p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mManualAnimationColor:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 150
    aget v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->setAnimatingColor(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    .line 151
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mManualAnimationColor:Z

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mManualNormalColor:Z

    if-nez v0, :cond_3

    .line 154
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 155
    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->setNormalColor(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    goto :goto_0

    .line 156
    :cond_1
    array-length v0, p1

    if-lez v0, :cond_2

    const v0, -0x66000001

    .line 157
    aget p1, p1, v2

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->setNormalColor(I)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;

    .line 159
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mManualNormalColor:Z

    :cond_3
    return-void
.end method

.method public setSpinnerStyle(Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;)Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/footer/BallPulseFooter;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    return-object p0
.end method
