.class public Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "BezierRadarHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;
    }
.end annotation


# static fields
.field protected static final PROPERTY_DOT_ALPHA:B = 0x2t

.field protected static final PROPERTY_RADAR_ANGLE:B = 0x4t

.field protected static final PROPERTY_RADAR_SCALE:B = 0x0t

.field protected static final PROPERTY_RIPPLE_RADIUS:B = 0x3t

.field protected static final PROPERTY_WAVE_HEIGHT:B = 0x1t


# instance fields
.field protected mAccentColor:I

.field protected mAnimatorSet:Landroid/animation/Animator;

.field protected mDotAlpha:F

.field protected mDotFraction:F

.field protected mDotRadius:F

.field protected mEnableHorizontalDrag:Z

.field protected mManualAccentColor:Z

.field protected mManualPrimaryColor:Z

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

.field protected mPrimaryColor:I

.field protected mRadarAngle:I

.field protected mRadarCircle:F

.field protected mRadarRadius:F

.field protected mRadarRect:Landroid/graphics/RectF;

.field protected mRadarScale:F

.field protected mRippleRadius:F

.field protected mWaveHeight:I

.field protected mWaveOffsetX:I

.field protected mWaveOffsetY:I

.field protected mWavePulling:Z

.field protected mWaveTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetX:I

    .line 49
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetY:I

    .line 56
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRadius:F

    .line 58
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarCircle:F

    .line 59
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    .line 62
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0, v0, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    .line 73
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mSpinnerStyle:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    .line 77
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    .line 78
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x40e00000    # 7.0f

    .line 81
    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotRadius:F

    const/high16 v3, 0x41a00000    # 20.0f

    .line 82
    invoke-static {v3}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRadius:F

    .line 83
    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarCircle:F

    .line 84
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x42c80000    # 100.0f

    .line 86
    invoke-static {v2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x3e8

    .line 89
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 90
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    const/16 v0, 0x10e

    .line 91
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    goto :goto_0

    .line 93
    :cond_0
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    .line 96
    :goto_0
    sget-object v0, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 98
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlEnableHorizontalDrag:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    .line 99
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 100
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlPrimaryColor:I

    const v0, -0xddddde

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 101
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlAccentColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualAccentColor:Z

    .line 102
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->BezierRadarHeader_srlPrimaryColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualPrimaryColor:Z

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetY:I

    .line 125
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->drawWave(Landroid/graphics/Canvas;I)V

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->drawDot(Landroid/graphics/Canvas;II)V

    .line 127
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->drawRadar(Landroid/graphics/Canvas;II)V

    .line 128
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->drawRipple(Landroid/graphics/Canvas;II)V

    .line 129
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawDot(Landroid/graphics/Canvas;II)V
    .locals 17

    move-object/from16 v0, p0

    .line 154
    iget v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 155
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAccentColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-static/range {p3 .. p3}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->px2dp(I)F

    move-result v1

    move/from16 v3, p2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    .line 158
    iget v6, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotFraction:F

    mul-float v7, v5, v6

    cmpl-float v8, v6, v4

    if-lez v8, :cond_0

    sub-float v8, v6, v4

    mul-float v8, v8, v5

    div-float v5, v8, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    sub-float/2addr v7, v5

    move/from16 v5, p3

    int-to-float v5, v5

    .line 159
    iget v6, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotFraction:F

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v9, v6, v4

    if-lez v9, :cond_1

    sub-float v2, v6, v4

    mul-float v2, v2, v5

    div-float/2addr v2, v8

    div-float/2addr v2, v6

    :cond_1
    sub-float/2addr v5, v2

    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0xff

    const/4 v9, 0x7

    if-ge v2, v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v10, v2, -0x4

    .line 162
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v11

    div-int/2addr v11, v9

    mul-int/lit8 v11, v11, 0x2

    rsub-int/lit8 v9, v11, 0x1

    mul-int/lit16 v9, v9, 0xff

    int-to-float v6, v9

    .line 163
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotAlpha:F

    mul-float v11, v11, v6

    float-to-double v11, v11

    float-to-double v13, v1

    const-wide/high16 v15, 0x4089000000000000L    # 800.0

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v15

    move/from16 p3, v5

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v4, v15, v4

    sub-double/2addr v15, v4

    mul-double v11, v11, v15

    double-to-int v4, v11

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    iget v4, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotRadius:F

    const/high16 v5, 0x41200000    # 10.0f

    div-float v5, v1, v5

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v5, v9

    div-float v5, v9, v5

    sub-float v5, v9, v5

    mul-float v4, v4, v5

    div-float v5, v3, v8

    div-float v6, v4, v8

    sub-float/2addr v5, v6

    int-to-float v6, v10

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    div-float v6, p3, v8

    .line 165
    iget-object v10, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    invoke-virtual {v11, v5, v6, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move/from16 v5, p3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    .line 167
    :cond_2
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_3
    return-void
.end method

.method protected drawRadar(Landroid/graphics/Canvas;II)V
    .locals 12

    .line 179
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRadius:F

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    mul-float v0, v0, v1

    .line 181
    iget v2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarCircle:F

    mul-float v2, v2, v1

    .line 183
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAccentColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    int-to-float p3, p3

    div-float/2addr p3, v1

    .line 185
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 187
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    add-float/2addr v2, v0

    .line 188
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPrimaryColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x55000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    sub-float v3, p2, v0

    sub-float v4, p3, v0

    add-float v5, p2, v0

    add-float/2addr v0, p3

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 193
    iget-object v7, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    const/high16 v8, 0x43870000    # 270.0f

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    int-to-float v9, v0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 196
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    sub-float v1, p2, v2

    sub-float v3, p3, v2

    add-float/2addr p2, v2

    add-float/2addr p3, v2

    invoke-virtual {v0, v1, v3, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 198
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRect:Landroid/graphics/RectF;

    const/high16 v6, 0x43870000    # 270.0f

    iget p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarAngle:I

    int-to-float v7, p2

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 200
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method protected drawRipple(Landroid/graphics/Canvas;II)V
    .locals 2

    .line 211
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRippleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    .line 213
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRippleRadius:F

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected drawWave(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 141
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 142
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetX:I

    if-ltz v1, :cond_0

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    int-to-float v1, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    :goto_0
    iget v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    iget v4, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveHeight:I

    add-int/2addr v4, v3

    int-to-float v4, v4

    int-to-float p2, p2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, p2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 143
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPrimaryColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public isSupportHorizontalDrag()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->onDetachedFromWindow()V

    .line 111
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 113
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    .line 272
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 274
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    const/4 p1, 0x0

    .line 275
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    .line 280
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 281
    iget p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetY:I

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    .line 282
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 283
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarRadius:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 284
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    new-instance p2, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 286
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/16 p1, 0x190

    return p1
.end method

.method public onHorizontalDrag(FII)V
    .locals 0

    .line 321
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetX:I

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    .line 221
    iput p3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetY:I

    if-nez p1, :cond_0

    .line 222
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWavePulling:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWavePulling:Z

    .line 224
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    const p1, 0x3ff33333    # 1.9f

    const/4 p5, 0x0

    sub-int/2addr p3, p4

    .line 225
    invoke-static {p5, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveHeight:I

    .line 226
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotFraction:F

    .line 229
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 7

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    .line 235
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveTop:I

    const/4 p2, 0x0

    .line 236
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWavePulling:Z

    .line 238
    new-instance p3, Lcom/scwang/smartrefresh/layout/util/SmartUtil;

    sget v0, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->INTERPOLATOR_DECELERATE:I

    invoke-direct {p3, v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;-><init>(I)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 240
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 241
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    new-instance v2, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    invoke-direct {v2, p0, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v0, [F

    .line 244
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 245
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    new-instance p3, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    invoke-direct {p3, p0, p2}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {v2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p3, v0, [I

    .line 248
    fill-array-data p3, :array_2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    const-wide/16 v3, 0x2d0

    .line 249
    invoke-virtual {p3, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    .line 250
    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 251
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    new-instance v3, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/animation/Animator;

    aput-object v1, v6, p2

    aput-object v2, v6, p1

    aput-object p3, v6, v0

    .line 255
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 256
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    const/4 p3, 0x6

    new-array p3, p3, [I

    .line 258
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveHeight:I

    aput v1, p3, p2

    aput p2, p3, p1

    int-to-float v2, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v6

    float-to-int v2, v2

    neg-int v2, v2

    aput v2, p3, v0

    aput p2, p3, v5

    int-to-float v0, v1

    const v1, 0x3ecccccd    # 0.4f

    mul-float v0, v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    aput v0, p3, v4

    const/4 v0, 0x5

    aput p2, p3, v0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 262
    new-instance p3, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;

    invoke-direct {p3, p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$AnimatorUpdater;-><init>(Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;B)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    new-instance p1, Lcom/scwang/smartrefresh/layout/util/SmartUtil;

    sget p3, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->INTERPOLATOR_DECELERATE:I

    invoke-direct {p1, p3}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;-><init>(I)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x320

    .line 264
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 265
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 267
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAnimatorSet:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x168
    .end array-data
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .locals 0

    .line 292
    sget-object p1, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader$1;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p3}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 295
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mDotAlpha:F

    const/4 p1, 0x0

    .line 296
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRadarScale:F

    .line 297
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mRippleRadius:F

    :goto_0
    return-void
.end method

.method public setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 0

    .line 335
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mAccentColor:I

    const/4 p1, 0x1

    .line 336
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualAccentColor:Z

    return-object p0
.end method

.method public setAccentColorId(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 1

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    return-object p0
.end method

.method public setEnableHorizontalDrag(Z)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mEnableHorizontalDrag:Z

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 355
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mWaveOffsetX:I

    :cond_0
    return-object p0
.end method

.method public setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 0

    .line 329
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mPrimaryColor:I

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualPrimaryColor:Z

    return-object p0
.end method

.method public setPrimaryColorId(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;
    .locals 1

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    return-object p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualPrimaryColor:Z

    if-nez v0, :cond_0

    .line 305
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setPrimaryColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 306
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualPrimaryColor:Z

    .line 308
    :cond_0
    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualAccentColor:Z

    if-nez v0, :cond_1

    .line 309
    aget p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->setAccentColor(I)Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;

    .line 310
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/BezierRadarHeader;->mManualAccentColor:Z

    :cond_1
    return-void
.end method
