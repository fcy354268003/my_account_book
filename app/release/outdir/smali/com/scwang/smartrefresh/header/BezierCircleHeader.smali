.class public Lcom/scwang/smartrefresh/header/BezierCircleHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "BezierCircleHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# static fields
.field protected static final TARGET_DEGREE:I = 0x10e


# instance fields
.field protected mBackPaint:Landroid/graphics/Paint;

.field protected mBollRadius:F

.field protected mBollY:F

.field protected mFinishRatio:F

.field protected mFrontPaint:Landroid/graphics/Paint;

.field protected mHeadHeight:F

.field protected mHeight:I

.field protected mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mOuterIsStart:Z

.field protected mOuterPaint:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

.field protected mRefreshStart:I

.field protected mRefreshStop:I

.field protected mShowBoll:Z

.field protected mShowBollTail:Z

.field protected mShowOuter:Z

.field protected mSpringRatio:F

.field protected mWaveHeight:F

.field protected mWavePulling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x5a

    .line 48
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    .line 49
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    .line 53
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWavePulling:Z

    .line 65
    sget-object p2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    const/high16 p2, 0x42c80000    # 100.0f

    .line 67
    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 68
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    .line 69
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    const v0, -0xee4401

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    .line 72
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    .line 75
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 88
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeight:I

    .line 90
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v2

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->getRefreshFooter()Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 95
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBoll:Z

    .line 100
    iput-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowOuter:Z

    int-to-float v3, v1

    .line 101
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    const/16 v3, 0x10e

    .line 102
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    .line 103
    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    iput v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    .line 104
    iput v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    .line 107
    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawWave(Landroid/graphics/Canvas;II)V

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawSpringUp(Landroid/graphics/Canvas;I)V

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawBoll(Landroid/graphics/Canvas;I)V

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawOuter(Landroid/graphics/Canvas;I)V

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawFinish(Landroid/graphics/Canvas;I)V

    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    :cond_3
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawBoll(Landroid/graphics/Canvas;I)V
    .locals 4

    .line 150
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBoll:Z

    if-eqz v0, :cond_0

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 151
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 153
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    add-float/2addr v1, v0

    div-float/2addr v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawBollTail(Landroid/graphics/Canvas;IF)V

    :cond_0
    return-void
.end method

.method protected drawBollTail(Landroid/graphics/Canvas;IF)V
    .locals 9

    .line 158
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBollTail:Z

    if-eqz v0, :cond_0

    .line 159
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    add-float/2addr v0, v1

    .line 160
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    mul-float v3, v2, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    int-to-float p2, p2

    div-float v3, p2, v4

    mul-float v2, v2, v2

    mul-float v4, p3, p3

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    mul-float v2, v2, v4

    float-to-double v7, v2

    .line 161
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    add-float/2addr v2, v3

    .line 162
    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v7, v7, v4

    div-float/2addr v7, v5

    sub-float/2addr v6, p3

    mul-float v7, v7, v6

    add-float/2addr v3, v7

    add-float/2addr v4, v3

    .line 165
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 166
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 167
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, v3, v0, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 168
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    sub-float v4, p2, v4

    invoke-virtual {p3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    sub-float v3, p2, v3

    sub-float/2addr p2, v2

    invoke-virtual {p3, v3, v0, p2, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 170
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected drawFinish(Landroid/graphics/Canvas;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 200
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 201
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v9

    .line 202
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    float-to-double v1, v1

    const-wide v10, 0x3fd3333333333333L    # 0.3

    const v12, 0x3e99999a    # 0.3f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    cmpg-double v3, v1, v10

    if-gez v3, :cond_0

    int-to-float v1, v8

    div-float/2addr v1, v14

    .line 203
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float v3, v3, v14

    iget v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    div-float v5, v4, v12

    add-float/2addr v5, v13

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v4, v12

    sub-float v4, v13, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    .line 205
    invoke-static {v9, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 206
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v2, v2

    sub-float v4, v1, v2

    iget v5, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    sub-float v6, v5, v2

    add-float/2addr v1, v2

    add-float/2addr v5, v2

    invoke-direct {v3, v4, v6, v1, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v15, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 210
    :cond_0
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    float-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v2, v10

    if-ltz v6, :cond_2

    float-to-double v2, v1

    cmpg-double v6, v2, v4

    if-gez v6, :cond_2

    sub-float/2addr v1, v12

    const v2, 0x3ecccccd    # 0.4f

    div-float/2addr v1, v2

    .line 214
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    div-float v3, v2, v14

    div-float v6, v2, v14

    sub-float/2addr v2, v6

    mul-float v2, v2, v1

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    int-to-float v2, v8

    div-float/2addr v2, v14

    .line 215
    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v9, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 216
    iget v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    mul-float v6, v6, v14

    sub-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    .line 217
    iput-boolean v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBollTail:Z

    .line 218
    invoke-virtual {v0, v7, v8, v1}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->drawBollTail(Landroid/graphics/Canvas;IF)V

    :cond_1
    const/4 v1, 0x0

    .line 220
    iput-boolean v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBollTail:Z

    .line 223
    :cond_2
    iget v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFinishRatio:F

    float-to-double v2, v1

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_3

    cmpg-float v2, v1, v13

    if-gtz v2, :cond_3

    const v2, 0x3f333333    # 0.7f

    sub-float/2addr v1, v2

    div-float/2addr v1, v12

    int-to-float v2, v8

    div-float/2addr v2, v14

    .line 225
    iget v3, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    sub-float v4, v2, v3

    mul-float v3, v3, v14

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    float-to-int v3, v4

    .line 226
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 227
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    int-to-float v5, v3

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 228
    iget-object v4, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget v5, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    iget v6, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    sub-float/2addr v13, v1

    mul-float v6, v6, v13

    sub-float v1, v5, v6

    sub-int v3, v8, v3

    int-to-float v3, v3

    invoke-virtual {v4, v2, v1, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 230
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected drawOuter(Landroid/graphics/Canvas;I)V
    .locals 12

    .line 175
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowOuter:Z

    if-eqz v0, :cond_5

    .line 176
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 178
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    const/4 v4, 0x3

    const/16 v5, 0xa

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    :goto_0
    add-int/2addr v1, v3

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    .line 179
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    if-eqz v3, :cond_1

    const/16 v4, 0xa

    :cond_1
    add-int/2addr v1, v4

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    .line 180
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    .line 181
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    .line 183
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStop:I

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    sub-int/2addr v1, v3

    if-gez v1, :cond_2

    add-int/lit16 v1, v1, 0x168

    .line 186
    :cond_2
    new-instance v7, Landroid/graphics/RectF;

    int-to-float p2, p2

    div-float/2addr p2, v2

    sub-float v2, p2, v0

    iget v3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    sub-float v4, v3, v0

    add-float/2addr p2, v0

    add-float/2addr v3, v0

    invoke-direct {v7, v2, v4, p2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mRefreshStart:I

    int-to-float v8, p2

    int-to-float v9, v1

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/16 p1, 0x10e

    if-lt v1, p1, :cond_3

    const/4 p1, 0x0

    .line 189
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    goto :goto_1

    :cond_3
    if-gt v1, v5, :cond_4

    const/4 p1, 0x1

    .line 191
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterIsStart:Z

    .line 194
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method protected drawSpringUp(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 135
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mSpringRatio:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p2, v1

    const/high16 v3, 0x40800000    # 4.0f

    .line 136
    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    mul-float v3, v3, v4

    sub-float v3, v2, v3

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, v0

    mul-float v5, v5, v4

    add-float/2addr v3, v5

    float-to-double v5, v0

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 139
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 140
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget v5, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    iget v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mSpringRatio:F

    mul-float v5, v5, v6

    mul-float v5, v5, v1

    sub-float v1, v4, v5

    sub-float/2addr p2, v3

    invoke-virtual {v0, v2, v1, p2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 142
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 144
    :cond_0
    iget p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollY:F

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected drawWave(Landroid/graphics/Canvas;II)V
    .locals 7

    .line 121
    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    int-to-float p3, p3

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 122
    iget p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_0

    .line 123
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 124
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    int-to-float p2, p2

    invoke-virtual {p3, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p3, p2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    mul-float v2, v2, v1

    add-float/2addr v2, v5

    invoke-virtual {p3, p2, v2, v0, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 127
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 128
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p2

    .line 130
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    const/4 p1, 0x0

    .line 321
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowBoll:Z

    .line 322
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mShowOuter:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 324
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 325
    new-instance p2, Lcom/scwang/smartrefresh/header/BezierCircleHeader$2;

    invoke-direct {p2, p0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader$2;-><init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x320

    .line 334
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 335
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x320

    return p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    .line 244
    iput p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeight:I

    if-nez p1, :cond_0

    .line 245
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWavePulling:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWavePulling:Z

    int-to-float p1, p4

    .line 247
    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    sub-int/2addr p3, p4

    const/4 p1, 0x0

    .line 248
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->invalidate()V

    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 3

    const/4 p1, 0x0

    .line 255
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWavePulling:Z

    int-to-float p2, p2

    .line 256
    iput p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    const/high16 p3, 0x40c00000    # 6.0f

    div-float/2addr p2, p3

    .line 257
    iput p2, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBollRadius:F

    .line 258
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 259
    iget p3, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    const v0, 0x3f4ccccd    # 0.8f

    mul-float p3, p3, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mHeadHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 260
    iget v1, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mWaveHeight:F

    aput v1, v0, p1

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput p1, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v1, v1, p3

    neg-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p1, v0, v1

    const v1, 0x3ecccccd    # 0.4f

    mul-float v1, v1, p3

    neg-float v1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x5

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 265
    new-instance v0, Lcom/scwang/smartrefresh/header/BezierCircleHeader$1;

    invoke-direct {v0, p0, p3}, Lcom/scwang/smartrefresh/header/BezierCircleHeader$1;-><init>(Lcom/scwang/smartrefresh/header/BezierCircleHeader;F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x3e8

    .line 315
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 316
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    array-length v0, p1

    if-lez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mBackPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mFrontPaint:Landroid/graphics/Paint;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/BezierCircleHeader;->mOuterPaint:Landroid/graphics/Paint;

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
