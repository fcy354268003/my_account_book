.class public Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;
.super Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;
.source "ArrowDrawable.java"


# instance fields
.field private mHeight:I

.field private mPath:Landroid/graphics/Path;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/scwang/smartrefresh/layout/internal/PaintDrawable;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mWidth:I

    .line 16
    iput v0, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mHeight:I

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 24
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 25
    iget v2, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mWidth:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mHeight:I

    if-eq v2, v0, :cond_1

    :cond_0
    mul-int/lit8 v2, v1, 0x1e

    .line 26
    div-int/lit16 v2, v2, 0xe1

    .line 27
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    int-to-float v2, v2

    const v3, 0x3f3504f3

    mul-float v4, v2, v3

    div-float v3, v2, v3

    .line 31
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    int-to-float v9, v0

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 32
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    div-float v10, v9, v7

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    sub-float v12, v10, v4

    invoke-virtual {v5, v4, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget-object v5, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    div-float/2addr v2, v7

    sub-float v7, v8, v2

    sub-float/2addr v9, v3

    sub-float/2addr v9, v2

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 35
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v7, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 36
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    add-float/2addr v8, v2

    invoke-virtual {v3, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 37
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    sub-float v3, v6, v4

    invoke-virtual {v2, v3, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 42
    iput v1, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mWidth:I

    .line 43
    iput v0, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mHeight:I

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/internal/ArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
