.class public Lcom/scwang/smartrefresh/header/StoreHouseHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "StoreHouseHeader.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;
    }
.end annotation


# static fields
.field protected static final mBarDarkAlpha:F = 0.4f

.field protected static final mFromAlpha:F = 1.0f

.field protected static final mInternalAnimationFactor:F = 0.7f

.field protected static final mLoadingAniItemDuration:I = 0x190

.field protected static final mToAlpha:F = 0.4f


# instance fields
.field protected mAniController:Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;

.field protected mBackgroundColor:I

.field protected mDrawZoneHeight:I

.field protected mDrawZoneWidth:I

.field protected mDropHeight:I

.field protected mEnableFadeAnimation:Z

.field protected mHorizontalRandomness:I

.field protected mIsInLoading:Z

.field public mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mLineWidth:I

.field protected mLoadingAniDuration:I

.field protected mLoadingAniSegDuration:I

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field protected mProgress:F

.field protected mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field protected mScale:F

.field protected mTextColor:I

.field protected mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mScale:F

    const/4 v2, -0x1

    .line 41
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLineWidth:I

    .line 42
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDropHeight:I

    .line 43
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mHorizontalRandomness:I

    const/4 v3, 0x0

    .line 46
    iput v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mProgress:F

    .line 48
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDrawZoneWidth:I

    .line 49
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDrawZoneHeight:I

    .line 50
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mOffsetX:I

    .line 51
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mOffsetY:I

    const/16 v3, 0x3e8

    .line 56
    iput v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLoadingAniDuration:I

    .line 57
    iput v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    .line 60
    iput v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mTextColor:I

    .line 61
    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mBackgroundColor:I

    .line 62
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mIsInLoading:Z

    .line 63
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mEnableFadeAnimation:Z

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mMatrix:Landroid/graphics/Matrix;

    .line 66
    new-instance v0, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mAniController:Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;

    .line 67
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mTransformation:Landroid/view/animation/Transformation;

    .line 78
    invoke-static {v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLineWidth:I

    const/high16 v0, 0x42200000    # 40.0f

    .line 79
    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDropHeight:I

    .line 80
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mHorizontalRandomness:I

    const v1, -0xcccccd

    .line 81
    iput v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mBackgroundColor:I

    const v1, -0x333334

    .line 82
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->setTextColor(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 84
    sget-object v1, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhLineWidth:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLineWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLineWidth:I

    .line 86
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhDropHeight:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDropHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDropHeight:I

    .line 87
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhEnableFadeAnimation:I

    iget-boolean v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mEnableFadeAnimation:Z

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mEnableFadeAnimation:Z

    .line 88
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 89
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->StoreHouseHeader_shhText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->initWithString(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    goto :goto_0

    :cond_0
    const-string p2, "StoreHouse"

    .line 91
    invoke-virtual {p0, p2}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->initWithString(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    iget p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDrawZoneHeight:I

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mProgress:F

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;

    .line 123
    iget v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mOffsetX:I

    int-to-float v6, v6

    iget-object v7, v5, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    .line 124
    iget v7, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mOffsetY:I

    int-to-float v7, v7

    iget-object v8, v5, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    .line 126
    iget-boolean v8, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mIsInLoading:Z

    if-eqz v8, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v8

    iget-object v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v5, v8, v9, v10}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 128
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4

    :cond_1
    const/4 v8, 0x0

    cmpl-float v9, v2, v8

    if-nez v9, :cond_2

    .line 132
    iget v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mHorizontalRandomness:I

    invoke-virtual {v5, v6}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->resetPosition(I)V

    goto :goto_5

    :cond_2
    int-to-float v9, v4

    const v10, 0x3e99999a    # 0.3f

    mul-float v9, v9, v10

    int-to-float v11, v1

    div-float/2addr v9, v11

    sub-float/2addr v10, v9

    const v11, 0x3ecccccd    # 0.4f

    cmpl-float v12, v2, v3

    if-eqz v12, :cond_5

    sub-float v10, v3, v10

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_3

    goto :goto_3

    :cond_3
    cmpg-float v10, v2, v9

    if-gtz v10, :cond_4

    goto :goto_2

    :cond_4
    sub-float v8, v2, v9

    const v9, 0x3f333333    # 0.7f

    div-float/2addr v8, v9

    .line 148
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 150
    :goto_2
    iget v9, v5, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->translationX:F

    sub-float v10, v3, v8

    mul-float v9, v9, v10

    add-float/2addr v6, v9

    .line 151
    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDropHeight:I

    neg-int v9, v9

    int-to-float v9, v9

    mul-float v9, v9, v10

    add-float/2addr v7, v9

    .line 152
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 153
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float v10, v10, v8

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 154
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 155
    iget-object v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    mul-float v8, v8, v11

    .line 156
    invoke-virtual {v5, v8}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setAlpha(F)V

    .line 157
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_4

    .line 141
    :cond_5
    :goto_3
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    invoke-virtual {v5, v11}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setAlpha(F)V

    .line 160
    :goto_4
    invoke-virtual {v5, p1}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 163
    :cond_6
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mIsInLoading:Z

    if-eqz v1, :cond_7

    .line 164
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 166
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 168
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public initWithPointList(Ljava/util/List;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Lcom/scwang/smartrefresh/header/StoreHouseHeader;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 238
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 239
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    .line 240
    new-instance v7, Landroid/graphics/PointF;

    aget v8, v6, v2

    invoke-static {v8}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mScale:F

    mul-float v8, v8, v9

    aget v9, v6, v1

    invoke-static {v9}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mScale:F

    mul-float v9, v9, v10

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 241
    new-instance v8, Landroid/graphics/PointF;

    const/4 v9, 0x2

    aget v9, v6, v9

    invoke-static {v9}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mScale:F

    mul-float v9, v9, v10

    const/4 v10, 0x3

    aget v6, v6, v10

    invoke-static {v6}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->dp2px(F)I

    move-result v6

    int-to-float v6, v6

    iget v10, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mScale:F

    mul-float v6, v6, v10

    invoke-direct {v8, v9, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 243
    iget v6, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 244
    iget v6, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 246
    iget v4, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 247
    iget v5, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 249
    new-instance v12, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;

    iget v9, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mTextColor:I

    iget v13, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLineWidth:I

    move-object v4, v12

    move v5, v3

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v13

    invoke-direct/range {v4 .. v9}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;-><init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .line 250
    iget v4, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mHorizontalRandomness:I

    invoke-virtual {v12, v4}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->resetPosition(I)V

    .line 251
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v10

    move v5, v11

    goto :goto_1

    :cond_1
    float-to-double v1, v4

    .line 253
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDrawZoneWidth:I

    float-to-double v1, v5

    .line 254
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDrawZoneHeight:I

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-object p0
.end method

.method public initWithString(Ljava/lang/String;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 1

    const/16 v0, 0x19

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->initWithString(Ljava/lang/String;I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    return-object p0
.end method

.method public initWithString(Ljava/lang/String;I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 1

    int-to-float p2, p2

    const v0, 0x3c23d70a    # 0.01f

    mul-float p2, p2, v0

    const/16 v0, 0xe

    .line 206
    invoke-static {p1, p2, v0}, Lcom/scwang/smartrefresh/header/storehouse/StoreHousePath;->getPath(Ljava/lang/String;FI)Ljava/util/List;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->initWithPointList(Ljava/util/List;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    return-object p0
.end method

.method public initWithStringArray(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 9

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const-string v5, ","

    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v6, v5, [F

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 219
    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 221
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->initWithPointList(Ljava/util/List;)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    return-object p0
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 2

    const/4 p1, 0x0

    .line 287
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mIsInLoading:Z

    .line 288
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mAniController:Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->stop()V

    if-eqz p2, :cond_0

    .line 289
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mEnableFadeAnimation:Z

    if-eqz p2, :cond_0

    .line 291
    new-instance p1, Lcom/scwang/smartrefresh/header/StoreHouseHeader$1;

    invoke-direct {p1, p0}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$1;-><init>(Lcom/scwang/smartrefresh/header/StoreHouseHeader;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0xfa

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;

    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mHorizontalRandomness:I

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->resetPosition(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 267
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mBackgroundColor:I

    invoke-interface {p1, p0, p2}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    .line 104
    invoke-super {p0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    .line 102
    invoke-super {p0, p1, p2}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->setMeasuredDimension(II)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDrawZoneWidth:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mOffsetX:I

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDrawZoneHeight:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mOffsetY:I

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDropHeight:I

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 0

    const p1, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, p1

    .line 272
    iput p2, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mProgress:F

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0

    const/4 p1, 0x1

    .line 279
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mIsInLoading:Z

    .line 280
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mAniController:Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader$AniController;->start()V

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDropHeight(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 0

    .line 196
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mDropHeight:I

    return-object p0
.end method

.method public setLineWidth(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 2

    .line 180
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLineWidth:I

    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;

    invoke-virtual {v1, p1}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setLineWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setLoadingAniDuration(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 0

    .line 174
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLoadingAniDuration:I

    .line 175
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    return-object p0
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 323
    aget v0, p1, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mBackgroundColor:I

    .line 324
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mRefreshKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_0

    .line 325
    iget v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mBackgroundColor:I

    invoke-interface {v0, p0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 327
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 328
    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->setTextColor(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;

    :cond_1
    return-void
.end method

.method public setScale(F)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 0

    .line 228
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mScale:F

    return-object p0
.end method

.method public setTextColor(I)Lcom/scwang/smartrefresh/header/StoreHouseHeader;
    .locals 2

    .line 188
    iput p1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mTextColor:I

    const/4 v0, 0x0

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/StoreHouseHeader;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;

    invoke-virtual {v1, p1}, Lcom/scwang/smartrefresh/header/storehouse/StoreHouseBarItem;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
