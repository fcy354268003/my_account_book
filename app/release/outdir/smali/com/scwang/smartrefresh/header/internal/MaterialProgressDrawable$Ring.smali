.class Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Ring"
.end annotation


# instance fields
.field mArrow:Landroid/graphics/Path;

.field mArrowHeight:I

.field final mArrowPaint:Landroid/graphics/Paint;

.field mArrowScale:F

.field mArrowWidth:I

.field mColorIndex:I

.field mColors:[I

.field mCurrentColor:I

.field mEndTrim:F

.field final mPaint:Landroid/graphics/Paint;

.field mRingCenterRadius:D

.field mRotation:F

.field mShowArrow:Z

.field mStartTrim:F

.field mStartingEndTrim:F

.field mStartingRotation:F

.field mStartingStartTrim:F

.field mStrokeInset:F

.field mStrokeWidth:F

.field final mTempBounds:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;)V
    .locals 2

    .line 480
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->this$0:Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 452
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 453
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 455
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 456
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 457
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mRotation:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 458
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 p1, 0x40200000    # 2.5f

    .line 459
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 481
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 482
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 483
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 485
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 486
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 7

    .line 517
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 520
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 527
    :goto_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v0, v0, v1

    .line 528
    iget-wide v1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v1, v5

    double-to-float v1, v1

    .line 529
    iget-wide v5, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v5, v5, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v5, v2

    double-to-float v2, v5

    .line 535
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 536
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v5, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v5, v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v4, v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v6, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 540
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 542
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr p2, p3

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p2, p3

    .line 543
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    .line 544
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    .line 543
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 545
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private getNextColorIndex()I
    .locals 2

    .line 566
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 8

    .line 493
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 494
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 495
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 497
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v6, v0, v3

    .line 498
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mEndTrim:F

    add-float/2addr v0, v2

    mul-float v0, v0, v3

    sub-float v7, v0, v6

    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    .line 503
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 506
    :cond_0
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    return-void
.end method

.method public getNextColor()I
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mColors:[I

    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getStartingColor()I
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public goToNextColor()V
    .locals 1

    .line 574
    invoke-direct {p0}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public resetOriginals()V
    .locals 1

    const/4 v0, 0x0

    .line 606
    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 607
    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 608
    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 609
    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 610
    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 611
    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mRotation:F

    return-void
.end method

.method public setColorIndex(I)V
    .locals 1

    .line 554
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 555
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mColors:[I

    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget p1, p1, v0

    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method public setInsets(II)V
    .locals 5

    .line 582
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 584
    iget-wide v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const/high16 p2, 0x40000000    # 2.0f

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    float-to-double p1, p1

    sub-double/2addr p1, v0

    goto :goto_1

    .line 585
    :cond_1
    :goto_0
    iget p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_1
    double-to-float p1, p1

    .line 589
    iput p1, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return-void
.end method

.method public storeOriginals()V
    .locals 1

    .line 597
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 598
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 599
    iget v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lcom/scwang/smartrefresh/header/internal/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return-void
.end method
